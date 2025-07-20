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


local possibleTreeCoords = script.Parent.Places.Trees
local possibleRockCoords = script.Parent.Places.Rocks
script.Parent.AncestryChanged:Connect(function()
	for i in 1, math.random(3, 5) do
		local cloneTree = game.Workspace.Tree:Clone()
		cloneTree.PrimaryPart = cloneTree.Prime
		local randTree = math.random(1, 10)
		cloneTree:PivotTo(possibleTreeCoords[randTree].Position)
		cloneTree.Parent = child
	end
	for i in 1, math.random(1, 3) do
		local cloneRock = game.Workspace.Rock:Clone()
		cloneRock.PrimaryPart = cloneRock.Prime
		local randRock = math.random(1, 10)
		cloneRock:PivotTo(possibleRockCoords[randRock].Position)
		cloneRock.Parent = script.Parent
	end
end)
