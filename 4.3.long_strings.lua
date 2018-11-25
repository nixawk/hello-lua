#!/usr/bin/env lua

--[[We can delimit literal strings also by matching double square brackets, as
we do with long comments. Literals in this bracketed form can run for several
lines and do not interpret escape sequences.
]]

lstr = [[
this is a long string.\n\n
]]

page = [[
<html>
    <head>
        <title>An HTML Page</title>
    </head>
    <body>
        <a href="http://www.lua.org">Lua</a>
    </body>
</html>
]]

-- Sometimes, we may need to enclose a piece of code containing something like
-- a = b[c[i]] (note the ]] in this code), or we may need to enclose some code
-- that already has some code commented out. To handle such cases, we can add
-- any number of equals signs between the two opening brackets, as in [===[

xml = [===[
<![CDATA[
    Hello world
]]>
]===]


io.write(lstr)    --> this is a long string.\n\n
io.write(page)
io.write(xml)