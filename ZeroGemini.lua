-- ========================================================
--          ZERO GEMINI PRO EXECUTOR (10k CAPACITY)
-- ========================================================

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ZeroGeminiExecutor"
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Floating Toggle Icon
local ToggleBtn = Instance.new("TextButton")
ToggleBtn.Name = "ZeroGeminiToggle"
ToggleBtn.Parent = ScreenGui
ToggleBtn.Position = UDim2.new(0.02, 0, 0.25, 0)
ToggleBtn.Size = UDim2.new(0, 50, 0, 50)
ToggleBtn.Text = "♊ ZERO"
ToggleBtn.TextSize = 11
ToggleBtn.Font = Enum.Font.SourceSansBold
ToggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleBtn.BackgroundColor3 = Color3.fromRGB(16, 185, 129)
ToggleBtn.Active = true
ToggleBtn.Draggable = true

local ToggleCorner = Instance.new("UICorner")
ToggleCorner.CornerRadius = UDim.new(1, 0)
ToggleCorner.Parent = ToggleBtn

-- Main Interface Frame
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 23, 42)
MainFrame.Position = UDim2.new(0.25, 0, 0.2, 0)
MainFrame.Size = UDim2.new(0, 520, 0, 360)
MainFrame.Active = true
MainFrame.Draggable = true

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 10)
MainCorner.Parent = MainFrame

-- Header Bar
local TitleBar = Instance.new("TextLabel")
TitleBar.Parent = MainFrame
TitleBar.Size = UDim2.new(1, 0, 0, 40)
TitleBar.Text = "   ZERO GEMINI EXECUTOR  |  10,000 Line Capacity"
TitleBar.TextColor3 = Color3.fromRGB(56, 189, 248)
TitleBar.TextSize = 15
TitleBar.Font = Enum.Font.SourceSansBold
TitleBar.TextXAlignment = Enum.TextXAlignment.Left
TitleBar.BackgroundColor3 = Color3.fromRGB(30, 41, 59)

local TitleCorner = Instance.new("UICorner")
TitleCorner.CornerRadius = UDim.new(0, 10)
TitleCorner.Parent = TitleBar

-- Executor Content Frame
local ExecutorFrame = Instance.new("Frame")
ExecutorFrame.Parent = MainFrame
ExecutorFrame.Position = UDim2.new(0.03, 0, 0, 50)
ExecutorFrame.Size = UDim2.new(0.94, 0, 1, -60)
ExecutorFrame.BackgroundTransparency = 1

local LineInfo = Instance.new("TextLabel")
LineInfo.Parent = ExecutorFrame
LineInfo.Position = UDim2.new(0, 0, 0, 0)
LineInfo.Size = UDim2.new(1, 0, 0, 20)
LineInfo.Text = "Capacity: 1 / 10000 Lines"
LineInfo.TextColor3 = Color3.fromRGB(148, 163, 184)
LineInfo.TextSize = 12
LineInfo.Font = Enum.Font.SourceSans
LineInfo.TextXAlignment = Enum.TextXAlignment.Left
LineInfo.BackgroundTransparency = 1

local EditorScroll = Instance.new("ScrollingFrame")
EditorScroll.Parent = ExecutorFrame
EditorScroll.Position = UDim2.new(0, 0, 0, 25)
EditorScroll.Size = UDim2.new(1, 0, 0, 235)
EditorScroll.BackgroundColor3 = Color3.fromRGB(20, 30, 48)
EditorScroll.CanvasSize = UDim2.new(0, 0, 0, 20000)
EditorScroll.ScrollBarThickness = 6

local CodeEditor = Instance.new("TextBox")
CodeEditor.Parent = EditorScroll
CodeEditor.Size = UDim2.new(1, -10, 1, 0)
CodeEditor.PlaceholderText = "-- Paste or write your scripts here (Supports up to 10,000 lines)..."
CodeEditor.Text = ""
CodeEditor.TextColor3 = Color3.fromRGB(255, 255, 255)
CodeEditor.BackgroundTransparency = 1
CodeEditor.ClearTextOnFocus = false
CodeEditor.MultiLine = true
CodeEditor.TextWrapped = false
CodeEditor.Font = Enum.Font.Code
CodeEditor.TextSize = 11
CodeEditor.TextYAlignment = Enum.TextYAlignment.Top

local EdCorner = Instance.new("UICorner")
EdCorner.CornerRadius = UDim.new(0, 6)
EdCorner.Parent = EditorScroll

-- Action Buttons
local ExecBtn = Instance.new("TextButton")
ExecBtn.Parent = ExecutorFrame
ExecBtn.Position = UDim2.new(0, 0, 0, 268)
ExecBtn.Size = UDim2.new(0.48, 0, 0, 34)
ExecBtn.Text = "▶ Execute"
ExecBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ExecBtn.BackgroundColor3 = Color3.fromRGB(16, 185, 129)
ExecBtn.Font = Enum.Font.SourceSansBold
ExecBtn.TextSize = 14

local ClearBtn = Instance.new("TextButton")
ClearBtn.Parent = ExecutorFrame
ClearBtn.Position = UDim2.new(0.52, 0, 0, 268)
ClearBtn.Size = UDim2.new(0.48, 0, 0, 34)
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

-- Logic & Event Handlers
ToggleBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)

CodeEditor:GetPropertyChangedSignal("Text"):Connect(function()
    local _, lines = string.gsub(CodeEditor.Text, "\n", "\n")
    lines = lines + 1
    LineInfo.Text = "Capacity: " .. tostring(lines) .. " / 10000 Lines"
    if lines > 10000 then
        LineInfo.TextColor3 = Color3.fromRGB(239, 68, 68)
    else
        LineInfo.TextColor3 = Color3.fromRGB(148, 163, 184)
    end
end)

ExecBtn.MouseButton1Click:Connect(function()
    if CodeEditor.Text ~= "" then
        local fn, err = loadstring(CodeEditor.Text)
        if fn then
            pcall(fn)
            ExecBtn.Text = "✓ Executed!"
            task.wait(1)
            ExecBtn.Text = "▶ Execute"
        else
            ExecBtn.Text = "❌ Error"
            warn("Zero Gemini Exec Error: " .. tostring(err))
            task.wait(1)
            ExecBtn.Text = "▶ Execute"
        end
    end
end)

ClearBtn.MouseButton1Click:Connect(function()
    CodeEditor.Text = ""
end)
