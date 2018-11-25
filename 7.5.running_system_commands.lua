#!/usr/bin/env lua

-- os.execute runs a system command; it is equivalent to the C function system.
-- It takes a string with the command and returns information regarding how the
-- command terminated.

    -- The first result is a Boolean: true means the program exited with no errors.
    -- The second result is a string: "exit" if the program terminated normally or "signal"
       -- if it was interrupted by a signal.
    -- A third result is the return status (if the program terminated normally)
       -- or the number of the signal that terminated the program.


print(select("1", os.execute("pwd")))  --> true    exit    0

-- Another quite useful function is io.popen. Like os.execute, it runs a system
-- command, but it also connects the command output (or input) to a new local
-- stream and returns that stream.
local f = io.popen("pwd")
for entry in f:lines() do
    print(entry)
end