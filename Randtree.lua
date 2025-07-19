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
