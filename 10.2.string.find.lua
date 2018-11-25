#!/usr/bin/env lua

-- When string.find finds its pattern, it returns two values: the index where
-- the match begins and the index where the match ends.

s = "hello, world"
i, j = string.find(s, "hello")

print(i)  --> the index where the match begins
print(j)  --> the index where the match ends


-- The function string.find has two optional parameters.
-- The third parameter is an index that tells where in the subject string to
-- start the search.
-- The fourth parameter, a Boolean, indices a plain search

print(string.find("a [word]", "[", 1, true))
print(string.find("a [word]", "%s%p+", 1, false))

-- http://lua-users.org/wiki/PatternsTutorial