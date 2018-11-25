#!/usr/bin/env lua

--[[Since version 5.3, Lua includes a small library to support operations on
Unicode strings encoded in UTF-8.

The function reverse, upper, lower, byte, and char do not work for UTF-8 strings,
string.format and string.rep work without problems with UTF-8 strings except
for the format option '%c', which assumes that one character is one byte.
string.len and string.sub work correctly with UTF-8 strings,
]]

print(utf8.len("résumé"))  --> 8
print(utf8.len("ação"))    --> 6
print(utf8.char(114, 233, 115, 117, 109, 233))  --> résumé

for i, c in utf8.codes("résumé") do
    print(i, c)
end

-- 1   114
-- 2   101
-- 3   769
-- 5   115
-- 6   117
-- 7   109
-- 8   101
-- 9   769
