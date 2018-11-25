#!/usr/bin/env lua

-- The I/O library offers two different for file manipulation. The sample model
-- assumes a current input stream and a current output stream, and its I/O
-- operations operate on these streams.

-- The library initializes the current input stream to the process's standard
-- input (stdin) and current stream to the process's standard output (stdout).

-- io.read()
-- io.write()
-- io.input()
-- io.output()

--[[The function io.read reads strings from the current input stream.
Its arguments control what to read:

a    - reads the whole file
l    - reads the next line (dropping the newline)
L    - reads the next line (keeping the newline)
n    - reads a number
num  - reads num character as a string
]]

function readfile_whole(filename)
    io.input(filename)
    return io.read("a")
end

--[[The call io.read("l") returns the next line from the current input stream,
without the newline character; the call io.read("L") is similar, but it keeps
the newline (if present in the file). When we reach the end of file, the call
returns nil, as there is no next line to return.
]]
function readfile_line1(filename)
    io.input(filename)
    for count = 1, math.huge do
        local line = io.read("L")
        if line == nil then
            break
        end
        print(count, line)  --> line has newline status.
    end
end

-- However, to iterate on a whole file line by line, the io.lines iterator
-- allows a simpler code:

function readfile_line2(filename)
    local count = 0

    io.input(filename)
    for line in io.lines() do
        count = count + 1
        print(count, line)  --> line has no newline.
    end
end

print(readfile_whole("/etc/passwd"))
print(readfile_line1("/etc/passwd"))
print(readfile_line2("/etc/passwd"))
