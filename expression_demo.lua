x = math.pi;

print(x)

print(x%1) --打印出小数位

print("limit demical 2 =", x-x%0.01) --限制保留两位小数点，输出3.14



local tolerance =10
function isturnback(angle)
  angle=angle%360
  return (math.abs(angle-180)<tolerance)
end
