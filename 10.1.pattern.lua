#!/usr/bin/env lua

--[[Unlike several other scripting languages, Lua uses neither POSIX regex nor
Perl expressions for pattern matching. The main reason for this decision is
size: a typical implementation of POSIX regular expressions takes more than
4000 lines of code, which is more than half the size of all Lua standard
libraries together. In comparison, the implementation of pattern matching in
Lua has less than 600 lines. Of course, pattern matching in Lua cannot do all
that a full POSIX implementation does. Nevertheless, pattern matching in Lua
is a powerful tool, and includes some features that are difficult to match with
standard POSIX implementation.

The string library offers four functions based on patterns. We have already had
a glimpse at find and gsub; the other two are match and gmatch(Global Match).
]]

