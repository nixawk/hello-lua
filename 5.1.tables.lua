#!/usr/bin/env lua

--[[Tables are the main data structuring mechanism in Lua, and a powerful one.
We use tables to represent arrays, sets, records, and many other data structures
in a simple, uniform, and effieicent way. Lua uses tables to represent packages
and objects as well.
]]

a = {}  -- create a table and assign its reference

for i = 1, 5 do
    a["k" .. i] = i ^ 2
end

-- print(a[k2]) --> error
print(a["k2"])  --> 4.0
print(a.k2)     --> 4.0
print(a["k5"])  --> 25.0
print(a.k5)     --> 25.0
