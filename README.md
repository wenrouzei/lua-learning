# lua-learning
lua learning

## 交互式编程
通过命令 lua -i 或 lua 来启用：
```
G:\lua\github\lua-learning>lua -i
Lua 5.3.4  Copyright (C) 1994-2017 Lua.org, PUC-Rio
> print('Hello World!')
Hello World!
>
```
## 脚本式编程
将 Lua 程序代码保持到一个以 lua 结尾的文件，并执行，该模式称为脚本式编程

## 注释
### 单行注释
两个减号是单行注释:
>--

### 多行注释
```
--[[
 多行注释
 多行注释
--]]
```

## 标示符
Lua 标示符用于定义一个变量，函数获取其他用户定义的项。标示符以一个字母 A 到 Z 或 a 到 z 或下划线 _ 开头后加上0个或多个字母，下划线，数字（0到9）。

最好不要使用下划线加大写字母的标示符，因为Lua的保留字也是这样的。

Lua 不允许使用特殊字符如 @, $, 和 % 来定义标示符。 Lua 是一个区分大小写的编程语言。因此在 Lua 中 Hello 与 hello 是两个不同的标示符。以下列出了一些正确的标示符：

```
mohd         zara      abc     move_name    a_123
myname50     _temp     j       a23b9        retVal
```

## keyword
保留关键字不能作为常量或变量或其他用户自定义标示符：
* and
* break
* do
* else
* elseif
* end
* false
* for
* function
* if
* in
* local
* nil
* not
* or
* repeat
* return
* then
* true
* until
* while

## 全局变量
在默认情况下，变量总是认为是全局的。

全局变量不需要声明，给一个变量赋值后即创建了这个全局变量，访问一个没有初始化的全局变量也不会出错，只不过得到的结果是：nil。

如果你想删除一个全局变量，只需要将变量赋值为nil。
```
> print(i)
nil
> I=23423
> print(i)
nil
> print(I)
23423
> I=nil
> print(I)
nil
>
```