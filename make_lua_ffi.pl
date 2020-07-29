#!/usr/bin/perl

use strict;
use warnings;
use Getopt::Long;
use File::Temp qw(tempfile);
use File::Basename;
use Data::Dumper;

my $cc = "gcc";
my $cflags = "";
my $out_dir = ".";
my $no_filter = 0;
my $path_substs = "";

my $result = GetOptions(
	"cc=s"       => \$cc,
	"cflags=s"   => \$cflags,
	"out_dir=s"  => \$out_dir,
	"no_filter"  => \$no_filter,
	"path_substs=s"  => \$path_substs,
);

$path_substs = [map {[split(/=/,$_)]} split(/,/, $path_substs)];

if (!$result) {
	die "Failed to parse command line\n";
}

my @keywords = qw(
	type
	elseif
	end
	function
	in
	local
	nil
	not
	repeat
	then
	until
);

my @ignores = qw(
	__typeof__
	__BEGIN_DECLS
	__END_DECLS
);

sub replace_keywords {
	my ($output, $line) = @_;
	foreach my $ignore (@ignores) {
		if ($line =~ /\b$ignore\b/) {
			$$output .= "/* Ignoring line with $ignore */\n";
			return "/* $line */";
		}
	}
	if ($line =~ /^\s*static .*?;\s*$/) {
		$$output .= "/* Ignoring static declaration */\n";
		chomp($line);
		return "/* $line */\n";
	}
	foreach my $keyword (@keywords) {
		if ($line =~ /\b$keyword\b/) {
			$$output .= "/* Replacing $keyword with ${keyword}_ */\n";
			$line =~ s/\b$keyword\b/${keyword}_/g;
		}
	}
	return $line;
}

sub preprocess {
	my ($what) = @_;
	my (undef, $filename) = tempfile("/tmp/ffi.h.XXXXXX", OPEN => 0);
	#print("\n\n$cc $cflags -E $what -o $filename\n");
	system("$cc $cflags -E $what -o $filename");
	if ($? == -1) {
		die "failed to execute: $!\n";
	} elsif ($? & 127) {
		die sprintf("child died with signal %d, %s coredump\n",
			($? & 127),  ($? & 128) ? 'with' : 'without');
	} else {
		my $value = $? >> 8;
		if (0 != $value) {
			die sprintf("child exited with value %d\n", $? >> 8);
		}
	}
	return $filename;
}

sub apply_path_substs {
	my ($file) = @_;
	foreach my $subst (@$path_substs) {
		my ($s, $r) = @$subst;
		$file =~ s/^$s/$r/e;
	}
	return $file;
}

sub wrap_declarations {
	my ($file, $decls) = @_;
	$file = apply_path_substs($file);
	my $output = "if not FFI_INCLUDED[\"$file\"] then\nffi.cdef[[\n";
	$output .= $decls;
	$output .= "\n]]\nend\n";
	return $output;
}

sub process_file {
	my ($file) = (@_);
	my $output = "";
	my $header = "";
	my $footer = "";

	my $pp_file = preprocess($file);
	$header .= "local ffi = require(\"ffi\")\n";
	$header .= "if nil == FFI_INCLUDED then\n";
	$header .= "\tFFI_INCLUDED = {}\n";
	$header .= "end\n";

	my $src_basename = basename($file, '.h');
	my $dest_filename = "$out_dir/$src_basename\_h.lua";
	open(OUT_FILE, ">", $dest_filename) or
		die "Failed to open $dest_filename\n";
	open(SRC_FILE, "<", $pp_file) or die "Failed to open $pp_file\n";
	my %visited;
	my $current;
	my $top;
	my $current_decls = "";
	while (my $line = <SRC_FILE>) {
		next if $line =~ /^\s*$/;
		if ($line =~ /^# \d+ "([^"]+)"/) {
			my $file = $1;
			if (!defined($current)) {
				$current = $file;
				$visited{$file} = 1;
				$top = $file;
			} else {
				next if $file eq $current;
				$visited{$file} = 1;
				if ($current_decls) {
					$output .= wrap_declarations($current,
						$current_decls);
					$current_decls = "";
				}
				$current = $file;
			}
		} else {
			$line = replace_keywords(\$current_decls, $line);
			$current_decls .= $line;
		}
	}
	if ($current_decls) {
		$output .= wrap_declarations($current, $current_decls);
		$current_decls = "";
	}
	close SRC_FILE;
	unlink($pp_file);

	foreach my $file (keys %visited) {
		$output .= "FFI_INCLUDED[\"" . apply_path_substs($file)
				. "\"] = true\n";
	}
	$footer .= "";

	print OUT_FILE $header;
	print OUT_FILE $output;
	print OUT_FILE $footer;
	close(OUT_FILE);
}


foreach my $arg (@ARGV) {
	process_file($arg);
}
