#!/usr/bin/env lua

days = {
    "Sunday",     --> index: 1
    "Monday",     --> index: 2
    "Tuesday",    --> index: 3
    "Wednesday",  --> index: 4
    "Thursday",   --> index: 5
    "Friday",     --> index: 6
    "Saturday"    --> index: 7
}


print(days[1])  --> Sunday

-- Lua also offers a special syntax to initialize a record-like table,
a = {x = 10, y = 20}
print(a.x)
print(a["x"])
print(a.y)
print(a["y"])

-- This previous line is equivalent to these commands:
b = {}
b.x = 10
b.y = 20
print(b["x"])
print(b["y"])

-- Usually, when we manipulate a list we must know its length. It can be a
-- constant or it can be stored somewhere. Often we store the length of a list
-- in a non-numeric field of the table of the table; for historical reason,
-- several programs use the field "n" for this purpose.
