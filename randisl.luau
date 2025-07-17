local Players = game:GetService("Players")

clonable1 = 1
clonable2 = 1
clonable3 = 1
clonable4 = 1
clonable5 = 1

Players.PlayerAdded:Connect(function(player)
  
  ran = math.random(1, 5)
  if ran == 1 then
    clonable = clonable1
  end
  elseif ran == 2 then
    clonable = clonable2
  end
  elseif ran == 3 then
    clonable = clonable3
  end
  elseif ran == 4 then
    clonable = clonable4
  end
  elseif ran == 5 then
    clonable = clonable5
  end
  function islandMake()
    return "game.ReplicatedStorage.island" .. ran
  end
  clone objectislandMake:clone()
  clone.Parent = game.Workspace
  clone.Name = 
end)
