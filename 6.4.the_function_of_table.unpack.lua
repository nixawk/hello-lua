#!/usr/bin/env lua

-- As the name implies, table.unpack is the reverse of table.pack.
-- While table.pack transforms a parameter list into a real Lua list(a table),
-- table.unpack transforms a real Lua list(a table) into a return list.

a = table.pack(10, 20, 30)
b = table.unpack(a)

print(type(a))         --> table
print(type(b))         --> number: 10 (b = 10)

-- table.unpack uses the length operator to know how many elements to return,
-- so it works only on proper sequences.

days = {'Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'}
print(table.unpack(days, 1, 2))  --> Sun Mon
print(table.unpack(days, 1, 3))  --> Sun Mon Tue
