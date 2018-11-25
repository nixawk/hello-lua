#!/usr/bin/env lua

-- The capture mechanism allows a pattern to yank parts of the subject string
-- string that match parts of the pattern for further use.
-- When a pattern has captures, the function string.match returns each captured
-- value as a separate result; in other words, it breaks a string into its
-- captured parts.

s = "name = lua"
key, value = string.match(s, "(%a+)%s*=%s*(%a+)")
print(key, value)

-- %a+ specifies a non-empty sequence of letters;
-- %s* specifies a possibly empty sequence of spaces.
