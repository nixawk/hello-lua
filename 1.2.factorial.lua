#!/usr/bin/env lua

-- defines a factorial function
-- lua: 2.factorial.lua:9: stack overflow

function fact(n)
    if n <= 0 then
        return 1
    else
        return n * fact(n - 1)
    end
end


io.write("enter a number: ")    -- print (with newline)
a = io.read("*n")               -- reads a number
print(fact(a))
