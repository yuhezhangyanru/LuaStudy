x = math.pi;

print(x)

print(x%1) --��ӡ��С��λ

print("limit demical 2 =", x-x%0.01) --���Ʊ�����λС���㣬���3.14



local tolerance =10
function isturnback(angle)
  angle=angle%360
  return (math.abs(angle-180)<tolerance)
end
