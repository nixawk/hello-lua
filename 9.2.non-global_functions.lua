#!/usr/bin/env lua

--[[An obvious consequence of first-class functions is that we can store
functions not only in global variables, but also in table fields and in local
variables.]]

Lib = {}
Lib.foo = function (x, y) return x + y end
Lib.goo = function (x, y) return x - y end

--[[


Lib = {
    foo = function (x,y) return x + y end,
    goo = function (x,y) return x - y end
}

Lib = {}
function Lib.foo (x,y) return x + y end
function Lib.goo (x,y) return x - y end

]]

print(Lib.foo(1, 2))    --> 3
print(Lib.goo(1, 2))    --> -1
