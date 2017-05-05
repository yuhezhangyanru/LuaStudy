--先读取一行 line = io.read()

n = tonumber(line) --convert to number
if n == nil then
   error ("input is not a valid number")
else
   print("n is="+n)
end
