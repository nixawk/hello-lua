#!/usr/bin/env lua

--[[Lua provides automatic conversions between numbers and strings at run time.
Any numeric operation applied to a string tries to convert the string to a
number. Lua applies such coercions not only in arithmetic operations, but also
in other places that expect a number, such as the argument to math.sin.
]]

print(type(10 .. 20))  --> string
print(type("10" + 1))  --> number

-- To convert a string to a number explicitly, we can use the function tonumber
print(tonumber(" -3 "))    --> -3
print(tonumber(" 10e4 "))  --> 100000.0
print(tonumber("10e"))     --> nil

-- To convert a number to a string, we can call the function tostring:
print(tostring(10))        --> 10   (string)
print(tostring(10.0))      --> 10.0 (string)
