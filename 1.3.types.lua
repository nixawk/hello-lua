#!/usr/bin/env lua

-- Types and Values

print(type(nil))            -- nil
print(type(true))           -- boolean
print(type(10.4 * 3))       -- number
print(type("Hello world"))  -- string
print(type(io.stdin))       -- userdata
print(type(print))          -- function
print(type(type))           -- function
print(type({}))             -- table
print(type(type(X)))        -- string

print(type(type(nil)))      -- string
print(type(nil) == nil)


--[[The userdata type allows arbitrary C data to be stored in Lua variables.
It has no predefined operations in Lua, except assignment and equality test.
Userdata are used to represent new types created by an application program
or a library written in C.
]]

--[[Nil is a type with a single value, nil, whose main property is to be
different from any other value. Lua uses nil as a kind of non-value, to
represent the absence of a useful value. As we have seen, a global variable
has a nil value by default, before its first assignment, and we can assign
nil to a global variable to delete it.
]]