#!/usr/bin/env lua

-- The first step of require is to check in the table package.loaded whether
-- the module is already loaded. If so, require returns its corresponding value.
-- Therefore, once a module is loaded, other calls requiring the same module
-- simply return the same value, without running any code again.

-- If the module is not loaded yet. require searches for a Lua file with the
-- module name. (This search is guided by the variable package.path, which 
-- we will discuss later.) If it finds such a file, it loads it with loadfile.
-- The result is a function that we call a loader.(The loader is a function that,
-- when called, loads the module.)

-- If require cannot find a Lua file with the module name, it searches for a C
-- library with that name.

print(package.loaded._G._VERSION)

function show_table(t)
    for k, v in pairs(t) do
        print(k, v)
    end
end

-- package
-- package.loaded
-- package.loaded._G
-- package.preload


print("\n[*] package")
show_table(package)

print("\n[*] package.loaded")
show_table(package.loaded)

print("\n[*] package.loaded._G")
show_table(package.loaded._G)

print("\n[*] package.loaded.debug")
show_table(package.loaded.debug)

print("\n[*] package.loaded.string")
show_table(package.loaded.string)

print("\n[*] package.loaded.io")
show_table(package.loaded.io)

print("\n[*] package.loaded.os")
show_table(package.loaded.os)

print("\n[*] package.loaded.coroutine")
show_table(package.loaded.coroutine)

print("\n[*] package.preload")
show_table(package.preload)


--[[

Lua 5.3

[*] package
preload table: 0x7f9d0f4040a0
cpath   /usr/local/lib/lua/5.3/?.so;/usr/local/lib/lua/5.3/loadall.so;./?.so
config  /
;
?
!
-

path            /usr/local/share/lua/5.3/?.lua;/usr/local/share/lua/5.3/?/init.lua;/usr/local/lib/lua/5.3/?.lua;/usr/local/lib/lua/5.3/?/init.lua;./?.lua;./?/init.lua
loaded          table: 0x7f9d0f403520
searchpath      function: 0x103aa5e50
searchers       table: 0x7f9d0f403cd0
loadlib         function: 0x103aa5db0

[*] package.loaded
string          table: 0x7f9d0f4053f0
table           table: 0x7f9d0f403ae0
_G              table: 0x7f9d0f402bb0
utf8            table: 0x7f9d0f405b80
package         table: 0x7f9d0f4036a0
io              table: 0x7f9d0f404690
bit32           table: 0x7f9d0f403f60
coroutine       table: 0x7f9d0f4041e0
os              table: 0x7f9d0f404100
debug           table: 0x7f9d0f404fb0
math            table: 0x7f9d0f4056a0

[*] package.loaded._G
type            function: 0x103a9ac40
ipairs          function: 0x103a9a260
package         table: 0x7f9d0f4036a0
pairs           function: 0x103a9a550
next            function: 0x103a9a4f0
select          function: 0x103a9a880
table           table: 0x7f9d0f403ae0
rawlen          function: 0x103a9a770
getmetatable    function: 0x103a9a210
rawget          function: 0x103a9a7d0
setmetatable    function: 0x103a9a920
os              table: 0x7f9d0f404100
load            function: 0x103a9a370
collectgarbage  function: 0x103a9a060
string          table: 0x7f9d0f4053f0
tostring        function: 0x103a9ac10
math            table: 0x7f9d0f4056a0
utf8            table: 0x7f9d0f405b80
io              table: 0x7f9d0f404690
rawset          function: 0x103a9a820
show_table      function: 0x7f9d0f406f10
arg             table: 0x7f9d0f406590
bit32           table: 0x7f9d0f403f60
print           function: 0x103a9a600
debug           table: 0x7f9d0f404fb0
rawequal        function: 0x103a9a720
tonumber        function: 0x103a9a9c0
pcall           function: 0x103a9a570
require         function: 0x7f9d0f404160
_VERSION        Lua 5.3
assert          function: 0x103a99fe0
error           function: 0x103a9a190
_G              table: 0x7f9d0f402bb0
coroutine       table: 0x7f9d0f4041e0
dofile          function: 0x103a9a120
loadfile        function: 0x103a9a290
xpcall          function: 0x103a9aca0

[*] package.loaded.debug
getmetatable    function: 0x10a9a73c0
debug           function: 0x10a9a6a90
getlocal        function: 0x10a9a7230
upvaluejoin     function: 0x10a9a7480
setmetatable    function: 0x10a9a79d0
traceback       function: 0x10a9a7ac0
gethook         function: 0x10a9a6c50
setupvalue      function: 0x10a9a7a30
getupvalue      function: 0x10a9a7400
sethook         function: 0x10a9a7660
getregistry     function: 0x10a9a73a0
setuservalue    function: 0x10a9a7610
upvalueid       function: 0x10a9a7590
getuservalue    function: 0x10a9a6c10
setlocal        function: 0x10a9a7870
getinfo         function: 0x10a9a6dc0

[*] package.loaded.string
unpack          function: 0x1021ac2a0
packsize        function: 0x1021ac1b0
byte            function: 0x1021a9ee0
match           function: 0x1021ab2e0
pack            function: 0x1021ab6d0
reverse         function: 0x1021ab490
len             function: 0x1021ab1f0
find            function: 0x1021aa1b0
gsub            function: 0x1021aabb0
lower           function: 0x1021ab220
gmatch          function: 0x1021aab00
char            function: 0x1021aa000
format          function: 0x1021aa1c0
sub             function: 0x1021ab540
dump            function: 0x1021aa0e0
rep             function: 0x1021ab2f0
upper           function: 0x1021ab610

[*] package.loaded.io
tmpfile         function: 0x10878c250
open            function: 0x10878bff0
flush           function: 0x10878be60
stderr          file (0x7fff95cf5240)
stdout          file (0x7fff95cf51a8)
output          function: 0x10878c120
read            function: 0x10878c1f0
input           function: 0x10878bed0
stdin           file (0x7fff95cf5110)
write           function: 0x10878c330
type            function: 0x10878c2c0
popen           function: 0x10878c140
lines           function: 0x10878bef0
close           function: 0x10878bdd0

[*] package.loaded.os
getenv          function: 0x109a9d790
difftime        function: 0x109a9d680
time            function: 0x109a9d8c0
tmpname         function: 0x109a9db80
remove          function: 0x109a9d7d0
execute         function: 0x109a9d6d0
setlocale       function: 0x109a9d860
exit            function: 0x109a9d720
date            function: 0x109a9d3a0
rename          function: 0x109a9d810
clock           function: 0x109a9d350

[*] package.loaded.coroutine
running         function: 0x10a928720
wrap            function: 0x10a928830
isyieldable     function: 0x10a9288c0
status          function: 0x10a928750
create          function: 0x10a928620
yield           function: 0x10a928890
resume          function: 0x10a928670

[*] package.preload

]]