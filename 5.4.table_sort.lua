#!/usr/bin/env lua

--[[
The table library provides the function table.sort, which receives a table and
sorts its elements. Such a function must allow unlimted variations in the sort
order: ascending or descending, numeric or alphabetical, table sorted by a key,
and so on. Instead of trying to provide all kinds of options, sort provides a
single optional parameter, which is the order function: a function that takes
two elements and returns whether the first must come before the second in the
sroted list.
]]

network = {
    {name = "grauna",  IP = "210.26.30.34"},
    {name = "arraial", IP = "210.26.30.23"},
    {name = "lua",     IP = "210.26.23.12"},
    {name = "derain",  IP = "210.26.23.20"},
}

table.sort(network, function(a, b) return (a.name > b.name) end)

for k, v in ipairs(network) do
    print(k, v["name"], v["IP"])
end
