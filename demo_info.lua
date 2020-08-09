-- this will get info about a modfile
-- run with lujit ./demo_info.lu

local OpenMpt = require "openmpt"

local mod = OpenMpt:new()

-- get info about engine without loading a mod
print("Engine Info:")
for k,v in pairs(mod:engine_info()) do
  print("  " .. k .. ": " .. v)
end

print("Supported Extensions:")
for k,v in pairs(mod:supported_extensions()) do
  print("  " .. v)
end

-- load a mod to get info about it
mod:loadFullPath("./demo_love/strobe_-_android_assembled.xm")
local channelCount = mod:get_num_channels()
local instCount = mod:get_num_instruments()

print("\nInfo:")
print("  channels: " .. channelCount)
print("  instruments: "..instCount)
print("  speed", mod:get_current_speed())
print("  tempo", mod:get_current_tempo())
print("  length (seconds):" .. mod:get_duration_seconds())
for i,v in pairs(mod:get_metadata_keys()) do
  print("  " .. v .. ": " .. mod:get_metadata(v))
end

print("\nInstruments:")
for v=0,instCount do
  print("  " .. v .. ": " .. mod:get_instrument_name(v))
end

print("\nControls:")
for k,v in pairs(mod:get_ctls()) do
  print("  " .. v .. ": " .. mod:ctl_get(v))
end