#!/usr/bin/env lua

-- The function os.time, when called without arguments, returns the current date
-- and time, coded as a number.
print(os.time())      --> 1543110348

-- $ date -r 1543110348
-- Sun Nov 25 09:45:48 CST 2018

-- We can also call os.time with a date table, to convert the table
-- representation to a number.
date = {year = 2018, month = 11, day = 25, hour = 9, min = 45, sec = 48}
print(os.time(date))  --> 1543110348
