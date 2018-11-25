#!/usr/bin/env lua

--[[Lua provides a small and conventional set of control structures, with if
for conditional execution and while, repeat, and for for iteration.
]]


function demo_if(n)
    assert(type(n) == "number")  --> n must be a number
    if n > 0 then
        print(n .. " > 0")
    elseif n < 0 then
        print(n .. " < 0")
    else
        print(n .. " = 0")
    end
end

demo_if(-3.0)
demo_if(0.0)
demo_if(3.0)
