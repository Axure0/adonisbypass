-- CREDITS TO A GUY ON V3RM FOR MAKING THIS

for k, v in getgc(true) do
   if pcall(function()
      return rawget(v, "indexInstance")
   end) and type(rawget(v, "indexInstance")) == "table" and (rawget(v, "indexInstance"))[1] == "kick" then
      for i,c in pairs(v) do
          for ix,ca in pairs(c) do
             if type(ca) == "function" then
                local dummy = function()
                   return pcall(coroutine.close, coroutine.running())
                end

                hookfunction(ca, dummy)
             end
          end
       end
   end
end
