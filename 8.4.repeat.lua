#!/usr/bin/env lua

--[[As the name impiles, a repeat-until statement repeats its body until its
condition is true.
]]


function demo_repeat()
    local i = 10
    repeat
        print(i)
        i = i - 1
    until i <= 0
end

demo_repeat()