--get 10 lines input to create a linklist,
list=nil
for i=1,10 do
 line = io.read()
 list={next=list,value=line;}
end

--print linklist
local l =list
while l do
   print(l.value)
   l= l.next;
end

