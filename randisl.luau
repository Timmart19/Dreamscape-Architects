local pointpoint = 1
local Players = game:GetService("Players")
function isCloseTo(cframenew, cframeold, distance)
  return cframenew >= cframeold - distance and cframenew <= cframeold + distance
end
local 1CFrame = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048)) 
local 2CFrame = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
while isCloseTo(1CFrame.Position.X, 2CFrame.Position.X, math.random(75, 150)) do
  local 2CFrame = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
end
local 3CFrame = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
while isCloseTo(1CFrame.Position.X, 3CFrame.Position.X, math.random(75, 150)) do
  local 3CFrame = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
end
while isCloseTo(2CFrame.Position.X, 3CFrame.Position.X, math.random(75, 150)) do
  local 3CFrame = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
end
local 4CFrame = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
while isCloseTo(1CFrame.Position.X, 4CFrame.Position.X, math.random(75, 150)) do
  local 4CFrame = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
end
while isCloseTo(2CFrame.Position.X, 4CFrame.Position.X, math.random(75, 150)) do
  local 4CFrame = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
end
while isCloseTo(3CFrame.Position.X, 4CFrame.Position.X, math.random(75, 150)) do
  local 4CFrame = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
end
local 5CFrame = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
while isCloseTo(1CFrame.Position.X, 5CFrame.Position.X, math.random(75, 150)) do
  local 5CFrame = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
end
while isCloseTo(2CFrame.Position.X, 5CFrame.Position.X, math.random(75, 150)) do
  local 5CFrame = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
end
while isCloseTo(3CFrame.Position.X, 5CFrame.Position.X, math.random(75, 150)) do
  local 5CFrame = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
end
while isCloseTo(4CFrame.Position.X, 5CFrame.Position.X, math.random(75, 150)) do
  local 5CFrame = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
end
local clonable1 = 1
local clonable2 = 1
local clonable3 = 1
local clonable4 = 1
local clonable5 = 1
Players.PlayerAdded:Connect(function(player)
  local point = pointpoint .. 'CFrame'
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
    return "game.ReplicatedStorage.island"                                                                          .. ran
  end
  cloneobj = islandMake:clone()
  cloneobj.Parent = game.Workspace
  cloneobj.Name = name
  clone.obj.CFrame = point 
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
    pointpoint += 1
  end
end)
