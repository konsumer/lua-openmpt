local openmpt = ffi.load("openmpt")

function Openmpt (filename)
  local f = io.open (filename, 'r')
  contents = f:read()
  f:close()

  o = {
    filename = filename,
    module = openmpt.openmpt_module_create_from_memory2(contents, #contents, nil, nil, nil)
  }
  setmetatable(o, self)
  self.__index = self
  return o
end

return Openmpt