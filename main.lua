--NOTIFICATION 1
local StarterGui = game:GetService("StarterGui")
StarterGui:SetCore("SendNotification", {
    Title = "NOTIFICATION",
    Text = "Made by @Herobrine (FE)",
    Duration = 10
})

--NOTIFICATION 2
local StarterGui = game:GetService("StarterGui")
StarterGui:SetCore("SendNotification", {
    Title = "NOTIFICATION",
    Text = "Cant Be Detected By Anticheat (FE)",
    Duration = 10
})



-- ULTIMATE TEXT
local plr = game.Players.LocalPlayer
local gui = plr.PlayerGui
local ulttext = gui.ScreenGui.MagicHealth.TextLabel
ulttext.Text = "HEAVENLY PUNISHMENT"



--ADMIN KILLER CHARACTER M1 CHANGE (FE)



--BACKPACK CLEAR
-- Clear the player's backpack at the start
for _, item in pairs(backpack:GetChildren()) do
    if item:IsA("Tool") then
        item:Destroy() -- Remove all tools from the backpack
    end
end



--AWAKENING OF THE GODS
loadstring(game:HttpGet('https://raw.githubusercontent.com/Herobrine697448/Admin/refs/heads/main/Awakening/Awakening%20of%20the%20gods.lua'))()

--RAVAGING DEATHS
loadstring(game:HttpGet('https://raw.githubusercontent.com/Herobrine697448/Admin/refs/heads/main/Basic%20Moves/Ravaging%20Deaths.lua'))()

--THE UNWANTED RISK
loadstring(game:HttpGet('https://raw.githubusercontent.com/Herobrine697448/Admin/refs/heads/main/Basic%20Moves/The%20Unwanted%20Risk.lua'))()
