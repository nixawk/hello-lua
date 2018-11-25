#!/usr/bin/env lua

--[[Lua can write numbers in this format using string.format with the %a option
]]

print(string.format("%a", 419))    --> x1.a3p+8
print(string.format("%a", 0.1))    --> 0x1.999999999999ap-4
