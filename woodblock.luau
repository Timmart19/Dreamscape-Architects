local UserInputService = game:GetService("UserInputService")
local player = game:GetService("Players").LocalPlayer
local toolTypes = {
	["Wood"] = { Material = Enum.Material.Wood, Color = BrickColor.new("Light Brown") },
	["Stone"] = { Material = Enum.Material.Slate, Color = BrickColor.new("Dark stone grey") },
}
local isPlacing = false
UserInputService.InputBegan:Connect(function(input)
	local character = player.Character or player.CharacterAdded:Wait()
	if not character then return end
	local humanoidRootPart = character:WaitForChild("HumanoidRootPart", 2)
	if not humanoidRootPart then return end
  if input.UserInputType == Enum.UserInputType.Keyboard then
    if input.KeyCode == Enum.KeyCode.R then
			if isPlacing then return end
			isPlacing = true
			task.spawn(function()
				local tool = character:FindFirstChildOfClass("Tool")
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
				if spawnPosition then
					if tool then
						if tool.Name == "Wood" then
							local finalpart = Instance.new("Part")
							local settings = toolTypes[tool.Name]
							if settings then
								finalpart.Material = settings.Material
								finalpart.BrickColor = settings.Color
								finalpart.Parent = workspace
								finalpart.Anchored = true
								finalpart.Position = spawnPosition
								finalpart.Size = Vector3.new(2, 2, 2)
							end
						end	
					end
				end
				isPlacing = false
			end)
		end
	end
end)
