function Openmpt (filename)
  o = {}
  setmetatable(o, self)
  self.__index = self
  self.filename = filename
  local f = io.open (filename, 'r')
  self.module = ffi.C.printf(f:read())
  f:close()
  return o
end

return Openmpt