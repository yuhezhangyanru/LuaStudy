
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


--�ļ������ݽṹ������xml��json�ģ�
--Entry��Ӧ��test_data.lua�е�Entry{}�ؼ��֣����Ķ�������ΪEntry�Ŀպ����൱��ͳ��test_data��Entry��ĸ���
--TODO pairs()������ʲô��˼

local count=0
local content={} -- ����һ���ռ�����������������ļ�����
function Entry(b)
    count=count+1
	--content[b.name]=true ԭʼ��Ҫ��ÿһ��Entry������name��ֵ
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
