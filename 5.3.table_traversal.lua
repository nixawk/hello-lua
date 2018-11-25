#!/usr/bin/env lua

-- We can traverse all key-value pairs in a table with the pairs iterator.

t = {10, print, x = 12, k = "hi"}
for k, v in pairs(t) do
    print(k, v)
end

-- Due to the way that Lua implements tables, the order tha elements appear
-- in a travesal is undefined. The same program can produce different orders
-- each time it runs.

t = {10, print, 12, "hi"}
for k, v in ipairs(t) do
    print(k, v)
end

-- another way to traverse a sequence is with a numerical for:
for k = 1, #t do
    print(k, t[k])
end