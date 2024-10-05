-- Services
local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local backpack = player:WaitForChild("Backpack")
local gui = player:WaitForChild("PlayerGui")

-- NOTIFICATION 1
StarterGui:SetCore("SendNotification", {
    Title = "NOTIFICATION",
    Text = "Made by @Herobrine (FE)",
    Duration = 10
})

-- ULTIMATE TEXT
local ulttext = gui.ScreenGui.MagicHealth.TextLabel
ulttext.Text = "HEAVENLY PUNISHMENT"

--BACKPACK CLEAR


-- Load scripts first
loadstring(game:HttpGet('https://raw.githubusercontent.com/Herobrine697448/Admin/refs/heads/main/Awakening/Awakening%20of%20the%20gods.lua'))()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Herobrine697448/Admin/refs/heads/main/Basic%20Moves/Ravaging%20Deaths.lua'))()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Herobrine697448/Admin/refs/heads/main/Basic%20Moves/The%20Unwanted%20Risk.lua'))()
