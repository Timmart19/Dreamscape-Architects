local pointpoint = 1
local Players = game:GetService("Players")
function isWithinDistance(cframenew, cframeold, distance)
  return math.abs(cframenew - cframeold) < distance
end
local CFrame1 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048)) 
local CFrame2 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
while isWithinDistance(CFrame1.Position.X, CFrame2.Position.X, math.random(75, 150)) do
  CFrame2 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
end
local CFrame3 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
while isWithinDistance(CFrame1.Position.X, CFrame3.Position.X, math.random(75, 150)) do
  CFrame3 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
end
while isWithinDistance(CFrame2.Position.X, CFrame3.Position.X, math.random(75, 150)) do
  CFrame3 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
end
local CFrame4 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
while isWithinDistance(CFrame1.Position.X, CFrame4.Position.X, math.random(75, 150)) do
  CFrame4 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
end
while isWithinDistance(CFrame2.Position.X, CFrame4.Position.X, math.random(75, 150)) do
  CFrame4 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
end
while isWithinDistance(CFrame3.Position.X, CFrame4.Position.X, math.random(75, 150)) do
  CFrame4 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
end
local CFrame5 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
while isWithinDistance(CFrame1.Position.X, CFrame5.Position.X, math.random(75, 150)) do
  CFrame5 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
end
while isWithinDistance(CFrame2.Position.X, CFrame5.Position.X, math.random(75, 150)) do
  CFrame5 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
end
while isWithinDistance(CFrame3.Position.X, CFrame5.Position.X, math.random(75, 150)) do
  CFrame5 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
end
while isWithinDistance(CFrame4.Position.X, CFrame5.Position.X, math.random(75, 150)) do
  CFrame5 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
end
local clonable1 = 1
local clonable2 = 1
local clonable3 = 1
local clonable4 = 1
local clonable5 = 1
local clonablenum = {clonable1, clonable2, clonable3, clonable4, clonable5}
local CFrames = {CFrame1, CFrame2, CFrame3, CFrame4, CFrame5}
Players.PlayerAdded:Connect(function(player)
  local point = CFrames[pointpoint]
  local ran = math.random(1, 5)
  function islandMake()
    return game.ReplicatedStorage["island" .. ran]
  end
  local cloneobj = islandMake():Clone()
  cloneobj.Parent = game.Workspace
  cloneobj.Name = 'island' .. ran .. clonablenum[ran]
  cloneobj:SetPrimaryPartCFrame(point) 
  clonablenum[ran] += 1
  pointpoint += 1
end)





local pointpoint = 1
local ServerScriptService = game:GetService("ServerScriptService")
local bindableEvent = ServerScriptService:WaitForChild("TestBindableEvent")
local Players = game:GetService("Players")
function isWithinDistance(cframenew, cframeold, distance)
	return math.abs(cframenew - cframeold) < distance
end
local CFrame1 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048)) 
local CFrame2 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
while isWithinDistance(CFrame1.Position.X, CFrame2.Position.X, math.random(75, 150)) do
	CFrame2 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
end
local CFrame3 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
while isWithinDistance(CFrame1.Position.X, CFrame3.Position.X, math.random(75, 150)) do
	CFrame3 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
end
while isWithinDistance(CFrame2.Position.X, CFrame3.Position.X, math.random(75, 150)) do
	CFrame3 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
end
local CFrame4 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
while isWithinDistance(CFrame1.Position.X, CFrame4.Position.X, math.random(75, 150)) do
	CFrame4 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
end
while isWithinDistance(CFrame2.Position.X, CFrame4.Position.X, math.random(75, 150)) do
	CFrame4 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
end
while isWithinDistance(CFrame3.Position.X, CFrame4.Position.X, math.random(75, 150)) do
	CFrame4 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
end
local CFrame5 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
while isWithinDistance(CFrame1.Position.X, CFrame5.Position.X, math.random(75, 150)) do
	CFrame5 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
end
while isWithinDistance(CFrame2.Position.X, CFrame5.Position.X, math.random(75, 150)) do
	CFrame5 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
end
while isWithinDistance(CFrame3.Position.X, CFrame5.Position.X, math.random(75, 150)) do
	CFrame5 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
end
while isWithinDistance(CFrame4.Position.X, CFrame5.Position.X, math.random(75, 150)) do
	CFrame5 = CFrame.new(math.random(-2048, 2048), 15, math.random(-2048, 2048))
end
local clonable1 = 1
local clonable2 = 1
local clonable3 = 1
local clonable4 = 1
local clonable5 = 1
local clonablenum = {clonable1, clonable2, clonable3, clonable4, clonable5}
local CFrames = {CFrame1, CFrame2, CFrame3, CFrame4, CFrame5}
Players.PlayerAdded:Connect(function(player)
	local point = CFrames[pointpoint]
	local ran = math.random(1, 5)
	local function islandMake()
		return game.ReplicatedStorage["island" .. ran]
	end
	local cloneobj = islandMake():Clone()
	cloneobj.Parent = game.Workspace
	cloneobj.Name = 'island' .. ran .. clonablenum[ran]
	cloneobj:SetPrimaryPartCFrame(point)
	clonablenum[ran] += 1
	pointpoint += 1
	bindableEvent:Fire('island' .. ran .. clonablenum[ran])
end)
