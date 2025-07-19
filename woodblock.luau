rKeyPressed.Event:Connect(function(Player)
  if not player.Character then return end

	local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
	if not player.Character:FindFirstChild("HumanoidRootPart") then return end

	local spawnPosition = humanoidRootPart.Position + (humanoidRootPart.CFrame.LookVector * 3)

	-- Create the part
	local part = Instance.new("Part")
	part.Size = Vector3.new(2, 2, 2)
	part.Position = spawnPosition
	part.Anchored = true
	part.BrickColor = BrickColor.new("Light Blue2")
	part.Name = "SpawnedPart"
	part.Parent = workspace
end)

end)
game:GetService("Players").LocalPlayer.Name
