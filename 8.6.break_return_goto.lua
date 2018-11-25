#!/usr/bin/env lua

--[[The break and return statements allow us to jump out of a block.
The goto statement allows us to jump to almost any point in a function.
]]

-- We use the break statement to finish a loop. This statement breaks the inner
-- loop (for, repeat, or while) that contains it; it cannot be used outside a
-- loop.

function demo_break()
    for i = 1, 10, 1 do
        if i == 3 then
            break
        end
        print("demo_break: " .. i)
    end
end

-- A return statement returns the results from a function or simply finishes
-- the function. There is an implicit return at the end of any function, so
-- we do not need to write one for functions that end naturally, without
-- returning any value.

function demo_return()
    for i = 1, 10, 1 do
        if i == 3 then
            return i
        end
        print("demo_return: " .. i)
    end
end

-- A goto statement jumps the execution of a program to a corresponding label.
-- The syntax for a label is a little more convoluted: it has two colons
-- followed by the label name followed by more colons, like in ::name::.

function demo_goto()
    local i

    for i = 1, 10, 1 do
        if i == 3 then
            goto over
        end
        print("demo_goto: " .. i)
    end

::over::
    print("demo_goto: game over")
end

demo_break()
demo_return()
demo_goto()
