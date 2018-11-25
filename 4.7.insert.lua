#!/usr/bin/env lua

-- Write a function to insert a string into a given position of another one:
function insert(s1, p, s2)
    -- [1 - p][p - l]

    L = s1:len()    --> number
    -- [-L, 0][1, L]

    if p < 0 then      -- [p, 0]
        if p < -L then -- [p, -L]
            return s2 .. s1
        else           -- [-L, p]
            return s1:sub(1, L + p) .. s2 .. s1:sub(L + p + 1, L)
        end
    elseif p == 0 then
        return s2 .. s1
    else               -- [0, p]
        if p > L then  -- [L, p]
            return s1 .. s2
        else           -- [p, L]
            return s1:sub(0, p - 1) .. s2 .. s1:sub(p, L)
        end
    end
end


s = "helloworld"
-- print(insert(s, -1, "-"))
-- print(insert(s, -2, "-"))
-- print(insert(s, -12, "-"))

print(insert(s, 0, "-"))
print(insert(s, 5, "-"))
print(insert(s, 12, "-"))
print(insert("hello world", 1, "start: "))
print(insert("hello world", 7, "small "))