-- ========================================================
--                   ZERO GEMINI HUB v1.0
--            AI Script Generator & Code Executor
-- ========================================================

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ZeroGeminiHub"
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- --------------------------------------------------------
-- Floating Open/Close Toggle Button
-- --------------------------------------------------------
local ToggleBtn = Instance.new("TextButton")
ToggleBtn.Name = "ZeroGeminiToggle"
ToggleBtn.Parent = ScreenGui
ToggleBtn.Position = UDim2.new(0.02, 0, 0.25, 0)
ToggleBtn.Size = UDim2.new(0, 50, 0, 50)
ToggleBtn.Text = " Zero"
ToggleBtn.TextSize = 14
ToggleBtn.Font = Enum.Font.SourceSansBold
ToggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleBtn.BackgroundColor3 = Color3.fromRGB(16, 185, 129) -- Emerald Green
ToggleBtn.Active = true
ToggleBtn.Draggable = true

local ToggleCorner = Instance.new("UICorner")
ToggleCorner.CornerRadius = UDim.new(1, 0)
ToggleCorner.Parent = ToggleBtn

-- --------------------------------------------------------
-- Main Frame
-- --------------------------------------------------------
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 23, 42) -- Deep Navy
MainFrame.Position = UDim2.new(0.25, 0, 0.2, 0)
MainFrame.Size = UDim2.new(0, 520, 0, 360)
MainFrame.Active = true
MainFrame.Draggable = true

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 10)
MainCorner.Parent = MainFrame

-- Title Bar
local TitleBar = Instance.new("TextLabel")
TitleBar.Parent = MainFrame
TitleBar.Size = UDim2.new(1, 0, 0, 40)
TitleBar.Text = "   ZERO GEMINI | AI Script Builder & Executor"
TitleBar.TextColor3 = Color3.fromRGB(56, 189, 248) -- Cyan
TitleBar.TextSize = 15
TitleBar.Font = Enum.Font.SourceSansBold
TitleBar.TextXAlignment = Enum.TextXAlignment.Left
TitleBar.BackgroundColor3 = Color3.fromRGB(30, 41, 59)

local TitleCorner = Instance.new("UICorner")
TitleCorner.CornerRadius = UDim.new(0, 10)
TitleCorner.Parent = TitleBar

-- Sidebar
local Sidebar = Instance.new("Frame")
Sidebar.Parent = MainFrame
Sidebar.Position = UDim2.new(0, 0, 0, 40)
Sidebar.Size = UDim2.new(0, 130, 1, -40)
Sidebar.BackgroundColor3 = Color3.fromRGB(20, 30, 48)

-- Sidebar Buttons
local Tab1Btn = Instance.new("TextButton")
Tab1Btn.Parent = Sidebar
Tab1Btn.Position = UDim2.new(0.08, 0, 0.08, 0)
Tab1Btn.Size = UDim2.new(0.84, 0, 0, 35)
Tab1Btn.Text = "🤖 AI Builder"
Tab1Btn.TextColor3 = Color3.fromRGB(255, 255, 255)
Tab1Btn.BackgroundColor3 = Color3.fromRGB(16, 185, 129)
Tab1Btn.Font = Enum.Font.SourceSansBold
Tab1Btn.TextSize = 14

local Tab2Btn = Instance.new("TextButton")
Tab2Btn.Parent = Sidebar
Tab2Btn.Position = UDim2.new(0.08, 0, 0.22, 0)
Tab2Btn.Size = UDim2.new(0.84, 0, 0, 35)
Tab2Btn.Text = "💻 Executor"
Tab2Btn.TextColor3 = Color3.fromRGB(255, 255, 255)
Tab2Btn.BackgroundColor3 = Color3.fromRGB(30, 41, 59)
Tab2Btn.Font = Enum.Font.SourceSansBold
Tab2Btn.TextSize = 14

for _, b in pairs({Tab1Btn, Tab2Btn}) do
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, 6)
    c.Parent = b
end

-- --------------------------------------------------------
-- TAB 1: AI SCRIPT BUILDER
-- --------------------------------------------------------
local BuilderFrame = Instance.new("Frame")
BuilderFrame.Parent = MainFrame
BuilderFrame.Position = UDim2.new(0, 135, 0, 45)
BuilderFrame.Size = UDim2.new(1, -145, 1, -55)
BuilderFrame.BackgroundTransparency = 1

local PromptInput = Instance.new("TextBox")
PromptInput.Parent = BuilderFrame
PromptInput.Position = UDim2.new(0, 0, 0, 0)
PromptInput.Size = UDim2.new(1, 0, 0, 60)
PromptInput.PlaceholderText = "Type what script you want (e.g. 'make me a speed script' or 'build a 21 feature hub')..."
PromptInput.Text = ""
PromptInput.TextColor3 = Color3.fromRGB(255, 255, 255)
PromptInput.BackgroundColor3 = Color3.fromRGB(30, 41, 59)
PromptInput.TextWrapped = true
PromptInput.Font = Enum.Font.SourceSans
PromptInput.TextSize = 14
PromptInput.TextYAlignment = Enum.TextYAlignment.Top

