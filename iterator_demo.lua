
--创建一个迭代器
function values(t)
  local i = 0
  return function() i=i+1; return t[i] end
end

t= {10,20,30}
iter= values(t)--创建迭代器
while true do
local element = iter() --调用迭代器

if element ==nil then
   break
end

print("while element=",element)
end


--泛型for使用迭代器
for element in values(t) do
   print("for read=",element)
end
