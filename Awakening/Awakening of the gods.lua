-- Services
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local backpack = player:WaitForChild("Backpack")
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local rootPart = character:WaitForChild("HumanoidRootPart")

-- Function to create the Awakening of the Gods tool
local function createAwakeningTool()
    local tool = Instance.new("Tool")
    tool.Name = "Awakening of the Gods"
    tool.RequiresHandle = false -- Tool doesn't require a handle
    tool.CanBeDropped = false -- Disable dropping tool

    -- Tool activated event
    tool.Activated:Connect(function()
        -- Send chat message before teleporting
        local message = "I AM GOD"
        local channel = "All"
        local c = {message, channel}

        -- Check if the chat system is accessible
        local success, err = pcall(function()
            ReplicatedStorage:WaitForChild("DefaultChatSystemChatEvents")
                :WaitForChild("SayMessageRequest")
                :FireServer(unpack(c))
        end)

        if not success then
            warn("Failed to send message: " .. err) -- Log any errors
        else
            print("Message sent: " .. message) -- Confirm message was sent
        end

        -- Save the player's original position
        local originalPosition = rootPart.Position

        -- Teleport the player up by 150 studs
        rootPart.CFrame = rootPart.CFrame + Vector3.new(0, 150, 0)
        
        -- Disable gravity to make the player float
        humanoid.PlatformStand = true -- Makes the character float

        -- Play animation while in the air
        local animation = Instance.new("Animation")
        animation.AnimationId = "rbxassetid://18450698238" -- Replace with your animation ID
        local animTrack = humanoid:LoadAnimation(animation)
        
        -- Check if the animation loads successfully
        local animSuccess, animErr = pcall(function()
            animTrack:Play()
        end)

        if not animSuccess then
            warn("Failed to play animation: " .. animErr) -- Log any animation errors
        end

        -- Create and play the sound
        local sound = Instance.new("Sound")
        sound.SoundId = "rbxassetid://1497493768" -- Replace with your sound ID
        sound.Parent = rootPart -- Attach sound to the root part
        sound.Volume = 8
        sound:Play() -- Play the sound

        -- Wait for 5 seconds while the player stays in the air
        wait(5)

        -- Restore the player's original state (gravity) and teleport them back down
        humanoid.PlatformStand = false -- Restore movement and gravity
        rootPart.CFrame = CFrame.new(originalPosition) -- Return to original position

        -- Stop the animation when returning
        animTrack:Stop()
        sound:Destroy() -- Clean up sound instance
    end)

    -- Parent the tool to the player's Backpack
    tool.Parent = backpack
end

-- Call function to create the tool
createAwakeningTool()
