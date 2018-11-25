#!/usr/bin/env lua

function date_time_manipulation()
    t = os.date("*t")    -- get current time
    print(os.date("%Y/%m/%d", os.time(t)))  -- 2018/11/25

    t.day = t.day + 40
    print(os.date("%Y/%m/%d", os.time(t)))  -- 2019/01/04
end


function cpu_cost_time()
    -- The function os.clock returns the number of seconds of CPU time used
    -- by the program.
    local x = os.clock()
    local s = 0

    for i = 1, 100000000 do
        s = s + i
    end
    print(string.format("elapsed time: %.2f\n", os.clock() - x))
end

date_time_manipulation()
cpu_cost_time()
