-- Warning Message Script

local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Create Warning Message
local warningMessage = Instance.new("TextLabel")
warningMessage.Name = "WarningMessage"
warningMessage.Size = UDim2.new(0, 300, 0, 50)
warningMessage.Position = UDim2.new(0.5, -150, 0.5, -25)
warningMessage.AnchorPoint = Vector2.new(0.5, 0.5)
warningMessage.Text = "Je hebt al 5 buit!"
warningMessage.TextColor3 = Color3.new(1, 0, 0)
warningMessage.BackgroundTransparency = 0.5
warningMessage.BackgroundColor3 = Color3.new(0, 0, 0)
warningMessage.Visible = false
warningMessage.Parent = script.Parent

-- Show Warning Message
local function showWarningMessage()
    warningMessage.Visible = true
    wait(3)
    warningMessage.Visible = false
end

-- Connect to ProximityPrompt Triggered event
local part = script.Parent.Parent
local proximityPrompt = part:WaitForChild("ProximityPrompt")

proximityPrompt.Triggered:Connect(function(playerWhoTriggered)
    if playerWhoTriggered == player then
        local buit = player:WaitForChild("leaderstats"):WaitForChild("Buit").Value
        if buit >= 5 then
            showWarningMessage()
        end
    end
end)