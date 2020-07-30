local OpenMpt = require "openmpt"

local module = OpenMpt:new("./plainsong.xm")

print("speed", module:speed())
print("tempo", module:tempo())