-- ========================================================
--               DELTA EXECUTOR 2.0 (MEGA 20K)
-- ========================================================

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "DeltaExecutor2"
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- --------------------------------------------------------
-- Draggable Floating Logo Icon (Uses Provided Delta Logo)
-- --------------------------------------------------------
local ToggleBtn = Instance.new("ImageButton")
ToggleBtn.Name = "DeltaLogoToggle"
ToggleBtn.Parent = ScreenGui
ToggleBtn.Position = UDim2.new(0.02, 0, 0.25, 0)
ToggleBtn.Size = UDim2.new(0, 55, 0, 55)
ToggleBtn.Image = "rbxassetid://18566144863" -- Mapped via provided Delta logo asset
ToggleBtn.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
ToggleBtn.Active = true
ToggleBtn.Draggable = true

local ToggleCorner = Instance.new("UICorner")
ToggleCorner.CornerRadius = UDim.new(1, 0)
ToggleCorner.Parent = ToggleBtn

local ToggleStroke = Instance.new("UIStroke")
ToggleStroke.Color = Color3.fromRGB(168, 85, 247) -- Purple Theme Glow
ToggleStroke.Thickness = 2
ToggleStroke.Parent = ToggleBtn

-- --------------------------------------------------------
-- Main Interface Frame
-- --------------------------------------------------------
MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(13, 13, 18)
MainFrame.Position = UDim2.new(0.25, 0, 0.15, 0)
MainFrame.Size = UDim2.new(0, 540, 0, 410)
MainFrame.Active = true
MainFrame.Draggable = true

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 12)
MainCorner.Parent = MainFrame

local MainStroke = Instance.new("UIStroke")
MainStroke.Color = Color3.fromRGB(147, 51, 234)
MainStroke.Thickness = 1.5
MainStroke.Parent = MainFrame

-- --------------------------------------------------------
-- Header with Logo Picture & Title
-- --------------------------------------------------------
local TopHeader = Instance.new("Frame")
TopHeader.Parent = MainFrame
TopHeader.Size = UDim2.new(1, 0, 0, 50)
TopHeader.BackgroundColor3 = Color3.fromRGB(24, 24, 35)
TopHeader.BorderSizePixel = 0

local HeaderCorner = Instance.new("UICorner")
HeaderCorner.CornerRadius = UDim.new(0, 12)
HeaderCorner.Parent = TopHeader

local HeaderLogo = Instance.new("ImageLabel")
HeaderLogo.Parent = TopHeader
HeaderLogo.Position = UDim2.new(0, 10, 0, 5)
HeaderLogo.Size = UDim2.new(0, 40, 0, 40)
HeaderLogo.Image = "rbxassetid://18566144863"
HeaderLogo.BackgroundTransparency = 1

local HeaderTitle = Instance.new("TextLabel")
HeaderTitle.Parent = TopHeader
HeaderTitle.Position = UDim2.new(0, 60, 0, 0)
HeaderTitle.Size = UDim2.new(0.8, 0, 1, 0)
HeaderTitle.Text = "DEELTA EXECUTOR 2.0"
HeaderTitle.TextColor3 = Color3.fromRGB(216, 180, 254) -- Light Purple/White
HeaderTitle.TextSize = 16
HeaderTitle.Font = Enum.Font.SourceSansBold
HeaderTitle.TextXAlignment = Enum.TextXAlignment.Left
HeaderTitle.BackgroundTransparency = 1

-- --------------------------------------------------------
-- 20,000 Line Editor Container
-- --------------------------------------------------------
local ExecutorContent = Instance.new("Frame")
ExecutorContent.Parent = MainFrame
ExecutorContent.Position = UDim2.new(0.03, 0, 0, 60)
ExecutorContent.Size = UDim2.new(0.94, 0, 1, -70)
ExecutorContent.BackgroundTransparency = 1

