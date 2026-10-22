repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer

print("[BANANA CAT HUB] Đang tải script...")

local PlaceId = game.PlaceId
local route = ""

-- Tự động nhận diện game (Ví dụ: Blox Fruits)
if PlaceId == 2753915549 or PlaceId == 4442272183 or PlaceId == 7449423635 then
    route = "bf_main"
end

if route ~= "" then
    local success, result = pcall(function()
        return game:HttpGet("https://raw.githubusercontent.com/vinhhello13/cccccccccc/main/" .. route .. ".lua")
    end)
    
    if success and result then
        loadstring(result)()
    else
        warn("[BANANA CAT HUB] Lỗi không thể tải file script con!")
    end
else
    warn("[BANANA CAT HUB] Game này chưa được hỗ trợ!")
end
