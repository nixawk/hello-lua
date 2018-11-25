#!/usr/bin/env lua

-- Our next example will use URL encoding, which is the encoding used by HTTP
-- to send parameters embedded in a URL. This encoding represents specimal
-- characters (such as =, &, and +) as "%xx", where xx is the character code in
-- hexadecimal.

function escape (s)
    s = string.gsub(s, "[&=+%%%c]", function (c)
        return string.format("%%%02X", string.byte(c))
    end)
    s = string.gsub(s, " ", "+")
return s end


function unescape(s)
    s = string.gsub(s, "+", " ")
    s = string.gsub(s, "%%(%x%x)", function(h)
        return string.char(tonumber(h, 16))
    end)
    return s
end


function encode (t)
    local b = {}
    for k,v in pairs(t) do
        b[#b + 1] = (escape(k) .. "=" .. escape(v))
    end
    -- concatenates all entries in 'b', separated by "&"
    return table.concat(b, "&")
end


function decode (s)
    local b = {}
    for name, value in string.gmatch(s, "([^&=]+)=([^&=]+)") do
        name = unescape(name)
        value = unescape(value)
        b[name] = value
    end
    return b
end


print(escape("a+b = c"))             --> a%2Bb+%3D+c
print(unescape("a%2Bb+%3D+c"))       --> a+b = c
print(encode({name="lua", test=1}))  --> "test=1&name=lua")
-- print(decode("test=1&name=lua"))

t = decode("test=1&name=lua")
print(t["test"], t["name"])
