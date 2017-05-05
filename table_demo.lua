i=10;
j="10";
k="+10";
a={}
a[i]= "first string";
a[j] = "second string"
a[k] = "third string"

a[#a+1]= "aaa" -- insert item at last
a[#a] = nil    -- delete last item
print("table a content=",a)

print("table a maxn="..table.maxn(a)) --print max index of a
print("table a getn="..table.getn(a)) --print length of a

print("i value ="..a[i])
print("j value ="..a[j])
print("k value ="..a[k])

--use type number index
print("j as number,value ="..a[tonumber(j)])
print(tonumber(k))
print("k as number,value ="..a[tonumber(k)])




--构造table一些方法
a1={}
a2={"Sunday","Monday","Tuesday"}
a3={x=1,y=20}


print("\n\n a1=",a1)
print("a2=",a2)
print("a3=",a3)  --输出{y=20,x=1}
print(",a3[x]=")
print(a3['x'])   --输出1
