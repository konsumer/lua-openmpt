# lua-openmpt

This is a lua wrapper for [libopenmpt](https://lib.openmpt.org/libopenmpt/). It will allow you to parse and play various mod files in luajit or love2d.

## usage

Copy [openmpt.lua](openmpt.lua) into your project.

Examples:

* [main.lua](main.lua) is a love2d player example. You can test with `love .`
* [info.lua](info.lua) shows how to use it in luajit, with a real filepath. Run `luajit info.lua` to try it out.

### linux

On Ubuntu 20.04, I ran `sudo apt install luajit libopenmpt-dev`.

### mac

I ran `brew install luajit libopenmpt` and for love-demos, needed to unsign the love-runtime:

```
codesign --remove-signature /Applications/love.app/Contents/MacOS/love
```
