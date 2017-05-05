a=1-- 语句结束可输入";"也可不输;
b=a*2

a=2;b=3;

a=3 b=4 --注:一行连写了两句话虽然丑陋，但这么写却是OK的
print("a="..a,"b="..b)


--function study
function norm(x,y)
    return (x^2+y^2)^0.5
end

function twice(x)
    return 2*x
end
