#!/usr/bin/env lua

-- An unconventional but quite convenient feature of Lua is that functions can
-- return multiple results.

function nearby(n)
    return n + 1, n - 1
end


print(nearby(0))