local url = "https://api.project-reverse.org/run/eyJpZCI6ImVlZTg1YjI5LWYyNDItNDEwMS05ZDkxLTUwMjlhMDhmYWQxYyIsImtpbmQiOiJsb2FkZXIiLCJ2aXN1YWwiOnsiaWQiOiJtbTJuZXd1aSJ9fQ"

-- Fetch the loader
local success, result = pcall(function()
    return game:HttpGet(url)
end)

if success then
    -- Execute the loader
    local func, loadError = loadstring(result)
    if func then
        local runSuccess, runError = pcall(func)
        if not runSuccess then
            warn("⚠️ Loader Error (Inside Script): " .. tostring(runError))
        end
    else
        warn("⚠️ Loadstring Error: " .. tostring(loadError))
    end
else
    warn("⚠️ HTTP Error: Could not download API. " .. tostring(result))
end
