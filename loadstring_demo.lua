--loadstring() function test



function foo()
a=-3
if a< 0 then error ("a is passive number") end
print("a is "..a)
end


if pcall(foo) then
 print("excute ok")
 else
 print ("excute error")
 end
