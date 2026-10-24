-- ========================================================
--          DELTA EXECUTOR 2.0 (UNLIMITED CAPACITY)
-- ========================================================

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "DeltaExecutor2"
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Floating Logo Icon
local ToggleBtn = Instance.new("ImageButton")
ToggleBtn.Name = "DeltaLogoToggle"
ToggleBtn.Parent = ScreenGui
ToggleBtn.Position = UDim2.new(0.02, 0, 0.25, 0)
ToggleBtn.Size = UDim2.new(0, 55, 0, 55)
ToggleBtn.Image = "rbxassetid://18566144863"
ToggleBtn.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
ToggleBtn.Active = true
ToggleBtn.Draggable = true

local ToggleCorner = Instance.new("UICorner")
ToggleCorner.CornerRadius = UDim.new(1, 0)
ToggleCorner.Parent = ToggleBtn

local ToggleStroke = Instance.new("UIStroke")
ToggleStroke.Color = Color3.fromRGB(168, 85, 247)
ToggleStroke.Thickness = 2
ToggleStroke.Parent = ToggleBtn

-- Main Interface Frame
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(13, 13, 18)
MainFrame.Position = UDim2.new(0.25, 0, 0.12, 0)
MainFrame.Size = UDim2.new(0, 550, 0, 440)
MainFrame.Active = true
MainFrame.Draggable = true

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 12)
MainCorner.Parent = MainFrame

local MainStroke = Instance.new("UIStroke")
MainStroke.Color = Color3.fromRGB(147, 51, 234)
MainStroke.Thickness = 1.5
MainStroke.Parent = MainFrame

-- Top Header Bar
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
HeaderTitle.TextColor3 = Color3.fromRGB(216, 180, 254)
HeaderTitle.TextSize = 16
HeaderTitle.Font = Enum.Font.SourceSansBold
HeaderTitle.TextXAlignment = Enum.TextXAlignment.Left
HeaderTitle.BackgroundTransparency = 1

-- Editor Content Frame
local ExecutorContent = Instance.new("Frame")
ExecutorContent.Parent = MainFrame
ExecutorContent.Position = UDim2.new(0.03, 0, 0, 58)
ExecutorContent.Size = UDim2.new(0.94, 0, 1, -68)
ExecutorContent.BackgroundTransparency = 1

local LineInfo = Instance.new("TextLabel")
LineInfo.Parent = ExecutorContent
LineInfo.Position = UDim2.new(0, 0, 0, 0)
LineInfo.Size = UDim2.new(1, 0, 0, 20)
LineInfo.Text = "Capacity: 1 / Unlimited Lines"
LineInfo.TextColor3 = Color3.fromRGB(156, 163, 175)
LineInfo.TextSize = 12
LineInfo.Font = Enum.Font.SourceSans
LineInfo.TextXAlignment = Enum.TextXAlignment.Left
LineInfo.BackgroundTransparency = 1

-- File Name Input
local FileNameInput = Instance.new("TextBox")
FileNameInput.Parent = ExecutorContent
FileNameInput.Position = UDim2.new(0, 0, 0, 22)
FileNameInput.Size = UDim2.new(1, 0, 0, 28)
FileNameInput.PlaceholderText = "Enter file name to save/load... (e.g. script1.lua)"
FileNameInput.Text = "myscript.lua"
FileNameInput.TextColor3 = Color3.fromRGB(255, 255, 255)
FileNameInput.BackgroundColor3 = Color3.fromRGB(24, 24, 35)
FileNameInput.Font = Enum.Font.SourceSans
FileNameInput.TextSize = 13

local FileInputCorner = Instance.new("UICorner")
FileInputCorner.CornerRadius = UDim.new(0, 6)
FileInputCorner.Parent = FileNameInput

-- Scrolling Container for Large Text Capacity
local EditorScroll = Instance.new("ScrollingFrame")
EditorScroll.Parent = ExecutorContent
EditorScroll.Position = UDim2.new(0, 0, 0, 56)
EditorScroll.Size = UDim2.new(1, 0, 0, 260)
EditorScroll.BackgroundColor3 = Color3.fromRGB(18, 18, 26)
EditorScroll.CanvasSize = UDim2.new(0, 0, 0, 2000)
EditorScroll.ScrollBarThickness = 6

local EditorCorner = Instance.new("UICorner")
EditorCorner.CornerRadius = UDim.new(0, 8)
EditorCorner.Parent = EditorScroll

