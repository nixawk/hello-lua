#!/usr/bin/env lua

-- Despite its central role in the implementation of modules in Lua.
-- require is a regular function, with no special privileges.
-- To load a module, we simply call it with a single argument, the
-- module name. Remember that, when the single argument to a function
-- to a function is a literal string, the parentheses are optional,
-- and it is customary to omit them in regular uses of require.

function demo_require1()
    local m = require "os"
    m.execute("pwd")
end


function demo_require2()
    local f = require "os".execute
    f("pwd")
end


demo_require1()
demo_require2()

