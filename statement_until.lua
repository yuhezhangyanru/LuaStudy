--但打印输入的第一行不为空的内容

print("输入字符串并换行，#为终止")
repeat
    line = io.read()
until line == "#"

print(line)
