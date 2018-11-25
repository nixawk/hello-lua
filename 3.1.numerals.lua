#!/usr/bin/env lua


--[[Until version 5.2, Lua represented all numbers using double-precision
floating-point format.

Starting with version 5.3, Lua uses two alternative representations for numbers:
    64-bit integer number, called simply integers,
    double-precision floating-point numbers
]]

print(type(4))          -- number
print(type(0.4))        -- number
print(type(4.57e-3))    -- number
print(type(0.3e12))     -- number
print(type(5E+20))      -- number

print(1 == 1.0)         -- true
print(-3 == -0.03e2)    -- true