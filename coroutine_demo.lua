--coroutine study

--create coroutine
co = coroutine.create(function() print ("hi") end)


print (co) -- print coroutine function name

print("co state=",coroutine.status(co)) --output 'suspended'

--run coroutine
coroutine.resume(co)  --output 'hi'

print("co cur state=",coroutine.status(co)) --output 'dead'


co1 = coroutine.create(
function()
   for i=1,10 do
   print("co1 ",i)
   coroutine.yield()
   end
end
)


coroutine.resume(co1)
coroutine.resume(co1)  --call 11 times

print(coroutine.resume(co1))


-- another demo
co2 = coroutine.create(
function()
 print ("co2 ",coroutine.yield())
end
)

print("co2 state=",coroutine.status(co2))

--coroutine.resume(co2)
coroutine.resume(co2)

print("co2 state=",coroutine.status(co2)) --output 'suspended'
coroutine.resume(co2)--,10010,10011)  --output 'co2 ' 10010  10011
print("co2 state=",coroutine.status(co2))  --output 'co2 state=' 'dead'
