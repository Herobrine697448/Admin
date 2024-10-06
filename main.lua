-- Services
local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local backpack = player:WaitForChild("Backpack")
local gui = player:WaitForChild("PlayerGui")

-- NOTIFICATION 1
StarterGui:SetCore("SendNotification", {
    Title = "NOTIFICATION",
    Text = "Character Made By @Herobrine",
    Duration = 10
})

-- ULTIMATE TEXT
local ulttext = gui:WaitForChild("ScreenGui"):WaitForChild("MagicHealth"):WaitForChild("TextLabel")
ulttext.Text = "HEAVENLY PUNISHMENT"

-- BACKPACK CLEAR
local function clearBackpack()
    for _, item in pairs(backpack:GetChildren()) do
        if item:IsA("Tool") then
            item:Destroy() -- Remove the tool
        end
    end
end

-- Call the backpack clearing function
clearBackpack()

--THE UNWANTED RISK
local Tool = Instance.new("Tool")
Tool.Name = "The Unwanted Risk"
Tool.RequiresHandle = false
Tool.CanBeDropped = true
Tool.Parent = game.Players.LocalPlayer.Backpack

Tool.Activated:Connect(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Herobrine697448/Admin/refs/heads/main/Basic%20Moves/The%20Unwanted%20Risk.lua'))()
end)



--AWAKENING OF THE GODS
loadstring(game:HttpGet('https://raw.githubusercontent.com/Herobrine697448/Admin/refs/heads/main/Awakening/Awakening%20of%20the%20gods.lua'))()


--RAVAGING DEATHS
loadstring(game:HttpGet('https://raw.githubusercontent.com/Herobrine697448/Admin/refs/heads/main/Basic%20Moves/Ravaging%20Deaths.lua'))()
