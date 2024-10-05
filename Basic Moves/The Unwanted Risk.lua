local Tool = Instance.new("Tool")
Tool.Name = "The Unwanted Risk"
Tool.RequiresHandle = false
Tool.CanBeDropped = true
Tool.Parent = game.Players.LocalPlayer.Backpack

local p = game.Players.LocalPlayer
local Character = p.Character or p.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")
local RootPart = Character:WaitForChild("HumanoidRootPart")

local damage = 200
local speed = 200

local hitbox = Instance.new("Part")
hitbox.CanCollide = false
hitbox.Anchored = false
hitbox.Name = "Hitbox"
hitbox.Material = Enum.Material.ForceField
hitbox.Size = Vector3.new(8, 8, 10)
hitbox.Transparency = 1
hitbox.Massless = true
hitbox.Parent = workspace

local sound = Instance.new("Sound")
sound.Name = "UnwantedRiskSound"
sound.SoundId = "rbxassetid://2496367477"
sound.Volume = 6
sound.Parent = Tool

local hitSound = Instance.new("Sound")
hitSound.Name = "HitSound"
hitSound.SoundId = "rbxassetid://YOUR_HIT_SOUND_ID" -- Replace with your hit sound ID
hitSound.Volume = 6
hitSound.Parent = Tool

local runAnim = Instance.new("Animation")
runAnim.AnimationId = "rbxassetid://1"
local runAnimation = Humanoid:LoadAnimation(runAnim)

local function onActivated()
    sound:Play()
    local bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.MaxForce = Vector3.new(10000, 10000, 10000)
    bodyVelocity.Parent = RootPart

    runAnimation:Play()
    for _ = 1, 7 do
        bodyVelocity.Velocity = RootPart.CFrame.LookVector * speed
        wait(1)
    end

    runAnimation:Stop()
    bodyVelocity:Destroy()
end

local function onTouch(hit)
    local hitPlayer = game.Players:GetPlayerFromCharacter(hit)
    if hitPlayer then
        hitSound:Play()
        -- Apply damage logic here
        local hitHumanoid = hit:FindFirstChildOfClass("Humanoid")
        if hitHumanoid then
            hitHumanoid:TakeDamage(damage)
        end
    end
end

Tool.Activated:Connect(onActivated)
hitbox.Touched:Connect(onTouch)
