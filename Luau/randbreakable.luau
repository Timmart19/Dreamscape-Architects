local usedTreeIndices = {}
local possibleTreeCoords = {} -- import squares coords here...
local possibleRockCoords = {} -- import squares coords here...
game.workspace.islands.ChildAdded:Connect(function(child))
  local cloneTree = game.workspace.tree:Clone()
  for i 1, math.random(3, 5) do
    local cloneTree = game.workspace.tree:Clone()
    local randTree = math.random(1, 40)
    cloneTree.Position = possibleTreeCoords[randTree]
    cloneTree.Parent = child
  end
  for i 1, math.random(1, 3) do
    local cloneRock = game.workspace.rock:Clone()
    local randRock = math.random(1, 40)
    cloneRock.Position = possibleRockCoords[randRock]
    cloneRock.Parent = child
  end
end)

local usedTreeIndices = {}
local usedRockIndices = {}
local possibleTreeCoords = script.Parent.Places.Trees
local possibleRockCoords = script.Parent.Places.Rocks
local treeCoords = possibleTreeCoords:GetChildren()
local rockCoords = possibleRockCoords:GetChildren()
script.Parent.ChildAdded:Connect(function()
	for i in 1, math.random(3, 5) do
		local cloneTree = game.Workspace.Tree:Clone()
		cloneTree.PrimaryPart = cloneTree:FindFirstChild("Prime")
		local randTree = math.random(1, #treeCoords)
		repeat
			randTree = math.random(1, #treeCoords)
		until not usedTreeIndices[randTree]
		usedTreeIndices[randTree] = true
		local rotationY = math.rad(math.random(0, 360))
		local rotatedCFrame = treeCoords[randTree].CFrame * CFrame.Angles(0, rotationY, 0)
		cloneTree:PivotTo(rotatedCFrame)
		cloneTree.Parent = script.Parent
	end
	for i in 1, math.random(1, 3) do
		local cloneRock = game.Workspace.Rock:Clone()
		cloneRock.PrimaryPart = cloneRock:FindFirstChild("Prime")
		local randRock = math.random(1, #rockCoords)
		repeat
			randRock = math.random(1, #rockCoords)
		until not usedRockIndices[randRock]
		usedRockIndices[randRock] = true
		local rotationY = math.rad(math.random(0, 360))
		local rotatedCFrame = rockCoords[randRock].CFrame * CFrame.Angles(0, rotationY, 0)
		cloneRock:PivotTo(rotatedCFrame)
		cloneRock.Parent = script.Parent
	end
end)
