-- PlayerGui Setup Script

local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Create PlayerGui
local playerGui = Instance.new("ScreenGui")
playerGui.Name = "PlayerGui"
playerGui.Parent = player:WaitForChild("PlayerGui")

-- Create Leaderstats Frame
local leaderstatsFrame = Instance.new("Frame")
leaderstatsFrame.Name = "LeaderstatsFrame"
leaderstatsFrame.Size = UDim2.new(0, 200, 0, 100)
leaderstatsFrame.Position = UDim2.new(0, 10, 0, 10)
leaderstatsFrame.BackgroundTransparency = 0.5
leaderstatsFrame.BackgroundColor3 = Color3.new(0, 0, 0)
leaderstatsFrame.Parent = playerGui

-- Create Geld Label
local geldLabel = Instance.new("TextLabel")
geldLabel.Name = "GeldLabel"
geldLabel.Size = UDim2.new(1, 0, 0.5, 0)
geldLabel.Position = UDim2.new(0, 0, 0, 0)
geldLabel.Text = "Geld: " .. player:WaitForChild("leaderstats"):WaitForChild("Geld").Value
geldLabel.TextColor3 = Color3.new(1, 1, 1)
geldLabel.BackgroundTransparency = 1
geldLabel.Parent = leaderstatsFrame

-- Create Buit Label
local buitLabel = Instance.new("TextLabel")
buitLabel.Name = "BuitLabel"
buitLabel.Size = UDim2.new(1, 0, 0.5, 0)
buitLabel.Position = UDim2.new(0, 0, 0.5, 0)
buitLabel.Text = "Buit: " .. player:WaitForChild("leaderstats"):WaitForChild("Buit").Value
buitLabel.TextColor3 = Color3.new(1, 1, 1)
buitLabel.BackgroundTransparency = 1
buitLabel.Parent = leaderstatsFrame

-- Update Leaderstats Labels
player:WaitForChild("leaderstats"):WaitForChild("Geld").Changed:Connect(function()
    geldLabel.Text = "Geld: " .. player.leaderstats.Geld.Value
end)

player:WaitForChild("leaderstats"):WaitForChild("Buit").Changed:Connect(function()
    buitLabel.Text = "Buit: " .. player.leaderstats.Buit.Value
end)