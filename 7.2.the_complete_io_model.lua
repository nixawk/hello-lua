#!/usr/bin/env lua

--The simple I/O model is convenient for simple things, but it is not enough for
-- more advanced file manipulation, such as reading from or writing to several
-- files simultaneously.


-- io.open
-- r for reading
-- w for writing
-- a for appending
-- b to open binary files


-- local f = assert(io.open(filename, mode))

function readfile_line(filename)
    local f = assert(io.open(filename, "r"))
    for line in f:lines() do
        print(line)
    end
    f:close()
end


readfile_line("/etc/passwd")

--[[references

1. https://github.com/lua/lua/blob/master/liolib.c
]]