# lua-openmpt

This is a lua wrapper for [libopenmpt](https://lib.openmpt.org/libopenmpt/). It will allow you to parse and play various mod files in luajit or love2d.

## usage

On Ubuntu 20.04, I ran `apt install luajit libopenmpt-dev`.

Run `luajit demo_info.lua` to test it out.

Copy [openmpt.lua](openmpt.lua) into your project, and have a look at `demo_*` files for an idea of how to use it. `demo_love` is a player exmaple.