#!/usr/bin/env lua

-- A function in Lua can be variadic, that is, it can take a variable number of
-- arguments.

-- The three dots (...) in the parameter list indicate that the function is
-- variadic.
function add(...)
    local s = 0

    -- the expression {...} results in a list with all collected arguments.
    for _, v in ipairs({...}) do
        s = s + v
    end
    return s
end

-- Lua offers the function table.pack.
-- This function receives any number of arguments and returns a new table with
-- all its arguments (just like {...}), but this table has also an extra field
-- "n", with the total number of arguments.
function nonils(...)
    local arg = table.pack(...)
    for i = 1, arg.n do
        if arg[i] == nil then
            return false
        end
    end
    return true
end

-- Another option to traverse the variable arguments of a function is the select
-- function. A call select has always one fixed argument, the selector, plus a
-- variable number of extra arguments.

-- If the selector is a number n, select returns all arguments after the n-th
-- argument, the selector should be the string "#", so that select returns the
-- total number of extra arguments.
function selector(n, ...)
    return select(n, ...)
end

-- For few arguments, this second version of add is faster, because it avoids
-- the creation of a new table at each call.
function add_new(...)
    local s = 0
    for i = 1, selector("#", ...) do
        s = s + select(i, ...)
    end
    return s
end


print(add(1, 2, 3))           --> 6
print(add(1, 2, 3, 4, 5, 6))  --> 21

print(nonils(2, 3, nil))      --> false
print(nonils(2, 3))           --> true
print(nonils())               --> true

print(selector(2, 1, 2, 3, 4))    --> 2 3 4
print(selector(3, 1, 2, 3, 4))    --> 3 4
print(selector("#", 1, 2, 3, 4))  --> 4

print(add_new(1, 2, 3))
print(add_new(1, 2, 3, 4, 5, 6))
