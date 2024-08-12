local ReplicatedStorage = game:GetService("ReplicatedStorage")
local map = require(script.Map)
map.new()

game.Players.PlayerAdded:Connect(function(player)
	local tool = ReplicatedStorage.Assets.Blasters.Blaster06:Clone() -- clones the tool
	local character = player.Character or player.CharacterAdded:Wait() -- gets the player's character
	local humanoid = character:WaitForChild("Humanoid") -- get the humanoid

	tool.Parent = humanoid
	humanoid:EquipTool(tool) -- force equip the tool
end)
