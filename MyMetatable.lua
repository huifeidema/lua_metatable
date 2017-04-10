local M = {}
function M.print(str)
	print("Hello MyMetatable")
end


local proxy = {}
local mt = {
	__index = M
	__newindex = function(t, k, v)
		print("test metatable")
	end
}

local modename = "MyProxy"
setmetatable(proxy, mt)
_G[modename] = proxy
package.loaded[modename] = proxy
