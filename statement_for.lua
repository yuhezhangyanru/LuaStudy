--[[forѭ����䣬
�����͵Ľṹ

for var exp1,exp2,exp3 do
   <ִ����>
end

����exp1Ϊ��㣬exp2Ϊ�仯�յ㣬exp3Ϊ����

--��Ҫע�⣺
1.��exp123���ڿ�ʼǰһ������ֵ�ġ�
2.var �޶�����Ч����ֻ��if����ڣ�
������end֮������var��ֵ��ֻ����ѭ���а�var�浽��ı�����ȥ��
--]]

for i = 1, 100, 6 do
   print(i)
end



--[[
���͵�for(generic for)��ͨ������������������ֵ��

Lua��׼���ṩ�ĵ�������
1.�����ļ���ÿ�е�io.lines
2.����tableԪ�ص�pairs
3.��������Ԫ�ص�ipairs
4.�����ַ����е��ʵ� string.getmatch

--]]

print("\n\n\n���͵�for���ԣ�")

a={"fdfsd","dsd",1232,true}
for i,v in ipairs(a) do
   print(v)
end



--[[
for ����һ���÷�������table.

--]]
days={"Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"}
revdays={}
for k,v in pairs(days) do
   revdays[v]=k
end
print("revdays=")
print(revdays)

print("days['Sunday']=",days["Sunday"])
print("revdays['Sunday']=",revdays["Sunday"])
