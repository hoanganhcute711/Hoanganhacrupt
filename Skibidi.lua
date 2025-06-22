local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name = "GardenVIP"

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 280, 0, 330)
frame.Position = UDim2.new(0.5, -140, 0.5, -165)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true

local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1, 0, 0, 40)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundTransparency = 1
title.Text = "🌿 GARDEN VIP"
title.Font = Enum.Font.GothamBlack
title.TextColor3 = Color3.fromRGB(0, 255, 127)
title.TextSize = 22

local image = Instance.new("ImageLabel", frame)
image.Size = UDim2.new(0, 220, 0, 160)
image.Position = UDim2.new(0.5, -110, 0, 40)
image.BackgroundTransparency = 1
image.Image = "rbxassetid://155788288"

local btn = Instance.new("TextButton", frame)
btn.Size = UDim2.new(0, 220, 0, 50)
btn.Position = UDim2.new(0.5, -110, 0, 210)
btn.Text = "AUTO FARM ON"
btn.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
btn.TextColor3 = Color3.fromRGB(255, 255, 255)
btn.Font = Enum.Font.GothamBold
btn.TextSize = 20
btn.BorderSizePixel = 0

local farming = false

btn.MouseButton1Click:Connect(function()
	farming = not farming
	btn.Text = farming and "AUTO FARM OFF" or "AUTO FARM ON"

	while farming and task.wait(0.25) do
		pcall(function()
			for _,v in pairs(workspace:GetDescendants()) do
				if v:IsA("ClickDetector
