local pointpoint = 1
local Players = game:GetService("Players")
function isWithinDistance(cframenew, cframeold, distance)
  return math.abs(cframenew - cframeold) < distance
end
local CFrame1 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048)) 
local CFrame2 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
while isCloseTo(CFrame1.Position.X, CFrame2.Position.X, math.random(75, 150)) do
  CFrame2 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
end
local CFrame3 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
while isCloseTo(CFrame1.Position.X, CFrame3.Position.X, math.random(75, 150)) do
  CFrame3 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
end
while isCloseTo(CFrame2.Position.X, CFrame3.Position.X, math.random(75, 150)) do
  CFrame3 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
end
local CFrame4 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
while isCloseTo(CFrame1.Position.X, CFrame4.Position.X, math.random(75, 150)) do
  CFrame4 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
end
while isCloseTo(CFrame2.Position.X, CFrame4.Position.X, math.random(75, 150)) do
  CFrame4 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
end
while isCloseTo(CFrame3.Position.X, CFrame4.Position.X, math.random(75, 150)) do
  CFrame4 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
end
local CFrame5 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
while isCloseTo(CFrame1.Position.X, CFrame5.Position.X, math.random(75, 150)) do
  CFrame5 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
end
while isCloseTo(CFrame2.Position.X, CFrame5.Position.X, math.random(75, 150)) do
  CFrame5 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
end
while isCloseTo(CFrame3.Position.X, CFrame5.Position.X, math.random(75, 150)) do
  CFrame5 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
end
while isCloseTo(CFrame4.Position.X, CFrame5.Position.X, math.random(75, 150)) do
  CFrame5 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
end
local clonable1 = 1
local clonable2 = 1
local clonable3 = 1
local clonable4 = 1
local clonable5 = 1
local CFrames = {CFrame1, CFrame2, CFrame3, CFrame4, CFrame5}
Players.PlayerAdded:Connect(function(player)
  local point = CFrames[pointpoint]
  local ran = math.random(1, 5)
  if ran == 1 then
    clonable = clonable1
  elseif ran == 2 then
    clonable = clonable2
  elseif ran == 3 then
    clonable = clonable3
  elseif ran == 4 then
    clonable = clonable4
  elseif ran == 5 then
    clonable = clonable5
  end
  name = 'island' .. ran .. cloneable
  function islandMake()
    return game.ReplicatedStorage["island" .. ran]
  end
  cloneobj = islandMake():Clone()
  cloneobj.Parent = game.Workspace
  cloneobj.Name = name
  cloneobj.CFrame = point 
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
  pointpoint += 1
end)
