--�ȶ�ȡһ�� line = io.read()

--[[
n = tonumber(line) --convert to number
if n == nil then
   error ("input is not a valid number")
else
   print("n is="+n)
end

--]]


-- print() fucntion

a=123
print(a) -- normal print

print "ffdfdfd" -- when print string or table with one pram

print [[fasdfasffdf
fdghfdgf
ghfhghg]]       --when print multiline string



-- about function parameters

function testFun( a, b) return  a or b end


print( testFun(12,32))
print( testFun(12,"lisi",3232))
print( testFun( ))
print( testFun( "sdf"))


--function multiple results

s,e = string.find("hello lua user", "us")

print("find res=",s,e)


-- () special use
function getname(a) return a,"a girl" end

function getname_2(a)
   return getname(a)  --return a all results
end

function getname_3(a)
   return (getname(a))  --return a first results
end


--ϵͳ���� unpack,ʵ�ֶ�̬�Ĵ��ݲ���,ʵ�����⺯���ĵ���
--like f(unpack(a))

f= string.find
a={"hello world","worl"}


--����һ���߳��ĺ����
function add(...)
    local s=0;
    for i, v in ipairs{...}do
        s = s + v
    end
	return s
end

function printall(...)
     print ("call printall:", ...)
end

--��ʽ���ı� string.format������ı� io.write����
function fwrite(fmt,...)
     return io.write(string.format(fmt,...))
end


function rename(arg)
   return os.rename(arg.old,arg.new)
end


--ʵ��ϵͳ���� math.sin()���ض��壬�Ժ����math.sin()���൱�ڵ�����������ˡ�
do
     local oldSin = math.sin;
	 local k = math.pi/180

	 math.sin=function(x)
	    return oldSin(x*k)
	end
end

