local ffi = require("ffi")
if nil == FFI_INCLUDED then
	FFI_INCLUDED = {}
end
if not FFI_INCLUDED["/usr/local/include/libopenmpt/libopenmpt_config.h"] then
ffi.cdef[[
__attribute__((deprecated)) static const int LIBOPENMPT_DEPRECATED_STRING_CONSTANT = 0;

]]
end
if not FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/11.0.0/include/stddef.h"] then
ffi.cdef[[
typedef long int ptrdiff_t;
typedef long unsigned int size_t;
typedef int wchar_t;

]]
end
if not FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/11.0.0/include/__stddef_max_align_t.h"] then
ffi.cdef[[
typedef long double max_align_t;

]]
end
if not FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int8_t.h"] then
ffi.cdef[[
typedef __signed char int8_t;

]]
end
if not FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int16_t.h"] then
ffi.cdef[[
typedef short int16_t;

]]
end
if not FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int32_t.h"] then
ffi.cdef[[
typedef int int32_t;

]]
end
if not FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int64_t.h"] then
ffi.cdef[[
typedef long long int64_t;

]]
end
if not FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint8_t.h"] then
ffi.cdef[[
typedef unsigned char uint8_t;

]]
end
if not FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint16_t.h"] then
ffi.cdef[[
typedef unsigned short uint16_t;

]]
end
if not FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint32_t.h"] then
ffi.cdef[[
typedef unsigned int uint32_t;

]]
end
if not FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint64_t.h"] then
ffi.cdef[[
typedef unsigned long long uint64_t;

]]
end
if not FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdint.h"] then
ffi.cdef[[
typedef int8_t int_least8_t;
typedef int16_t int_least16_t;
typedef int32_t int_least32_t;
typedef int64_t int_least64_t;
typedef uint8_t uint_least8_t;
typedef uint16_t uint_least16_t;
typedef uint32_t uint_least32_t;
typedef uint64_t uint_least64_t;
typedef int8_t int_fast8_t;
typedef int16_t int_fast16_t;
typedef int32_t int_fast32_t;
typedef int64_t int_fast64_t;
typedef uint8_t uint_fast8_t;
typedef uint16_t uint_fast16_t;
typedef uint32_t uint_fast32_t;
typedef uint64_t uint_fast64_t;

]]
end
if not FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_types.h"] then
ffi.cdef[[
typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef short __int16_t;
typedef unsigned short __uint16_t;
typedef int __int32_t;
typedef unsigned int __uint32_t;
typedef long long __int64_t;
typedef unsigned long long __uint64_t;
typedef long __darwin_intptr_t;
typedef unsigned int __darwin_natural_t;
typedef int __darwin_ct_rune_t;
typedef union {
 char __mbstate8[128];
 long long _mbstateL;
} __mbstate_t;
typedef __mbstate_t __darwin_mbstate_t;
typedef long int __darwin_ptrdiff_t;
typedef long unsigned int __darwin_size_t;
typedef __builtin_va_list __darwin_va_list;
typedef int __darwin_wchar_t;
typedef __darwin_wchar_t __darwin_rune_t;
typedef int __darwin_wint_t;
typedef unsigned long __darwin_clock_t;
typedef __uint32_t __darwin_socklen_t;
typedef long __darwin_ssize_t;
typedef long __darwin_time_t;

]]
end
if not FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h"] then
ffi.cdef[[
typedef __int64_t __darwin_blkcnt_t;
typedef __int32_t __darwin_blksize_t;
typedef __int32_t __darwin_dev_t;
typedef unsigned int __darwin_fsblkcnt_t;
typedef unsigned int __darwin_fsfilcnt_t;
typedef __uint32_t __darwin_gid_t;
typedef __uint32_t __darwin_id_t;
typedef __uint64_t __darwin_ino64_t;
typedef __darwin_ino64_t __darwin_ino_t;
typedef __darwin_natural_t __darwin_mach_port_name_t;
typedef __darwin_mach_port_name_t __darwin_mach_port_t;
typedef __uint16_t __darwin_mode_t;
typedef __int64_t __darwin_off_t;
typedef __int32_t __darwin_pid_t;
typedef __uint32_t __darwin_sigset_t;
typedef __int32_t __darwin_suseconds_t;
typedef __uint32_t __darwin_uid_t;
typedef __uint32_t __darwin_useconds_t;
typedef unsigned char __darwin_uuid_t[16];
typedef char __darwin_uuid_string_t[37];

]]
end
if not FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_types.h"] then
ffi.cdef[[
struct __darwin_pthread_handler_rec {
 void (*__routine)(void *);
 void *__arg;
 struct __darwin_pthread_handler_rec *__next;
};
struct _opaque_pthread_attr_t {
 long __sig;
 char __opaque[56];
};
struct _opaque_pthread_cond_t {
 long __sig;
 char __opaque[40];
};
struct _opaque_pthread_condattr_t {
 long __sig;
 char __opaque[8];
};
struct _opaque_pthread_mutex_t {
 long __sig;
 char __opaque[56];
};
struct _opaque_pthread_mutexattr_t {
 long __sig;
 char __opaque[8];
};
struct _opaque_pthread_once_t {
 long __sig;
 char __opaque[8];
};
struct _opaque_pthread_rwlock_t {
 long __sig;
 char __opaque[192];
};
struct _opaque_pthread_rwlockattr_t {
 long __sig;
 char __opaque[16];
};
struct _opaque_pthread_t {
 long __sig;
 struct __darwin_pthread_handler_rec *__cleanup_stack;
 char __opaque[8176];
};
typedef struct _opaque_pthread_attr_t __darwin_pthread_attr_t;
typedef struct _opaque_pthread_cond_t __darwin_pthread_cond_t;
typedef struct _opaque_pthread_condattr_t __darwin_pthread_condattr_t;
typedef unsigned long __darwin_pthread_key_t;
typedef struct _opaque_pthread_mutex_t __darwin_pthread_mutex_t;
typedef struct _opaque_pthread_mutexattr_t __darwin_pthread_mutexattr_t;
typedef struct _opaque_pthread_once_t __darwin_pthread_once_t;
typedef struct _opaque_pthread_rwlock_t __darwin_pthread_rwlock_t;
typedef struct _opaque_pthread_rwlockattr_t __darwin_pthread_rwlockattr_t;
typedef struct _opaque_pthread_t *__darwin_pthread_t;

]]
end
if not FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int8_t.h"] then
ffi.cdef[[
typedef unsigned char u_int8_t;

]]
end
if not FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int16_t.h"] then
ffi.cdef[[
typedef unsigned short u_int16_t;

]]
end
if not FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int32_t.h"] then
ffi.cdef[[
typedef unsigned int u_int32_t;

]]
end
if not FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int64_t.h"] then
ffi.cdef[[
typedef unsigned long long u_int64_t;

]]
end
if not FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/types.h"] then
ffi.cdef[[
typedef int64_t register_t;

]]
end
if not FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_uintptr_t.h"] then
ffi.cdef[[
typedef unsigned long uintptr_t;

]]
end
if not FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/types.h"] then
ffi.cdef[[
typedef u_int64_t user_addr_t;
typedef u_int64_t user_size_t;
typedef int64_t user_ssize_t;
typedef int64_t user_long_t;
typedef u_int64_t user_ulong_t;
typedef int64_t user_time_t;
typedef int64_t user_off_t;
typedef u_int64_t syscall_arg_t;

]]
end
if not FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_intptr_t.h"] then
ffi.cdef[[
typedef __darwin_intptr_t intptr_t;

]]
end
if not FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_intmax_t.h"] then
ffi.cdef[[
typedef long int intmax_t;

]]
end
if not FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uintmax_t.h"] then
ffi.cdef[[
typedef long unsigned int uintmax_t;

]]
end
if not FFI_INCLUDED["/usr/local/include/libopenmpt/libopenmpt.h"] then
ffi.cdef[[
__attribute__((visibility("default"))) uint32_t openmpt_get_library_version(void);
__attribute__((visibility("default"))) uint32_t openmpt_get_core_version(void);
__attribute__((visibility("default"))) void openmpt_free_string( const char * str );
__attribute__((visibility("default"))) const char * openmpt_get_string( const char * key );
__attribute__((visibility("default"))) const char * openmpt_get_supported_extensions(void);
__attribute__((visibility("default"))) int openmpt_is_extension_supported( const char * extension );
typedef size_t (*openmpt_stream_read_func)( void * stream, void * dst, size_t bytes );
typedef int (*openmpt_stream_seek_func)( void * stream, int64_t offset, int whence );
typedef int64_t (*openmpt_stream_tell_func)( void * stream );
typedef struct openmpt_stream_callbacks {
 openmpt_stream_read_func read;
 openmpt_stream_seek_func seek;
 openmpt_stream_tell_func tell;
} openmpt_stream_callbacks;
typedef void (*openmpt_log_func)( const char * message, void * user );
__attribute__((visibility("default"))) void openmpt_log_func_default( const char * message, void * user );
__attribute__((visibility("default"))) void openmpt_log_func_silent( const char * message, void * user );
__attribute__((visibility("default"))) int openmpt_error_is_transient( int error );
__attribute__((visibility("default"))) const char * openmpt_error_string( int error );
typedef int (*openmpt_error_func)( int error, void * user );
__attribute__((visibility("default"))) int openmpt_error_func_default( int error, void * user );
__attribute__((visibility("default"))) int openmpt_error_func_log( int error, void * user );
__attribute__((visibility("default"))) int openmpt_error_func_store( int error, void * user );
__attribute__((visibility("default"))) int openmpt_error_func_ignore( int error, void * user );
__attribute__((visibility("default"))) int openmpt_error_func_errno( int error, void * user );
__attribute__((visibility("default"))) void * openmpt_error_func_errno_userdata( int * error );
__attribute__((visibility("default"))) __attribute__((deprecated)) double openmpt_could_open_probability( openmpt_stream_callbacks stream_callbacks, void * stream, double effort, openmpt_log_func logfunc, void * user );
__attribute__((visibility("default"))) __attribute__((deprecated)) double openmpt_could_open_propability( openmpt_stream_callbacks stream_callbacks, void * stream, double effort, openmpt_log_func logfunc, void * user );
__attribute__((visibility("default"))) double openmpt_could_open_probability2( openmpt_stream_callbacks stream_callbacks, void * stream, double effort, openmpt_log_func logfunc, void * loguser, openmpt_error_func errfunc, void * erruser, int * error, const char * * error_message );
__attribute__((visibility("default"))) size_t openmpt_probe_file_header_get_recommended_size(void);
__attribute__((visibility("default"))) int openmpt_probe_file_header( uint64_t flags, const void * data, size_t size, uint64_t filesize, openmpt_log_func logfunc, void * loguser, openmpt_error_func errfunc, void * erruser, int * error, const char * * error_message );
__attribute__((visibility("default"))) int openmpt_probe_file_header_without_filesize( uint64_t flags, const void * data, size_t size, openmpt_log_func logfunc, void * loguser, openmpt_error_func errfunc, void * erruser, int * error, const char * * error_message );
__attribute__((visibility("default"))) int openmpt_probe_file_header_from_stream( uint64_t flags, openmpt_stream_callbacks stream_callbacks, void * stream, openmpt_log_func logfunc, void * loguser, openmpt_error_func errfunc, void * erruser, int * error, const char * * error_message );
typedef struct openmpt_module openmpt_module;
typedef struct openmpt_module_initial_ctl {
 const char * ctl;
 const char * value;
} openmpt_module_initial_ctl;
__attribute__((visibility("default"))) __attribute__((deprecated)) openmpt_module * openmpt_module_create( openmpt_stream_callbacks stream_callbacks, void * stream, openmpt_log_func logfunc, void * loguser, const openmpt_module_initial_ctl * ctls );
__attribute__((visibility("default"))) openmpt_module * openmpt_module_create2( openmpt_stream_callbacks stream_callbacks, void * stream, openmpt_log_func logfunc, void * loguser, openmpt_error_func errfunc, void * erruser, int * error, const char * * error_message, const openmpt_module_initial_ctl * ctls );
__attribute__((visibility("default"))) __attribute__((deprecated)) openmpt_module * openmpt_module_create_from_memory( const void * filedata, size_t filesize, openmpt_log_func logfunc, void * loguser, const openmpt_module_initial_ctl * ctls );
__attribute__((visibility("default"))) openmpt_module * openmpt_module_create_from_memory2( const void * filedata, size_t filesize, openmpt_log_func logfunc, void * loguser, openmpt_error_func errfunc, void * erruser, int * error, const char * * error_message, const openmpt_module_initial_ctl * ctls );
__attribute__((visibility("default"))) void openmpt_module_destroy( openmpt_module * mod );
__attribute__((visibility("default"))) void openmpt_module_set_log_func( openmpt_module * mod, openmpt_log_func logfunc, void * loguser );
__attribute__((visibility("default"))) void openmpt_module_set_error_func( openmpt_module * mod, openmpt_error_func errfunc, void * erruser );
__attribute__((visibility("default"))) int openmpt_module_error_get_last( openmpt_module * mod );
__attribute__((visibility("default"))) const char * openmpt_module_error_get_last_message( openmpt_module * mod );
__attribute__((visibility("default"))) void openmpt_module_error_set_last( openmpt_module * mod, int error );
__attribute__((visibility("default"))) void openmpt_module_error_clear( openmpt_module * mod );
__attribute__((visibility("default"))) int openmpt_module_select_subsong( openmpt_module * mod, int32_t subsong );
__attribute__((visibility("default"))) int32_t openmpt_module_get_selected_subsong( openmpt_module * mod );
__attribute__((visibility("default"))) int openmpt_module_set_repeat_count( openmpt_module * mod, int32_t repeat_count );
__attribute__((visibility("default"))) int32_t openmpt_module_get_repeat_count( openmpt_module * mod );
__attribute__((visibility("default"))) double openmpt_module_get_duration_seconds( openmpt_module * mod );
__attribute__((visibility("default"))) double openmpt_module_set_position_seconds( openmpt_module * mod, double seconds );
__attribute__((visibility("default"))) double openmpt_module_get_position_seconds( openmpt_module * mod );
__attribute__((visibility("default"))) double openmpt_module_set_position_order_row( openmpt_module * mod, int32_t order, int32_t row );
__attribute__((visibility("default"))) int openmpt_module_get_render_param( openmpt_module * mod, int param, int32_t * value );
__attribute__((visibility("default"))) int openmpt_module_set_render_param( openmpt_module * mod, int param, int32_t value );
__attribute__((visibility("default"))) size_t openmpt_module_read_mono( openmpt_module * mod, int32_t samplerate, size_t count, int16_t * mono );
__attribute__((visibility("default"))) size_t openmpt_module_read_stereo( openmpt_module * mod, int32_t samplerate, size_t count, int16_t * left, int16_t * right );
__attribute__((visibility("default"))) size_t openmpt_module_read_quad( openmpt_module * mod, int32_t samplerate, size_t count, int16_t * left, int16_t * right, int16_t * rear_left, int16_t * rear_right );
__attribute__((visibility("default"))) size_t openmpt_module_read_float_mono( openmpt_module * mod, int32_t samplerate, size_t count, float * mono );
__attribute__((visibility("default"))) size_t openmpt_module_read_float_stereo( openmpt_module * mod, int32_t samplerate, size_t count, float * left, float * right );
__attribute__((visibility("default"))) size_t openmpt_module_read_float_quad( openmpt_module * mod, int32_t samplerate, size_t count, float * left, float * right, float * rear_left, float * rear_right );
__attribute__((visibility("default"))) size_t openmpt_module_read_interleaved_stereo( openmpt_module * mod, int32_t samplerate, size_t count, int16_t * interleaved_stereo );
__attribute__((visibility("default"))) size_t openmpt_module_read_interleaved_quad( openmpt_module * mod, int32_t samplerate, size_t count, int16_t * interleaved_quad );
__attribute__((visibility("default"))) size_t openmpt_module_read_interleaved_float_stereo( openmpt_module * mod, int32_t samplerate, size_t count, float * interleaved_stereo );
__attribute__((visibility("default"))) size_t openmpt_module_read_interleaved_float_quad( openmpt_module * mod, int32_t samplerate, size_t count, float * interleaved_quad );
__attribute__((visibility("default"))) const char * openmpt_module_get_metadata_keys( openmpt_module * mod );
__attribute__((visibility("default"))) const char * openmpt_module_get_metadata( openmpt_module * mod, const char * key );
__attribute__((visibility("default"))) double openmpt_module_get_current_estimated_bpm( openmpt_module * mod );
__attribute__((visibility("default"))) int32_t openmpt_module_get_current_speed( openmpt_module * mod );
__attribute__((visibility("default"))) int32_t openmpt_module_get_current_tempo( openmpt_module * mod );
__attribute__((visibility("default"))) int32_t openmpt_module_get_current_order( openmpt_module * mod );
__attribute__((visibility("default"))) int32_t openmpt_module_get_current_pattern( openmpt_module * mod );
__attribute__((visibility("default"))) int32_t openmpt_module_get_current_row( openmpt_module * mod );
__attribute__((visibility("default"))) int32_t openmpt_module_get_current_playing_channels( openmpt_module * mod );
__attribute__((visibility("default"))) float openmpt_module_get_current_channel_vu_mono( openmpt_module * mod, int32_t channel );
__attribute__((visibility("default"))) float openmpt_module_get_current_channel_vu_left( openmpt_module * mod, int32_t channel );
__attribute__((visibility("default"))) float openmpt_module_get_current_channel_vu_right( openmpt_module * mod, int32_t channel );
__attribute__((visibility("default"))) float openmpt_module_get_current_channel_vu_rear_left( openmpt_module * mod, int32_t channel );
__attribute__((visibility("default"))) float openmpt_module_get_current_channel_vu_rear_right( openmpt_module * mod, int32_t channel );
__attribute__((visibility("default"))) int32_t openmpt_module_get_num_subsongs( openmpt_module * mod );
__attribute__((visibility("default"))) int32_t openmpt_module_get_num_channels( openmpt_module * mod );
__attribute__((visibility("default"))) int32_t openmpt_module_get_num_orders( openmpt_module * mod );
__attribute__((visibility("default"))) int32_t openmpt_module_get_num_patterns( openmpt_module * mod );
__attribute__((visibility("default"))) int32_t openmpt_module_get_num_instruments( openmpt_module * mod );
__attribute__((visibility("default"))) int32_t openmpt_module_get_num_samples( openmpt_module * mod );
__attribute__((visibility("default"))) const char * openmpt_module_get_subsong_name( openmpt_module * mod, int32_t index );
__attribute__((visibility("default"))) const char * openmpt_module_get_channel_name( openmpt_module * mod, int32_t index );
__attribute__((visibility("default"))) const char * openmpt_module_get_order_name( openmpt_module * mod, int32_t index );
__attribute__((visibility("default"))) const char * openmpt_module_get_pattern_name( openmpt_module * mod, int32_t index );
__attribute__((visibility("default"))) const char * openmpt_module_get_instrument_name( openmpt_module * mod, int32_t index );
__attribute__((visibility("default"))) const char * openmpt_module_get_sample_name( openmpt_module * mod, int32_t index );
__attribute__((visibility("default"))) int32_t openmpt_module_get_order_pattern( openmpt_module * mod, int32_t order );
__attribute__((visibility("default"))) int32_t openmpt_module_get_pattern_num_rows( openmpt_module * mod, int32_t pattern );
__attribute__((visibility("default"))) uint8_t openmpt_module_get_pattern_row_channel_command( openmpt_module * mod, int32_t pattern, int32_t row, int32_t channel, int command );
__attribute__((visibility("default"))) const char * openmpt_module_format_pattern_row_channel_command( openmpt_module * mod, int32_t pattern, int32_t row, int32_t channel, int command );
__attribute__((visibility("default"))) const char * openmpt_module_highlight_pattern_row_channel_command( openmpt_module * mod, int32_t pattern, int32_t row, int32_t channel, int command );
__attribute__((visibility("default"))) const char * openmpt_module_format_pattern_row_channel( openmpt_module * mod, int32_t pattern, int32_t row, int32_t channel, size_t width, int pad );
__attribute__((visibility("default"))) const char * openmpt_module_highlight_pattern_row_channel( openmpt_module * mod, int32_t pattern, int32_t row, int32_t channel, size_t width, int pad );
__attribute__((visibility("default"))) const char * openmpt_module_get_ctls( openmpt_module * mod );
__attribute__((visibility("default"))) __attribute__((deprecated)) const char * openmpt_module_ctl_get( openmpt_module * mod, const char * ctl );
__attribute__((visibility("default"))) int openmpt_module_ctl_get_boolean( openmpt_module * mod, const char * ctl );
__attribute__((visibility("default"))) int64_t openmpt_module_ctl_get_integer( openmpt_module * mod, const char * ctl );
__attribute__((visibility("default"))) double openmpt_module_ctl_get_floatingpoint( openmpt_module * mod, const char * ctl );
__attribute__((visibility("default"))) const char * openmpt_module_ctl_get_text( openmpt_module * mod, const char * ctl );
__attribute__((visibility("default"))) __attribute__((deprecated)) int openmpt_module_ctl_set( openmpt_module * mod, const char * ctl, const char * value );
__attribute__((visibility("default"))) int openmpt_module_ctl_set_boolean( openmpt_module * mod, const char * ctl, int value );
__attribute__((visibility("default"))) int openmpt_module_ctl_set_integer( openmpt_module * mod, const char * ctl, int64_t value );
__attribute__((visibility("default"))) int openmpt_module_ctl_set_floatingpoint( openmpt_module * mod, const char * ctl, double value );
__attribute__((visibility("default"))) int openmpt_module_ctl_set_text( openmpt_module * mod, const char * ctl, const char * value );

]]
end
FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_types.h"] = true
FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint16_t.h"] = true
FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_types.h"] = true
FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int8_t.h"] = true
FFI_INCLUDED["<command line>"] = true
FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint64_t.h"] = true
FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/11.0.0/include/stdint.h"] = true
FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int8_t.h"] = true
FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_intmax_t.h"] = true
FFI_INCLUDED["/usr/local/include/libopenmpt/libopenmpt.h"] = true
FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/types.h"] = true
FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h"] = true
FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h"] = true
FFI_INCLUDED["<built-in>"] = true
FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_uintptr_t.h"] = true
FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_intptr_t.h"] = true
FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int32_t.h"] = true
FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uintmax_t.h"] = true
FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint32_t.h"] = true
FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int64_t.h"] = true
FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int32_t.h"] = true
FFI_INCLUDED["/usr/local/include/libopenmpt/libopenmpt_config.h"] = true
FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h"] = true
FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h"] = true
FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int64_t.h"] = true
FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int16_t.h"] = true
FFI_INCLUDED["/usr/local/include/libopenmpt/libopenmpt_version.h"] = true
FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdint.h"] = true
FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint8_t.h"] = true
FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/11.0.0/include/stddef.h"] = true
FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int16_t.h"] = true
FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_types.h"] = true
FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/11.0.0/include/__stddef_max_align_t.h"] = true
FFI_INCLUDED["/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/types.h"] = true



openmpt = ffi.load("openmpt")
