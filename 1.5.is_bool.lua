#!/usr/bin/env lua

--[[How can you check whether a value is a Boolean without using
the function type.
]]

function is_bool(value)
    if (value == false) or (value == true) then
        return true
    else
        return false
    end
end


print(is_bool(nil))    -- false
print(is_bool(true))   -- true
print(is_bool(false))  -- true
print(is_bool(""))     -- false
print(is_bool("lua"))  -- false
