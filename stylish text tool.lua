-- Create a StarterGui for stylish text tool
local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Create ScreenGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = player:WaitForChild("PlayerGui")
ScreenGui.Name = "StylishTextTool"

-- Create Frame
local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 300, 0, 400)
Frame.Position = UDim2.new(0.5, -150, 0.5, -200)
Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Frame.Parent = ScreenGui

-- Create Title Label
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 50)
Title.Position = UDim2.new(0, 0, 0, 0)
Title.Text = "Stylish Text Tool"
Title.Font = Enum.Font.Fantasy
Title.TextSize = 20
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1
Title.Parent = Frame

-- Create Input Box
local InputBox = Instance.new("TextBox")
InputBox.Size = UDim2.new(0.8, 0, 0, 50)
InputBox.Position = UDim2.new(0.1, 0, 0.2, 0)
InputBox.PlaceholderText = "Enter your text"
InputBox.Font = Enum.Font.SourceSans
InputBox.TextSize = 16
InputBox.TextColor3 = Color3.fromRGB(0, 0, 0)
InputBox.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
InputBox.Parent = Frame

-- Create Apply Button
local ApplyButton = Instance.new("TextButton")
ApplyButton.Size = UDim2.new(0.8, 0, 0, 50)
ApplyButton.Position = UDim2.new(0.1, 0, 0.4, 0)
ApplyButton.Text = "Apply Style"
ApplyButton.Font = Enum.Font.SourceSansBold
ApplyButton.TextSize = 18
ApplyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ApplyButton.BackgroundColor3 = Color3.fromRGB(100, 100, 250)
ApplyButton.Parent = Frame

-- Create Output Label
local OutputLabel = Instance.new("TextLabel")
OutputLabel.Size = UDim2.new(0.8, 0, 0, 100)
OutputLabel.Position = UDim2.new(0.1, 0, 0.6, 0)
OutputLabel.Text = ""
OutputLabel.Font = Enum.Font.Arcade
OutputLabel.TextSize = 22
OutputLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
OutputLabel.BackgroundTransparency = 1
OutputLabel.Parent = Frame

-- Styling Functions
local function applyGradient(text)
    -- A placeholder function (gradient effect requires more advanced methods in Roblox)
    return "🌈 " .. text .. " 🌈"
end

local function reverseText(text)
    return string.reverse(text)
end

local function uppercaseText(text)
    return string.upper(text)
end

-- Button Click Event
ApplyButton.MouseButton1Click:Connect(function()
    local inputText = InputBox.Text
    local styledText = applyGradient(uppercaseText(reverseText(inputText)))
    OutputLabel.Text = styledText
end)

print("Stylish Text Tool loaded successfully!")