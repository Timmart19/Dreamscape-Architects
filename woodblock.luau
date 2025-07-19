local UserInputService = game:GetService("UserInputService")
local player = game:GetService("Players").LocalPlayer
UserInputService.InputBegan:Connect(function(input)
	local character = player.Character or player.CharacterAdded:Wait()
	if not character then return end
	local humanoidRootPart = character:WaitForChild("HumanoidRootPart", 2)
	if not humanoidRootPart then return end
  if input.UserInputType == Enum.UserInputType.Keyboard then
    if input.KeyCode == Enum.KeyCode.R then
			task.spawn(function()
				local part = Instance.new("Part")
				part.Size = Vector3.new(2, 2, 2)
				part.Anchored = true
				part.BrickColor = BrickColor.new("Light Blue")
				part.Name = "CursorPart"
				part.Parent = workspace
				local spawnPosition
      	while UserInputService:IsKeyDown(Enum.KeyCode.R) do
					local forwardVector = humanoidRootPart.CFrame.LookVector
					spawnPosition = humanoidRootPart.Position + (forwardVector * 3)
        	task.wait(0.1)
					part.Position = spawnPosition
      	end
				part:Destroy()
				local finalpart = Instance.new("Part")
				finalpart.Material = Enum.Material.Wood
				finalpart.Anchored = true
				finalpart.Position = spawnPosition
				finalpart.Size = Vector3.new(2, 2, 2)
				finalpart.BrickColor = BrickColor.new("Light Brown")
				finalpart.Parent = workspace
			end)
		end
	end
end)
