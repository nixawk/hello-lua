#!/usr/bin/env lua

-- The function io.tmpfile returns a stream over a temporary file, open in read
-- write mode. This file is automatically removed(deleted) when the program ends.

-- io.tmpfile()
-- io.flush()
-- io.setvbuf()
    -- no, means no buffering
    -- full, means that the stream data is only written out when the buffer is
       -- full or when we explicitly flush the file
    -- line, means that the output is buffered until a newline is output or
       -- there is any input from some special files (such as a terminal device)

-- io.seek()


function fsize(filename)
    local file = assert(io.open(filename, "r"))
    local current = file:seek()    -- save current position
    local size = file:seek("end")  -- get file size
    file:seek("set", current)
    return size
end

filename = "/etc/passwd"
print(filename .. " : " .. fsize(filename) .. " bytes")

