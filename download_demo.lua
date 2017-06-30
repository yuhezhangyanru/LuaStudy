--function : download file then print file size with http get
--注意：下载方式通过协程进行，我尝试过本书的同步直接下载，程序崩溃了用不了，现在的OK
require "socket"  -- load library

-- open TCP connection
c = assert(socket.connect(host,80))

function download(host,file)
   local c = assert(socket.connect(host,80))
   local count =0 -- record got byte count

   c:send("GET "..file.." HTTP/1.0\r\n\r\n")
   while true do
       local s,status ,patial = receive(c)
	   count = count + #(s or patial)
	   if status =="closed" then break end
   end
   c:close()
   print(file,count)
end

function receive(connection)
    connection:settimeout(0) --使receive调用不会阻塞
    local s,status,partial = connection:receive(2^10)
    if status == "timeout" then
      coroutine.yield(connection)
	end
	return s or partial,status
end

--record my thread
threads={}

function get(host,file)
   --create coroutine
   local co = coroutine.create(function()
	   download(host,file)
   end)

   --insert into table
   table.insert(threads,co)
end


function dispatch()
    local i =1
	while true do
	    if threads[i] ==nil then
		   if threads[1] == nil then break end
		   i=1
		end

		local status,res =coroutine.resume(threads[i])
		if not res then --线程是否完成了任务?
		    table.remove(threads,i)
		else
		    i=i+1
		end
	end
end


--main program

host = "www.w3.org"

get(host,"/TR/html401/html40.txt")
get(host,"/TR/2002/REC-xhtml1-20020801/xhtml1.pdf")
get(host,"/TR/REC-xhtml32.html")
get(host,"/TR/2000/REC-DOM-Level-2-Core-20001113/DOM2-Core.txt")

dispatch()

