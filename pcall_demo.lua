--use pcall() to deal error test

function foo()
a= 12

if a< 0 then error ("a is passive number") end
 --if excute in this situation, pcall(foo) return false and this error message

 print("a is "..a)
end



if pcall(foo) then
 print("excute ok")
 else
 print ("excute error")
end

print("test print traceback")
print(debug.traceback())
