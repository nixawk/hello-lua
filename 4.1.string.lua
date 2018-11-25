#!/usr/bin/env lua

--[[Strings represent text. A string in Lua can contain a single letter or an
entire book. Programs that mainipulate strings with 100K or 1M characters are
not unusual in Lua.

Strings in Lua are sequences of bytes.
Strings in Lua are subject to automatic memory management, like all other Lua
objects (tables, functions, etc.). This means that we do not have to worry
about allocation and deallocation of strings; Lua handles it for us.
]]

a = "one string"
b = string.gsub(a, "one", "another")
c = a:gsub("one", "another")

print(a)    --> one string
print(b)    --> another string
print(c)    --> another string

-- We can get the length of a string using the length operator (denoted by #)

print(#a)        --> 10
print(#b)        --> 14
print(#c)        --> 14
print(#"Hello")  --> 5

--[[We can concatenate two strings with the concatenation operator .. (two dots).
If you operand is a number, Lua converts this number to a string:
]]

print("Hello " .. "World")
print("result is " .. 3)
