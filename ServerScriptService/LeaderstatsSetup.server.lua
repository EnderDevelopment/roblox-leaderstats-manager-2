-- Leaderstats Setup Script

local Players = game:GetService("Players")
local DataStoreService = game:GetService("DataStoreService")
local leaderstatsDataStore = DataStoreService:GetDataStore("Leaderstats")

local function onPlayerAdded(player)
    -- Create Leaderstats folder
    local leaderstats = Instance.new("Folder")
    leaderstats.Name = "leaderstats"
    leaderstats.Parent = player

    -- Create Geld IntValue
    local geld = Instance.new("IntValue")
    geld.Name = "Geld"
    geld.Value = 0
    geld.Parent = leaderstats

    -- Create Buit IntValue
    local buit = Instance.new("IntValue")
    buit.Name = "Buit"
    buit.Value = 0
    buit.Parent = leaderstats

    -- Load Geld data from DataStore
    local success, err = pcall(function()
        local data = leaderstatsDataStore:GetAsync(player.UserId)
        if data then
            geld.Value = data.Geld or 0
        end
    end)

    if not success then
        warn("Failed to load Geld data for " .. player.Name .. ": " .. err)
    end

    -- Save Geld data to DataStore when player leaves
    player.AncestryChanged:Connect(function()
        if not player:IsDescendantOf(game) then
            local success, err = pcall(function()
                leaderstatsDataStore:SetAsync(player.UserId, {Geld = geld.Value})
            end)

            if not success then
                warn("Failed to save Geld data for " .. player.Name .. ": " .. err)
            end
        end
    end)
end

Players.PlayerAdded:Connect(onPlayerAdded)

-- Handle existing players
for _, player in ipairs(Players:GetPlayers()) do
    onPlayerAdded(player)
end