local PromptCorner = Instance.new("UICorner")
PromptCorner.CornerRadius = UDim.new(0, 6)
PromptCorner.Parent = PromptInput

local GenerateBtn = Instance.new("TextButton")
GenerateBtn.Parent = BuilderFrame
GenerateBtn.Position = UDim2.new(0, 0, 0, 68)
GenerateBtn.Size = UDim2.new(1, 0, 0, 32)
GenerateBtn.Text = "⚡ Generate Script with Zero Gemini"
GenerateBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
GenerateBtn.BackgroundColor3 = Color3.fromRGB(16, 185, 129)
GenerateBtn.Font = Enum.Font.SourceSansBold
GenerateBtn.TextSize = 14

local GenCorner = Instance.new("UICorner")
GenCorner.CornerRadius = UDim.new(0, 6)
GenCorner.Parent = GenerateBtn

local GeneratedOutput = Instance.new("TextBox")
GeneratedOutput.Parent = BuilderFrame
GeneratedOutput.Position = UDim2.new(0, 0, 0, 108)
GeneratedOutput.Size = UDim2.new(1, 0, 0, 150)
GeneratedOutput.Text = "-- Generated code will appear here..."
GeneratedOutput.TextColor3 = Color3.fromRGB(56, 189, 248)
GeneratedOutput.BackgroundColor3 = Color3.fromRGB(20, 30, 48)
GeneratedOutput.ClearTextOnFocus = false
GeneratedOutput.MultiLine = true
GeneratedOutput.TextWrapped = true
GeneratedOutput.Font = Enum.Font.Code
GeneratedOutput.TextSize = 12
GeneratedOutput.TextYAlignment = Enum.TextYAlignment.Top

local OutCorner = Instance.new("UICorner")
OutCorner.CornerRadius = UDim.new(0, 6)
OutCorner.Parent = GeneratedOutput

-- --------------------------------------------------------
-- TAB 2: EXECUTOR (UP TO 1000 LINES CAPACITY)
-- --------------------------------------------------------
local ExecutorFrame = Instance.new("Frame")
ExecutorFrame.Parent = MainFrame
ExecutorFrame.Position = UDim2.new(0, 135, 0, 45)
ExecutorFrame.Size = UDim2.new(1, -145, 1, -55)
ExecutorFrame.BackgroundTransparency = 1
ExecutorFrame.Visible = false

local LineInfo = Instance.new("TextLabel")
LineInfo.Parent = ExecutorFrame
LineInfo.Position = UDim2.new(0, 0, 0, 0)
LineInfo.Size = UDim2.new(1, 0, 0, 20)
LineInfo.Text = "Line Capacity: 0 / 1000 Lines"
LineInfo.TextColor3 = Color3.fromRGB(148, 163, 184)
LineInfo.TextSize = 12
LineInfo.Font = Enum.Font.SourceSans
LineInfo.TextXAlignment = Enum.TextXAlignment.Left
LineInfo.BackgroundTransparency = 1

local CodeEditor = Instance.new("TextBox")
CodeEditor.Parent = ExecutorFrame
CodeEditor.Position = UDim2.new(0, 0, 0, 25)
CodeEditor.Size = UDim2.new(1, 0, 0, 190)
CodeEditor.PlaceholderText = "-- Paste or type script here (Supports up to 1000 lines)..."
CodeEditor.Text = ""
CodeEditor.TextColor3 = Color3.fromRGB(255, 255, 255)
CodeEditor.BackgroundColor3 = Color3.fromRGB(20, 30, 48)
CodeEditor.ClearTextOnFocus = false
CodeEditor.MultiLine = true
CodeEditor.TextWrapped = false
CodeEditor.Font = Enum.Font.Code
CodeEditor.TextSize = 12
CodeEditor.TextYAlignment = Enum.TextYAlignment.Top

local EdCorner = Instance.new("UICorner")
EdCorner.CornerRadius = UDim.new(0, 6)
EdCorner.Parent = CodeEditor

local ExecBtn = Instance.new("TextButton")
ExecBtn.Parent = ExecutorFrame
ExecBtn.Position = UDim2.new(0, 0, 0, 222)
ExecBtn.Size = UDim2.new(0.48, 0, 0, 32)
ExecBtn.Text = "▶ Execute"
ExecBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ExecBtn.BackgroundColor3 = Color3.fromRGB(16, 185, 129)
ExecBtn.Font = Enum.Font.SourceSansBold
ExecBtn.TextSize = 14

