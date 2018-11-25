#!/usr/bin/env lua

function f(a, b)
    print(a, b)
end


f()          --> nil nil
f(3)         --> 3   nil
f(3, 4)      --> 3   4
f(3, 4, 5)   --> 3   4
