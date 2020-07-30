local OpenMpt = require "openmpt"

local mod = OpenMpt:new("./plainsong.xm")

print("speed", mod:get_current_speed())
print("tempo", mod:get_current_tempo() .. "\n")

for k,v in pairs(mod:engine_info()) do
  print(k .. ":" .. v)
end

print("Supported Extensions:")
for k,v in pairs(mod:supported_extensions()) do
  print("  " .. v)
end