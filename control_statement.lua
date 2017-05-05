--ifÓï¾ä

print("\n\n ifÓï¾ä²âÊÔ: input a please:")

str=io.read()
a=tonumber(str)

if( a == nil) then
   print(str.." is not number")
elseif(a<0) then
   print("input less than 0")
elseif (a==0) then
   print("input is 0")
else
   print("input more than 0")
end
