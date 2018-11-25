#!/usr/bin/env lua

-- We can delimit literal strings by single or double matching quotes:

a = "a line"
b = 'a line'

print(a == b)    --> true

-- The only difference is that inside each kind of quote we can use the other
-- quote without escapes.

print('aaa\a' == "aaa\a")    --> true

--[[
\a    - bell
\b    - back space
\f    - form feed
\n    - newline
\r    - carriage return
\t    - horizontal tab
\v    - vertical tab
\\    - backslash
\"    - double quote
\'    - single quote
]]

--[[
We can specify a character in a literal string also by its numeric value through
the escape sequences [\ddd] and \xhh, where ddd is a sequence of up to three
decimal digits and hh is a sequence of exactly two hexadecimal digits.

Since Lua 5.3, we can also specify UTF-8 characters with the escape sequence
\u{h... h}
]]

print("\u{41}")    --> A
print("\u{42}")    --> B
print("\u{4141}")  --> 䅁
print("\u{4242}")  --> 䉂
