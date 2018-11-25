#!/usr/bin/env lua

s = "Hello world"

-- string.len(s) returns the length of a string s;
print(string.len(s))  --> 11
print(s:len())        --> 11
print(#s)             --> 11

-- string.rep(s, n) returns the string s repeated n times;
print(string.rep(s, 2))    --> hello worldhello world
print(s:rep(2))            --> hello worldhello world

-- string.reverse(s) reverses a string.
print(string.reverse(s))   --> dlrow olleh
print(s:reverse())         --> dlrow olleh

-- string.lower(s) returns a copy of s with the upper-case letters
-- converted tp lower case;
print(string.lower(s))       --> hello world
print(s:lower())             --> hello world

print(string.upper(s))       --> HELLO WORLD
print(s:upper())             --> HELLO WORLD

-- string.sub(s, i, j) extracts a piece of the string s, from i-th to j-th
-- character inclusive. (The first character of a string has index 1.)
-- We can also use negative indices, which count from the end of the string:
-- index-1 refers to the last character, -2 to the previous one, and so on.

print(string.sub(s, 1, 5))   --> Hello
print(s:sub(1, 5))           --> Hello
print(s:sub(-11, -6))        --> Hello

-- string.char and string.byte convert between characters and their internal
-- numeric representations.
print(string.char(97))       --> a

-- string.byte(s, i, j) returns multiple values with the numeric reoresentation
-- of all characters between indices i and j (inclusive).
print(string.byte(s, 1))     --> 72
print(string.byte(s, 2))     --> 101
print(string.byte(s, 1, 2))  --> 72 101

-- string.format is a powerful tool for formatting strings and coverting
-- numbers to strings. It returns a copy of its first argument, the so-called
-- format string, with each directive in that string replaced by a formatted
-- version of its correspondent argument. The directives in the format string
-- have rules similar to those of the C function printf.
print(string.format("x = %d, y = 0x%d", 10, 10))

-- We can call all functions from the string library as methods on strings,
-- using the colon operator.
    -- string.upper(s)
    -- s:upper()
-- Object-Oriented Programming
