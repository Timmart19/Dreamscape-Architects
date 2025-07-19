game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessedEvent)
  if input.UserInputType == Enum.UserInputType.Keyboard then
    if input.KeyCode == Enum.KeyCode.R then
			task.spawn(function()
				local part = Instance.new("Part")
      	while UserInputService:IsKeyDown(input.KeyCode.R) do
        	task.wait(0.1)
					part.Size = Vector3.new(2, 2, 2)
					part.Position = spawnPosition
					part.Anchored = true
					part.BrickColor = BrickColor.new("Light Blue2")
					part.Name = "CursorPart"
					part.Parent = workspace
      	end
				part:destroy()
				local part = Instance.new("Part")
				part.Material = Enum.Material.Wood
				part.Anchored = true
			end)
		end
	end
end)
game:GetService("Players").LocalPlayer.Name


	if not player.Character then return end
		
	local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
	if not player.Character:FindFirstChild("HumanoidRootPart") then return end

	local spawnPosition = humanoidRootPart.Position + (humanoidRootPart.CFrame.LookVector * 3)

	local part = Instance.new("Part")
	part.Size = Vector3.new(2, 2, 2)
	part.Position = spawnPosition
	part.Anchored = true
	part.BrickColor = BrickColor.new("Light Blue2")
	part.Name = "CursorPart"
	part.Parent = workspace
