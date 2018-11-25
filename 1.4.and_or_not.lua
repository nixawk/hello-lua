#!/usr/bin/env lua

--[[Lua supports a conventional set of logical operators: and, or, not.
Like control structures, all logical operators consider both the Boolean
false and nil as false, and anything else as true. The result of the [and]
operator is its first operand if that operand is false; otherwise, the
result is its operand. The result of the [or] operator is its first operand
if it is not false; otherwise, the result is its second operand.
]]

print(4 and 5)       -- output: 5
print(4 or 5)        -- output: 4
print(nil and 13)    -- output: nil
print(nil or 13)     -- output: 13
print(false and 13)  -- output: false
print(false or 13)   -- output: 13
print(not nil)       -- true
print(not false)     -- true
print(not 0)         -- false
print(not not 1)     -- true
print(not not nil)   -- false