local CodeEditor = Instance.new("TextBox")
CodeEditor.Parent = EditorScroll
CodeEditor.Size = UDim2.new(1, -10, 1, 0)
CodeEditor.PlaceholderText = "-- Paste or write ultra-large scripts here..."
CodeEditor.Text = ""
CodeEditor.TextColor3 = Color3.fromRGB(243, 244, 246)
CodeEditor.BackgroundTransparency = 1
CodeEditor.ClearTextOnFocus = false
CodeEditor.MultiLine = true
CodeEditor.TextWrapped = false
CodeEditor.Font = Enum.Font.Code
CodeEditor.TextSize = 11
CodeEditor.TextYAlignment = Enum.TextYAlignment.Top

-- Action Buttons
local ExecBtn = Instance.new("TextButton")
ExecBtn.Parent = ExecutorContent
ExecBtn.Position = UDim2.new(0, 0, 0, 324)
ExecBtn.Size = UDim2.new(0.23, 0, 0, 36)
ExecBtn.Text = "▶ Execute"
ExecBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ExecBtn.BackgroundColor3 = Color3.fromRGB(147, 51, 234)
ExecBtn.Font = Enum.Font.SourceSansBold
ExecBtn.TextSize = 13

local ClearBtn = Instance.new("TextButton")
ClearBtn.Parent = ExecutorContent
ClearBtn.Position = UDim2.new(0.25, 0, 0, 324)
ClearBtn.Size = UDim2.new(0.23, 0, 0, 36)
ClearBtn.Text = "🗑 Clear"
ClearBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ClearBtn.BackgroundColor3 = Color3.fromRGB(220, 38, 38)
ClearBtn.Font = Enum.Font.SourceSansBold
ClearBtn.TextSize = 13

local SaveBtn = Instance.new("TextButton")
SaveBtn.Parent = ExecutorContent
SaveBtn.Position = UDim2.new(0.50, 0, 0, 324)
SaveBtn.Size = UDim2.new(0.23, 0, 0, 36)
SaveBtn.Text = "💾 Save"
SaveBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
SaveBtn.BackgroundColor3 = Color3.fromRGB(16, 185, 129)
SaveBtn.Font = Enum.Font.SourceSansBold
SaveBtn.TextSize = 13

local LoadBtn = Instance.new("TextButton")
LoadBtn.Parent = ExecutorContent
LoadBtn.Position = UDim2.new(0.75, 0, 0, 324)
LoadBtn.Size = UDim2.new(0.25, 0, 0, 36)
LoadBtn.Text = "📁 Load"
LoadBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
LoadBtn.BackgroundColor3 = Color3.fromRGB(56, 189, 248)
LoadBtn.Font = Enum.Font.SourceSansBold
LoadBtn.TextSize = 13

for _, b in pairs({ExecBtn, ClearBtn, SaveBtn, LoadBtn}) do
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 6)
    corner.Parent = b
end

-- Logic & Handlers
ToggleBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)

-- Dynamic Canvas Expansion for Unlimited Lines
CodeEditor:GetPropertyChangedSignal("Text"):Connect(function()
    local _, lines = string.gsub(CodeEditor.Text, "\n", "\n")
    lines = lines + 1
    LineInfo.Text = "Capacity: " .. tostring(lines) .. " Lines"
    
    -- Dynamically expand the scrollable area as lines are added
    local calculatedHeight = lines * 15
    if calculatedHeight > 2000 then
        EditorScroll.CanvasSize = UDim2.new(0, 0, 0, calculatedHeight)
    else
        EditorScroll.CanvasSize = UDim2.new(0, 0, 0, 2000)
    end
end)

ExecBtn.MouseButton1Click:Connect(function()
    if CodeEditor.Text ~= "" then
        local fn, err = loadstring(CodeEditor.Text)
        if fn then
            pcall(fn)
            ExecBtn.Text = "✓ Executed"
            task.wait(1)
            ExecBtn.Text = "▶ Execute"
        else
            ExecBtn.Text = "❌ Error"
            warn("Delta 2.0 Exec Error: " .. tostring(err))
            task.wait(1)
            ExecBtn.Text = "▶ Execute"
        end
    end
end)

ClearBtn.MouseButton1Click:Connect(function()
    CodeEditor.Text = ""
end)

SaveBtn.MouseButton1Click:Connect(function()
    local fileName = FileNameInput.Text
    if fileName ~= "" and writefile then
        writefile(fileName, CodeEditor.Text)
        SaveBtn.Text = "✓ Saved!"
        task.wait(1)
        SaveBtn.Text = "💾 Save"
    end
end)

LoadBtn.MouseButton1Click:Connect(function()
    local fileName = FileNameInput.Text
    if fileName ~= "" and readfile and isfile and isfile(fileName) then
        CodeEditor.Text = readfile(fileName)
        LoadBtn.Text = "✓ Loaded!"
        task.wait(1)
        LoadBtn.Text = "📁 Load"
    end
end)
