

local Warning = Instance.new("ScreenGui")
local Warning_2 = Instance.new("Frame")
local Line = Instance.new("Frame")
local CloseButton = Instance.new("ImageButton")
local Close = Instance.new("Frame")
local TheWarning = Instance.new("TextLabel")
local Line_2 = Instance.new("Frame")
local PlayButton = Instance.new("TextButton")
local Title = Instance.new("TextLabel")

--Properties:

Warning.Name = "Warning"
Warning.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Warning.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Warning.ResetOnSpawn = false

Warning_2.Name = "Warning"
Warning_2.Parent = Warning
Warning_2.Active = true
Warning_2.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Warning_2.Position = UDim2.new(0.5, -243, 0.5, -133)
Warning_2.Size = UDim2.new(0, 486, 0, 266)

Line.Name = "Line"
Line.Parent = Warning_2
Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line.Position = UDim2.new(0, 0, 0.165413529, 0)
Line.Size = UDim2.new(0, 486, 0, 1)

CloseButton.Name = "CloseButton"
CloseButton.Parent = Warning_2
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Position = UDim2.new(0.913580239, 0, 0, 0)
CloseButton.Size = UDim2.new(0, 42, 0, 42)
CloseButton.Image = "rbxassetid://6718360944"

Close.Name = "Close"
Close.Parent = Warning_2
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.BackgroundTransparency = 1.000
Close.Position = UDim2.new(0.395061731, 0, 0.312030077, 0)
Close.Size = UDim2.new(0, 100, 0, 100)

TheWarning.Name = "TheWarning"
TheWarning.Parent = Close
TheWarning.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TheWarning.BackgroundTransparency = 0.700
TheWarning.Position = UDim2.new(-1.91999996, 0, -0.375, 0)
TheWarning.Size = UDim2.new(0, 486, 0, 168)
TheWarning.Font = Enum.Font.TitilliumWeb
TheWarning.Text = "This script might have bugs because its not done yet."
TheWarning.TextColor3 = Color3.fromRGB(0, 0, 0)
TheWarning.TextScaled = true
TheWarning.TextSize = 14.000
TheWarning.TextStrokeColor3 = Color3.fromRGB(184, 184, 184)
TheWarning.TextStrokeTransparency = 0.500
TheWarning.TextWrapped = true

Line_2.Name = "Line"
Line_2.Parent = Close
Line_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line_2.Position = UDim2.new(-1.91999996, 0, 1.30827069, 0)
Line_2.Size = UDim2.new(0, 486, 0, 1)

PlayButton.Name = "PlayButton"
PlayButton.Parent = Warning_2
PlayButton.BackgroundColor3 = Color3.fromRGB(83, 83, 83)
PlayButton.Position = UDim2.new(0, 0, 0.812030077, 0)
PlayButton.Size = UDim2.new(0, 486, 0, 50)
PlayButton.Font = Enum.Font.Cartoon
PlayButton.Text = "Continue"
PlayButton.TextColor3 = Color3.fromRGB(0, 0, 0)
PlayButton.TextScaled = true
PlayButton.TextSize = 14.000
PlayButton.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
PlayButton.TextStrokeTransparency = 0.500
PlayButton.TextWrapped = true

Title.Name = "Title"
Title.Parent = Warning_2
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.279835403, 0, -0.0187969916, 0)
Title.Size = UDim2.new(0, 184, 0, 50)
Title.Font = Enum.Font.Ubuntu
Title.Text = "⚠Warning⚠"
Title.TextColor3 = Color3.fromRGB(144, 69, 62)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Title.TextStrokeTransparency = 0.000
Title.TextWrapped = true

-- Scripts:

local function WHGCEN_fake_script() -- CloseButton.Close 
	local script = Instance.new('LocalScript', CloseButton)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Visible = false
	end)
end
coroutine.wrap(WHGCEN_fake_script)()
local function JQYWH_fake_script() -- PlayButton.Play 
	local script = Instance.new('LocalScript', PlayButton)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Visible = false
	end)
end
coroutine.wrap(JQYWH_fake_script)()
local function YUABO_fake_script() -- Warning_2.Drag script 
	local script = Instance.new('LocalScript', Warning_2)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(YUABO_fake_script)()
