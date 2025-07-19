script.Parent.ProximityPrompt.Triggered:Connect(function(player)
  for i 1, math.random(1, 4) do
    task.wait(1)
    wood = game.ReplicatedStorage.woodDrop:clone()
    wood.Position = script.parent.Position
  end
end)