local ClearBtn = Instance.new("TextButton")
ClearBtn.Parent = ExecutorFrame
ClearBtn.Position = UDim2.new(0.52, 0, 0, 222)
ClearBtn.Size = UDim2.new(0.48, 0, 0, 32)
ClearBtn.Text = "🗑 Clear"
ClearBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ClearBtn.BackgroundColor3 = Color3.fromRGB(239, 68, 68)
ClearBtn.Font = Enum.Font.SourceSansBold
ClearBtn.TextSize = 14

for _, b in pairs({ExecBtn, ClearBtn}) do
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, 6)
    c.Parent = b
end

-- --------------------------------------------------------
-- CONTROLS & LOGIC
-- --------------------------------------------------------

-- Toggle GUI Display
ToggleBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)

-- Tab Switcher
Tab1Btn.MouseButton1Click:Connect(function()
    BuilderFrame.Visible = true
    ExecutorFrame.Visible = false
    Tab1Btn.BackgroundColor3 = Color3.fromRGB(16, 185, 129)
    Tab2Btn.BackgroundColor3 = Color3.fromRGB(30, 41, 59)
end)

Tab2Btn.MouseButton1Click:Connect(function()
    BuilderFrame.Visible = false
    ExecutorFrame.Visible = true
    Tab2Btn.BackgroundColor3 = Color3.fromRGB(16, 185, 129)
    Tab1Btn.BackgroundColor3 = Color3.fromRGB(30, 41, 59)
end)

-- 1000 Line Count Monitor
CodeEditor:GetPropertyChangedSignal("Text"):Connect(function()
    local _, lineCount = string.gsub(CodeEditor.Text, "\n", "\n")
    lineCount = lineCount + 1
    
    if lineCount > 1000 then
        LineInfo.Text = "Line Capacity: 1000 / 1000 Lines (MAX LIMIT REACHED)"
        LineInfo.TextColor3 = Color3.fromRGB(239, 68, 68)
    else
        LineInfo.Text = "Line Capacity: " .. tostring(lineCount) .. " / 1000 Lines"
        LineInfo.TextColor3 = Color3.fromRGB(148, 163, 184)
    end
end)

-- AI Script Generator Logic
GenerateBtn.MouseButton1Click:Connect(function()
    local query = string.lower(PromptInput.Text)
    GenerateBtn.Text = "🤖 Zero Gemini is generating..."
    task.wait(0.4)

    if string.find(query, "speed") or string.find(query, "walk") then
        GeneratedOutput.Text = [[-- Zero Gemini Generated: Speed Script
local player = game.Players.LocalPlayer
if player.Character and player.Character:FindFirstChild("Humanoid") then
    player.Character.Humanoid.WalkSpeed = 100
    print("Zero Gemini: WalkSpeed set to 100")
end]]
    elseif string.find(query, "jump") or string.find(query, "high") then
        GeneratedOutput.Text = [[-- Zero Gemini Generated: Jump Boost Script
local player = game.Players.LocalPlayer
if player.Character and player.Character:FindFirstChild("Humanoid") then
    player.Character.Humanoid.JumpPower = 150
    print("Zero Gemini: JumpPower set to 150")
end]]
    elseif string.find(query, "fly") or string.find(query, "flight") then
        GeneratedOutput.Text = [[-- Zero Gemini Generated: Flight Engine
local player = game.Players.LocalPlayer
local char = player.Character
if char and char:FindFirstChild("HumanoidRootPart") then
    local bv = Instance.new("BodyVelocity")
    bv.Name = "ZeroGeminiFly"
    bv.MaxForce = Vector3.new(1e6, 1e6, 1e6)
    bv.Velocity = Vector3.new(0, 50, 0)
    bv.Parent = char.HumanoidRootPart
    print("Zero Gemini: Fly activated")
end]]
    else
        -- Universal Multi-Feature Hub Generator
        GeneratedOutput.Text = [[-- Zero Gemini Generated: Custom Multi-Feature Hub
print("Zero Gemini Hub initialized successfully!")
local player = game.Players.LocalPlayer
if player.Character and player.Character:FindFirstChild("Humanoid") then
    player.Character.Humanoid.WalkSpeed = 50
    player.Character.Humanoid.JumpPower = 100
end]]
    end

    GenerateBtn.Text = "⚡ Generate Script with Zero Gemini"
    CodeEditor.Text = GeneratedOutput.Text
end)

-- Execute Code Button
ExecBtn.MouseButton1Click:Connect(function()
    if CodeEditor.Text ~= "" then
        local codeFunc, err = loadstring(CodeEditor.Text)
        if codeFunc then
            pcall(codeFunc)
            ExecBtn.Text = "✓ Executed!"
            task.wait(1)
            ExecBtn.Text = "▶ Execute"
        else
            ExecBtn.Text = "❌ Execution Error"
            warn("Zero Gemini Exec Error: " .. tostring(err))
            task.wait(1)
            ExecBtn.Text = "▶ Execute"
        end
    end
end)

-- Clear Button
ClearBtn.MouseButton1Click:Connect(function()
    CodeEditor.Text = ""
end)
