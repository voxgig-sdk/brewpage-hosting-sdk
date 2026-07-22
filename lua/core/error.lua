-- BrewpageHosting SDK error

local BrewpageHostingError = {}
BrewpageHostingError.__index = BrewpageHostingError


function BrewpageHostingError.new(code, msg, ctx)
  local self = setmetatable({}, BrewpageHostingError)
  self.is_sdk_error = true
  self.sdk = "BrewpageHosting"
  self.code = code or ""
  self.msg = msg or ""
  self.ctx = ctx
  self.result = nil
  self.spec = nil
  return self
end


function BrewpageHostingError:error()
  return self.msg
end


function BrewpageHostingError:__tostring()
  return self.msg
end


return BrewpageHostingError