local LineInfo = Instance.new("TextLabel")
LineInfo.Parent = ExecutorContent
LineInfo.Position = UDim2.new(0, 0, 0, 0)
LineInfo.Size = UDim2.new(1, 0, 0, 22)
LineInfo.Text = "Capacity: 1 / 20000 Lines"
LineInfo.TextColor3 = Color3.fromRGB(156, 163, 175)
LineInfo.TextSize = 12
LineInfo.Font = Enum.Font.SourceSans
LineInfo.TextXAlignment = Enum.TextXAlignment.Left
LineInfo.BackgroundTransparency = 1

local EditorScroll = Instance.new("ScrollingFrame")
EditorScroll.Parent = ExecutorContent
EditorScroll.Position = UDim2.new(0, 0, 0, 26)
EditorScroll.Size = UDim2.new(1, 0, 0, 280)
EditorScroll.BackgroundColor3 = Color3.fromRGB(18, 18, 26)
EditorScroll.CanvasSize = UDim2.new(0, 0, 0, 40000) -- Room for up to 20,000+ lines
EditorScroll.ScrollBarThickness = 6

local EditorCorner = Instance.new("UICorner")
EditorCorner.CornerRadius = UDim.new(0, 8)
EditorCorner.Parent = EditorScroll

local CodeEditor = Instance.new("TextBox")
CodeEditor.Parent = EditorScroll
CodeEditor.Size = UDim2.new(1, -10, 1, 0)
CodeEditor.PlaceholderText = "-- Paste or write your scripts here (Supports up to 20,000 lines)..."
CodeEditor.Text = ""
CodeEditor.TextColor3 = Color3.fromRGB(243, 244, 246)
CodeEditor.BackgroundTransparency = 1
CodeEditor.ClearTextOnFocus = false
CodeEditor.MultiLine = true
CodeEditor.TextWrapped = false
CodeEditor.Font = Enum.Font.Code
CodeEditor.TextSize = 11
CodeEditor.TextYAlignment = Enum.TextYAlignment.Top

-- --------------------------------------------------------
-- Action Buttons (Execute & Clear)
-- --------------------------------------------------------
local ExecBtn = Instance.new("TextButton")
ExecBtn.Parent = ExecutorContent
ExecBtn.Position = UDim2.new(0, 0, 0, 314)
ExecBtn.Size = UDim2.new(0.48, 0, 0, 36)
ExecBtn.Text = "▶ Execute"
ExecBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ExecBtn.BackgroundColor3 = Color3.fromRGB(147, 51, 234) -- Purple Theme Accent
ExecBtn.Font = Enum.Font.SourceSansBold
ExecBtn.TextSize = 14

local ClearBtn = Instance.new("TextButton")
ClearBtn.Parent = ExecutorContent
ClearBtn.Position = UDim2.new(0.52, 0, 0, 314)
ClearBtn.Size = UDim2.new(0.48, 0, 0, 36)
ClearBtn.Text = "🗑 Clear"
ClearBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ClearBtn.BackgroundColor3 = Color3.fromRGB(220, 38, 38) -- Red Accent
ClearBtn.Font = Enum.Font.SourceSansBold
ClearBtn.TextSize = 14

for _, b in pairs({ExecBtn, ClearBtn}) do
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 6)
    corner.Parent = b
end

-- --------------------------------------------------------
-- Logic & Event Handling
-- --------------------------------------------------------
ToggleBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)

CodeEditor:GetPropertyChangedSignal("Text"):Connect(function()
    local _, lines = string.gsub(CodeEditor.Text, "\n", "\n")
    lines = lines + 1
    LineInfo.Text = "Capacity: " .. tostring(lines) .. " / 20000 Lines"
    if lines > 20000 then
        LineInfo.TextColor3 = Color3.fromRGB(239, 68, 68)
    else
        LineInfo.TextColor3 = Color3.fromRGB(156, 163, 175)
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
            warn("Delta 2.0 Error: " .. tostring(err))
            task.wait(1)
            ExecBtn.Text = "▶ Execute"
        end
    end
end)

ClearBtn.MouseButton1Click:Connect(function()
    CodeEditor.Text = ""
end)
