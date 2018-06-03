--
-- Created by IntelliJ IDEA.
-- User: wenrouzei
-- Date: 2018/6/3
-- Time: 15:21
-- To change this template use File | Settings | File Templates.
--Lua 数据类型
--Lua是动态类型语言，变量不要类型定义,只需要为变量赋值。 值可以存储在变量中，作为参数传递或结果返回。
--
--Lua中有8个基本类型分别为：nil、boolean、number、string、userdata、function、thread和table。

print(type("Hello world"))      --> string
print(type(10.4*3))             --> number
print(type(print))              --> function
print(type(type))               --> function
print(type(true))               --> boolean
print(type(nil))                --> nil
print(type(type(X)))            --> string

print('---------------------nil-------------------')
print(type(X))
print(type(X)==nil)
--nil 作比较时应该加上双引号 "：
print(type(X)=="nil")


print('---------------------boolean-------------------')
print(type(true))
print(type(false))
print(type(nil))

if false or nil then
    print("至少有一个是 true")
else
    print("false 和 nil 都为 false!")
end
print('---------------------number-------------------')
print(type(2))
print(type(2.2))
print(type(0.2))
print(type(2e+1))
print(type(0.2e-1))
print(type(7.8263692594256e-06))

print('---------------------string-------------------')
--字符串由一对双引号或单引号来表示。
string1 = "this is string1"
string2 = 'this is string2'
print(string1,string2)
--也可以用 2 个方括号 "[[]]" 来表示"一块"字符串。
html = [[
<html>
<head></head>
<body>
    <a href="http://www.runoob.com/">菜鸟教程</a>
</body>
</html>
]]
print(html)

--字符串连接使用的是 ..
print("a" .. 'b')
--使用 # 来计算字符串的长度，放在字符串前面
print(#'fsadfsadfsadfsad')

print('---------------------table-------------------')
-- 创建一个空的 table
local tbl1 = {}

-- 直接初始表
local tbl2 = {"apple", "pear", "orange", "grape"}

print(tbl1,tbl2)

--不同于其他语言的数组把 0 作为数组的初始索引，在 Lua 里表的默认初始索引一般以 1 开始。

local tbl = {"apple", "pear", "orange", "grape"}
for key, val in pairs(tbl) do
    print("Key", key)
end

print('---------------------function-------------------')

function factorial1(n)
    if n == 0 then
        return 1
    else
        return n * factorial1(n - 1)
    end
end
print(factorial1(5))
factorial2 = factorial1
print(factorial2(5))

--function 可以以匿名函数（anonymous function）的方式通过参数传递:
function testFun(tab,fun)
    for k ,v in pairs(tab) do
        print(fun(k,v));
    end
end


tab={key1="val1",key2="val2"};
testFun(tab,
    function(key,val)--匿名函数
        return key.."="..val;
    end
);

print('---------------------thread-------------------')
--在 Lua 里，最主要的线程是协同程序（coroutine）。它跟线程（thread）差不多，拥有自己独立的栈、局部变量和指令指针，可以跟其他协同程序共享全局变量和其他大部分东西。

--线程跟协程的区别：线程可以同时多个运行，而协程任意时刻只能运行一个，并且处于运行状态的协程只有被挂起（suspend）时才会暂停。
print('---------------------userdata-------------------')
--userdata 是一种用户自定义数据，用于表示一种由应用程序或 C/C++ 语言库所创建的类型，可以将任意 C/C++ 的任意数据类型的数据（通常是 struct 和 指针）存储到 Lua 变量中调用。