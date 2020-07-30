require "openmpt"

local f = io.open ("./plainsong.xm", 'r')
contents = f:read("*all")
f:close()
local module = openmpt.openmpt_module_create_from_memory2(contents, #contents, nil, nil, nil, nil, nil, nil, nil)

print("speed", openmpt.openmpt_module_get_current_speed(module))
print("tempo", openmpt.openmpt_module_get_current_tempo(module))