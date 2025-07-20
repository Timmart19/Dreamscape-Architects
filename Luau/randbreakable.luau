local usedTreeIndices = {}
local usedRockIndices = {}
local possibleTreeCoords = script.Parent.Places.Trees
local possibleRockCoords = script.Parent.Places.Rocks
local treeCoords = possibleTreeCoords:GetChildren()
local rockCoords = possibleRockCoords:GetChildren()
local function CloneThings()
	print(child)
	print('1')
	game.Workspace:WaitForChild(Parent)
	print('2')
	for i in 1, math.random(3, 5) do
		local cloneTree = game:GetService("ReplicatedStorage").Tree:Clone()
		print("10")
		local randTree = math.random(1, #treeCoords)
		print("11")
		repeat
			print("12")	
			randTree = math.random(1, #treeCoords)
			print("13")
		until not usedTreeIndices[randTree]
		print("14")
		usedTreeIndices[randTree] = true
		print("15")
		local rotationY = math.rad(math.random(0, 360))
		print("16")
		local rotatedCFrame = treeCoords[randTree].CFrame * CFrame.Angles(0, rotationY, 0)
		print("17")
		cloneTree:PivotTo(rotatedCFrame)
		print("18")
		cloneTree.Parent = script.Parent
		print("19")
	end
	print("20")
	for i in 1, math.random(1, 3) do
		print("21")
		local cloneRock = game:GetService("ReplicatedStorage").Rock:Clone()
		print("22")
		local randRock = math.random(1, #rockCoords)
		print("23")
		repeat
			print("24")
			randRock = math.random(1, #rockCoords)
			print("25")
		until not usedRockIndices[randRock]
		print("26")
		usedRockIndices[randRock] = true
		print("27")
		local rotationY = math.rad(math.random(0, 360))
		print("28")
		local rotatedCFrame = rockCoords[randRock].CFrame * CFrame.Angles(0, rotationY, 0)
		print("29")
		cloneRock:PivotTo(rotatedCFrame)
		print("30")
		cloneRock.Parent = script.Parent
		print("31")
	end	
	print("32")
end
game.Workspace.ChildAdded:Connect(function(child)
	if child == script.Parent then
		CloneThings()
	end
end)
if script.Parent.Parent == game.Workspace then
	CloneThings()
end






local usedTreeIndices = {}
local usedRockIndices = {}
local ServerScriptService = game:GetService("ServerScriptService")
local bindableEvent = ServerScriptService:WaitForChild("TestBindableEvent")
local possibleTreeCoords = script.Parent.Places.Trees
local possibleRockCoords = script.Parent.Places.Rocks
local treeCoords = possibleTreeCoords:GetChildren()
local rockCoords = possibleRockCoords:GetChildren()
local function CloneThings()
	print(child)
	print('1')
	game.Workspace:WaitForChild(Parent)
	print('2')
	for i in 1, math.random(3, 5) do
		local cloneTree = game:GetService("ReplicatedStorage").Tree:Clone()
		print("10")
		local randTree = math.random(1, #treeCoords)
		print("11")
		repeat
			print("12")	
			randTree = math.random(1, #treeCoords)
			print("13")
		until not usedTreeIndices[randTree]
		print("14")
		usedTreeIndices[randTree] = true
		print("15")
		local rotationY = math.rad(math.random(0, 360))
		print("16")
		local rotatedCFrame = treeCoords[randTree].CFrame * CFrame.Angles(0, rotationY, 0)
		print("17")
		cloneTree:PivotTo(rotatedCFrame)
		print("18")
		cloneTree.Parent = script.Parent
		print("19")
	end
	print("20")
	for i in 1, math.random(1, 3) do
		print("21")
		local cloneRock = game:GetService("ReplicatedStorage").Rock:Clone()
		print("22")
		local randRock = math.random(1, #rockCoords)
		print("23")
		repeat
			print("24")
			randRock = math.random(1, #rockCoords)
			print("25")
		until not usedRockIndices[randRock]
		print("26")
		usedRockIndices[randRock] = true
		print("27")
		local rotationY = math.rad(math.random(0, 360))
		print("28")
		local rotatedCFrame = rockCoords[randRock].CFrame * CFrame.Angles(0, rotationY, 0)
		print("29")
		cloneRock:PivotTo(rotatedCFrame)
		print("30")
		cloneRock.Parent = script.Parent
		print("31")
	end	
	print("32")
end
game.Workspace.ChildAdded:Connect(function(child)
	if child == script.Parent then
		CloneThings()
	end
end)
if script.Parent.Parent == game.Workspace then
	CloneThings()
end
bindableEvent.Event:Connect(function(data)
	if data == script.Parent then
		CloneThings()
	end
end)
