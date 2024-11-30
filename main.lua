-- CREDITS TO A GUY ON V3RM FOR MAKING THIS

for _, value in getgc(true) do 
    if type(value) == 'table' then
       if rawget(value, "indexInstance") or rawget(value, "newindexInstance") or rawget(value, “newIndexInstance”) or rawget(value,
"namecallInstance") then 
          value.tvk = { "kick", function() return task.wait(9e9) end } 
       end
    end
end