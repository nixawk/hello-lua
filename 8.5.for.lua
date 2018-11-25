#!/usr/bin/env lua

--[[The for statement has two variants: the numerical for and the generic for.

    for var = exp1, exp2, exp3 do
        something
    end

This loop will execute something for each value of var from exp1 to exp2,
using exp3 as the step to increment var.
]]


function test_for1()
    for i = 1, 10, 2 do
        print(i)
    end
end


function test_for2(filename)
    local f = assert(io.open(filename, "r"))
    for line in f:lines() do
        print(line)
    end
    f:close()
end


test_for1()
test_for2("/etc/passwd")

