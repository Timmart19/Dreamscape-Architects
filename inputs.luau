local rKeyPressed = Instance.new("BindableEvent")
rKeyPressed.Name = "RKeyPressed"
rKeyPressed.Parent = game:GetService("ReplicatedStorage")
game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessedEvent)
  if input.UserInputType == Enum.UserInputType.Keyboard then
    if input.KeyCode == Enum.KeyCode.R then
      rKeyPressed:fire()
    print('This code works fine') -- delete later
    end
  end
