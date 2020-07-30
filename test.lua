local OpenMpt = require "openmpt"

local mod = OpenMpt:new("./plainsong.xm")

print("Engine Info:")
for k,v in pairs(mod:engine_info()) do
  print("  " .. k .. ": " .. v)
end

print("Supported Extensions:")
for k,v in pairs(mod:supported_extensions()) do
  print("  " .. v)
end

print("\nInfo:")

print("  speed", mod:get_current_speed())
print("  tempo", mod:get_current_tempo() .. "\n")

print("Controls:")
for k,v in pairs(mod:get_ctls()) do
  print("  " .. v .. ": " .. mod:ctl_get(v))
end