-- CREDITS Mac0014 FOR THE BYPASS

local function Hook_Adonis(meta_defs)
  for _, tbl in pairs(meta_defs) do
    for i, func in pairs(tbl) do
      if type(func) == "function" and islclosure(func) then
        hookfunction(func, function()
          return pcall(coroutine.close, coroutine.running())
        end)
      end
    end
  end
end

local function Init_Bypass()
  for i, v in getgc(true) do
    if typeof(v) == "table" and rawget(v, "indexInstance") and rawget(v, "newindexInstance") and rawget(v, "namecallInstance") and type(rawget(v, "newindexInstance")) == "table" then
      if v["newindexInstance"][1] == "kick" then
        Hook_Adonis(v)
      end
    end
  end
end

Init_Bypass()
print('bypassed adonis haha')
