
--lua data struct demo



--matrix

mt={} --create matrix N*M
N=10
M=20
for i=1,N do
	mt[i] = {} --create a new line
	for j=1,M do
	    mt[i][j]= 0
	end
end

--another way to create a matrix
mt ={}
for i=1,N do
	for j=1,M do
	    mt[(i-1)*M+j] = 0
	end
end


--文夹型数据结构，类似xml或json的，
--Entry对应了test_data.lua中的Entry{}关键字，本文定义了名为Entry的空函数相当于统计test_data中Entry组的个数
--TODO pairs()函数是什么意思

local count=0
local content={} -- 定义一个空集合用来处理读到的文件内容
function Entry(b)
    count=count+1
	--content[b.name]=true 原始，要求每一个Entry都包含name的值
	if b.name then
	    content[b.name]=true
	end
end

dofile "e:/project/mystudy/luastudynew/test_data.lua"
print("number of enter :"..count)

for name in pairs(content) do
	print("read name="..name)
end



function serialize(o)
    if type(o) == "number" then
	    io.write(o)
	elseif type(o)=="string" then
		io.write(string.format("%q",o))
	else

	end
end
