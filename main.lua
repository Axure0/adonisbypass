for k, v in getgc(true) do
   if pcall(function()
      return rawget(v, "indexInstance")
   end) and type(rawget(v, "indexInstance")) == "table" and (rawget(v, "indexInstance"))[1] == "kick" then
      for i,c in pairs(v) do
          for ix,ca in pairs(c) do
             if type(ca) == "function" then
                hookfunction(ca, function()
                   return pcall(coroutine.close, coroutine.running())
                end)
             end
          end
       end
   end
end
