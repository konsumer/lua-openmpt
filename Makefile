.PHONY: help all clean

help: ## show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

clean: ## delete any built files
	rm -f openmpt.lua

all: example_basic openmpt.lua ## build all demos

test: openmpt.lua ## test the lua wrapper
	luajit test.lua

openmpt.lua: /usr/local/include/libopenmpt/libopenmpt.h openmpt-interface.lua ## lua bindings for native library
	perl ./make_lua_ffi.pl $< && mv libopenmpt_h.lua $@ && echo "\n\n" >> $@ && cat openmpt-interface.lua >> $@

