#!/usr/bin/env lua

-- The function string.match is similar to find, in the sense that it also
-- searches for a pattern in a string. However, instead of returning the
-- positions where it found the pattern, it returns the part of the subject
-- string that matched the pattern.

date = "Today is 11/23/2018"
d = string.match(date, "%d+/%d+/%d+")
print(d)
