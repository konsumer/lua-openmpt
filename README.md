# lua-openmpt

This is a lua wrapper for [libopenmpt](https://lib.openmpt.org/libopenmpt/). It will allow you to parse and play various mod files in luajit or love2d.

## usage

Run `luajit info.lua` to test it out.

Copy [openmpt.lua](openmpt.lua) into your project.

Examples:

* [main.lua](main.lua) is a love2d player example
* [info.lua](info.lua) shows how to use it in luajit, with a real filepath

### linux

On Ubuntu 20.04, I ran `apt install luajit libopenmpt-dev`.

### mac

I ran `brew install luajit libopenmpt` and for love-demos, needed to unsign the love-runtime:

```
codesign --remove-signature /Applications/love.app/Contents/MacOS/love
```
