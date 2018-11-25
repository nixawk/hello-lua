#!/usr/bin/env lua

-- The function string.gmatch returns a function that iterates over all
-- occurrences of a pattern in a string.

s = "some string is good"
words = {}

for w in string.gmatch(s, "%a+", #s) do
    words[#words + 1] = w
end

for i =1, #words do
    print(words[i])
end