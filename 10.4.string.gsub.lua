#!/usr/bin/env lua

-- The function string.gsub has three mandatory parameters: a subject string,
-- a pattern, and a replacement string. Its basic use is to substitute the
-- replacement string for all occurrences of the pattern inside the subject
-- string.

s = string.gsub("Lua is cute", "cute", "great")
print(s)

-- An optional fourth parameter limits the number of substitutions to be made:
print(string.gsub("aaaa", "a", "i", 1))  --> iaaa
print(string.gsub("aaaa", "a", "i", 2))  --> iiaa
print(string.gsub("aaaa", "a", "i", 3))  --> iiia