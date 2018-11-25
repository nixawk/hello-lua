#!/usr/bin/env lua

--[[What does it mean for functions to be "first-class values" ? It means that,
in Lua, a function is a value with the same rights as more conventional values
like numbers and strings. A program can store functions in variables (both
global and local) and in tables, pass functions as arguments to other functions,
and return functions as results.
]]

a = {p = print}

a.p("Hello World")
