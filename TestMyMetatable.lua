require "MyMetatable"

MyProxy.print("test MyMetatable")
print(getmetatable("10"))

mt = {}
function mt.__lt(t1, t2)
	return #t1 < #t2
end

tA, tB = {1,2}, {2,3}
setmetatable(tA, mt)
setmetatable(tB, mt)

print(tA < tB)
