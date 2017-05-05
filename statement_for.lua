--[[for循环语句，
数字型的结构

for var exp1,exp2,exp3 do
   <执行体>
end

其中exp1为起点，exp2为变化终点，exp3为步长

--需要注意：
1.是exp123是在开始前一次性求值的。
2.var 限定了有效周期只在if语句内，
因此如果end之后还想拿var的值，只能在循环中把var存到别的变量中去！
--]]

for i = 1, 100, 6 do
   print(i)
end



--[[
泛型的for(generic for)，通过迭代器来遍历所有值，

Lua标准库提供的迭代器：
1.迭代文件中每行的io.lines
2.迭代table元素的pairs
3.迭代数组元素的ipairs
4.迭代字符串中单词的 string.getmatch

--]]

print("\n\n\n泛型的for测试：")

a={"fdfsd","dsd",1232,true}
for i,v in ipairs(a) do
   print(v)
end



--[[
for 语句的一个用法，逆向table.

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
