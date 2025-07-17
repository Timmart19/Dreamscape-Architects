local Players = game:GetService("Players")

local clonable1 = 1
local clonable2 = 1
local clonable3 = 1
local clonable4 = 1
local clonable5 = 1

Players.PlayerAdded:Connect(function(player)
  
  local ran = math.random(1, 5)
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
  name = 'island' .. ran .. cloneable
  function islandMake()
    return "game.ReplicatedStorage.island" .. ran
  end
  cloneobj = islandMake:clone()
  cloneobj.Parent = game.Workspace
  cloneobj.Name = name
  if ran == 1 then
    clonable1 += 1
  end
  elseif ran == 2 then
    clonable2 += 1
  end
  elseif ran == 3 then
    clonable3 += 1
  end
  elseif ran == 4 then
    clonable4 += 1
  end
  elseif ran == 5 then
    clonable5 += 1
  end
end)
