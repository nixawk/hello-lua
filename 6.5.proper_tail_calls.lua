#!/usr/bin/env lua

-- Another interesting feature of functions in Lua is that Lua does tail-call
-- elimination.
-- A tail call is a goto dressed as a call. A tail call happens when a function
-- calls another as its last action, so it has nothing else to do.

function f(x)
    x = x + 1
    return g(x)
end
