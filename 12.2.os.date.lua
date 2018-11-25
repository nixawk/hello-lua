#!/usr/bin/env lua

-- The function os.date, despite its name, is a kind of reverse of os.time:
-- it converts a number representing the date and time to some higher-level
-- representation, either a date table or a string.

-- Its first parameter is a format string, describing the representation we
-- want. The second parameter is the numeric datetime; it defaults to the
-- current date and time if not provided.
t = os.date("*t", 1543110348)

for k, v in pairs(t) do
    print(k, v)
    -- wday    1
    -- hour    9
    -- sec     48
    -- isdst   false
    -- day     25
    -- yday    329
    -- month   11
    -- year    2018
    -- min     45
end

print(os.date("%Y-%m-%d", 1543110348))    --> 2018-11-25
