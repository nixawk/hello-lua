#!/usr/bin/env lua

--[[
.    -- all characters
%a   -- letters
%c   -- control characters
%d   -- digits
%g   -- printable characters except spaces
%l   -- lower-case letters
%p   -- punctuation characters
%s   -- space characters
%u   -- upper-case letters
%w   -- alphanumeric characters
%x   -- hexadecimal digits 
]]

-- %A represents all non-letter characters.
print(string.gsub("hello, up-down!", "%A", "."))

-- Some characters, called magic characters, have special meanings when used in
-- a pattern. Pattens in Lua use the following magic characters:

-- ( ).%+-*?[]^$
