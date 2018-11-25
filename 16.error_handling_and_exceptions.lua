#!/usr/bin/env lua

-- If we want to handle errors inside the Lua code, we should use the function
-- pcall(protected call) to encapsulate our code.


-- The function pcall calls its first argument in protected mode,
-- so that it catches any errors while the function is running.
-- The function pcall never raises any error, no matter what.
-- If there are no errors, pcall returns true, plus any values
-- returned by the call. Otherwise, it returns false, plus the error
-- message.

function demo_err1()
    local status, err = pcall(function () error({code=121}) end)
    print(status, err.code)
end


function demo_err2()
    local status, err = pcall(function () error("my error") end)
    print(status, err)
end


demo_err1()
demo_err2()
