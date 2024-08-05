local Map = {}

local width = 11
local length = 15
local tile_size = 6
local tile_gap = 0.1
local wall_height = 3
local wall_thickness = 1

local tile_color = Color3.fromRGB(51, 88, 130)
local inset_color = Color3.fromRGB(82, 124, 174)
local wall_color = Color3.fromRGB(218, 133, 65)

function Map.new()
	local map_folder = Instance.new("Folder", game.Workspace)
	map_folder.Name = "Map"

	local spawn_location = Instance.new("SpawnLocation", game.Workspace)
	spawn_location.Anchored = true
	spawn_location.CanCollide = false
	spawn_location.Transparency = 1
	spawn_location.Duration = 0
	spawn_location.Size = Vector3.new(1, 1, 1)
	spawn_location.CFrame = CFrame.new(
		Vector3.new(0, 2, ((tile_size * width) / 2) - (tile_size / 2)),
		Vector3.new(1, 2, ((tile_size * width) / 2) - (tile_size / 2))
	)

	for y = 1, width do
		for x = 1, length do
			local tile = Instance.new("Part", map_folder)
			tile.Size = Vector3.new(tile_size, 1, tile_size)
			tile.CFrame = CFrame.new(Vector3.new((x - 1) * tile_size, 0, (y - 1) * tile_size))
			tile.Anchored = true
			tile.CastShadow = false
			tile.Material = Enum.Material.SmoothPlastic
			tile.Color = tile_color

			local inset = Instance.new("Part", map_folder)
			inset.Size = Vector3.new(tile_size - tile_gap, 1.02, tile_size - tile_gap)
			inset.CFrame = CFrame.new(Vector3.new((x - 1) * tile_size, 0, (y - 1) * tile_size))
			inset.Anchored = true
			inset.CanCollide = false
			inset.CastShadow = false
			inset.Material = Enum.Material.SmoothPlastic
			inset.Color = inset_color
		end

		local west_wall = Instance.new("Part", map_folder)
		west_wall.Size = Vector3.new((tile_size * length) + (wall_thickness * 2), wall_height, wall_thickness)
		west_wall.CFrame = CFrame.new(
			((tile_size * length) / 2) - (tile_size / 2),
			wall_height / 2,
			(-tile_size / 2) - (wall_thickness / 2)
		)
		west_wall.Anchored = true
		west_wall.CastShadow = false
		west_wall.Material = Enum.Material.SmoothPlastic
		west_wall.Color = wall_color

		local west_wall_top = Instance.new("Part", map_folder)
		west_wall_top.Size = Vector3.new((tile_size * length) + (wall_thickness * 2), wall_height * 50, wall_thickness)
		west_wall_top.CFrame = CFrame.new(
			((tile_size * length) / 2) - (tile_size / 2),
			(wall_height * 50) / 2,
			(-tile_size / 2) - (wall_thickness / 2)
		)
		west_wall_top.Anchored = true
		west_wall_top.CastShadow = false
		west_wall_top.Transparency = 1

		local east_wall = Instance.new("Part", map_folder)
		east_wall.Size = Vector3.new((tile_size * length) + (wall_thickness * 2), wall_height, wall_thickness)
		east_wall.CFrame = CFrame.new(
			((tile_size * length) / 2) - (tile_size / 2),
			wall_height / 2,
			(tile_size * width) + (wall_thickness / 2) - (tile_size / 2)
		)
		east_wall.Anchored = true
		east_wall.CastShadow = false
		east_wall.Material = Enum.Material.SmoothPlastic
		east_wall.Color = wall_color

		local east_wall_top = Instance.new("Part", map_folder)
		east_wall_top.Size = Vector3.new((tile_size * length) + (wall_thickness * 2), wall_height * 50, wall_thickness)
		east_wall_top.CFrame = CFrame.new(
			((tile_size * length) / 2) - (tile_size / 2),
			(wall_height * 50) / 2,
			(tile_size * width) + (wall_thickness / 2) - (tile_size / 2)
		)
		east_wall_top.Anchored = true
		east_wall_top.CastShadow = false
		east_wall_top.Transparency = 1

		local south_wall = Instance.new("Part", map_folder)
		south_wall.Size = Vector3.new(wall_thickness, wall_height, (tile_size * width) + (wall_thickness * 2))
		south_wall.CFrame = CFrame.new(
			(-tile_size / 2) - (wall_thickness / 2),
			wall_height / 2,
			((tile_size * width) / 2) - (tile_size / 2)
		)
		south_wall.Anchored = true
		south_wall.CastShadow = false
		south_wall.Material = Enum.Material.SmoothPlastic
		south_wall.Color = wall_color

		local south_wall_top = Instance.new("Part", map_folder)
		south_wall_top.Size = Vector3.new(wall_thickness, wall_height * 50, (tile_size * width) + (wall_thickness * 2))
		south_wall_top.CFrame = CFrame.new(
			(-tile_size / 2) - (wall_thickness / 2),
			(wall_height * 50) / 2,
			((tile_size * width) / 2) - (tile_size / 2)
		)
		south_wall_top.Anchored = true
		south_wall_top.CastShadow = false
		south_wall_top.Transparency = 1

		local north_wall = Instance.new("Part", map_folder)
		north_wall.Size = Vector3.new(wall_thickness, wall_height, (tile_size * width) + (wall_thickness * 2))
		north_wall.CFrame = CFrame.new(
			(tile_size * length) + (wall_thickness / 2) - (tile_size / 2),
			wall_height / 2,
			((tile_size * width) / 2) - (tile_size / 2)
		)
		north_wall.Anchored = true
		north_wall.CastShadow = false
		north_wall.Material = Enum.Material.SmoothPlastic
		north_wall.Color = wall_color

		local north_wall_top = Instance.new("Part", map_folder)
		north_wall_top.Size = Vector3.new(wall_thickness, wall_height * 50, (tile_size * width) + (wall_thickness * 2))
		north_wall_top.CFrame = CFrame.new(
			(tile_size * length) + (wall_thickness / 2) - (tile_size / 2),
			(wall_height * 50) / 2,
			((tile_size * width) / 2) - (tile_size / 2)
		)
		north_wall_top.Anchored = true
		north_wall_top.CastShadow = false
		north_wall_top.Transparency = 1
	end
end

return Map
