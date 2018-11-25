#!/usr/bin/env lua

--[[As the name implies, a while loop repeats its body while a condition is true.
As usual, Lua first tests the while condition; if the condition is false, then
the loop ends; otherwise, Lua executes the body of the loop and repeats the process.
]]


function demo_while()
    local i = 10
    while (i > 0) do
        print(i)
        i = i - 1
    end
end

demo_while()