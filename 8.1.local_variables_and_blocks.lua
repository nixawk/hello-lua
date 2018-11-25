#!/usr/bin/env lua

-- By default, variables in Lua are global.
-- Unlike global variables, a local variable has its scope limited to the block
-- where it is declared.

function demo_local_var()
    local i = 10
    return i * 2
end

print(demo_local_var())  --> 20
print(i)                 --> nil
