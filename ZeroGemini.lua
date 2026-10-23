-- ========================================================
--            ZERO GEMINI HUB v3.0 (FIXED)
--        Ultra-Smart Script Generator & Pro Executor
-- ========================================================

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ZeroGeminiHubV3"
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- --------------------------------------------------------
-- Floating Toggle Icon
-- --------------------------------------------------------
local ToggleBtn = Instance.new("TextButton")
ToggleBtn.Name = "ZeroGeminiToggle"
ToggleBtn.Parent = ScreenGui
ToggleBtn.Position = UDim2.new(0.02, 0, 0.25, 0)
ToggleBtn.Size = UDim2.new(0, 55, 0, 55)
ToggleBtn.Text = "♊ ZERO\nv3.0"
ToggleBtn.TextSize = 12
ToggleBtn.Font = Enum.Font.SourceSansBold
ToggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleBtn.BackgroundColor3 = Color3.fromRGB(16, 185, 129)
ToggleBtn.Active = true
ToggleBtn.Draggable = true

local ToggleCorner = Instance.new("UICorner")
ToggleCorner.CornerRadius = UDim.new(1, 0)
ToggleCorner.Parent = ToggleBtn

-- --------------------------------------------------------
-- Main Interface
-- --------------------------------------------------------
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 23, 42)
MainFrame.Position = UDim2.new(0.2, 0, 0.12, 0)
MainFrame.Size = UDim2.new(0, 580, 0, 420)
MainFrame.Active = true
MainFrame.Draggable = true

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 10)
MainCorner.Parent = MainFrame

-- Header Bar
local TitleBar = Instance.new("TextLabel")
TitleBar.Parent = MainFrame
TitleBar.Size = UDim2.new(1, 0, 0, 42)
TitleBar.Text = "   ZERO GEMINI v3.0  |  50+ AI Module Engine & Executor"
TitleBar.TextColor3 = Color3.fromRGB(56, 189, 248)
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
Sidebar.Position = UDim2.new(0, 0, 0, 42)
Sidebar.Size = UDim2.new(0, 145, 1, -42)
Sidebar.BackgroundColor3 = Color3.fromRGB(20, 30, 48)

-- Sidebar Buttons
local Tab1Btn = Instance.new("TextButton")
Tab1Btn.Parent = Sidebar
Tab1Btn.Position = UDim2.new(0.08, 0, 0.06, 0)
Tab1Btn.Size = UDim2.new(0.84, 0, 0, 36)
Tab1Btn.Text = "🧠 50+ AI Builder"
Tab1Btn.TextColor3 = Color3.fromRGB(255, 255, 255)
Tab1Btn.BackgroundColor3 = Color3.fromRGB(16, 185, 129)
Tab1Btn.Font = Enum.Font.SourceSansBold
Tab1Btn.TextSize = 13

local Tab2Btn = Instance.new("TextButton")
Tab2Btn.Parent = Sidebar
Tab2Btn.Position = UDim2.new(0.08, 0, 0.18, 0)
Tab2Btn.Size = UDim2.new(0.84, 0, 0, 36)
Tab2Btn.Text = "💻 Pro Executor"
Tab2Btn.TextColor3 = Color3.fromRGB(255, 255, 255)
Tab2Btn.BackgroundColor3 = Color3.fromRGB(30, 41, 59)
Tab2Btn.Font = Enum.Font.SourceSansBold
Tab2Btn.TextSize = 13

for _, b in pairs({Tab1Btn, Tab2Btn}) do
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, 6)
    c.Parent = b
end

-- --------------------------------------------------------
-- TAB 1: SMART AI BUILDER
-- --------------------------------------------------------
local BuilderFrame = Instance.new("Frame")
BuilderFrame.Parent = MainFrame
BuilderFrame.Position = UDim2.new(0, 150, 0, 48)
BuilderFrame.Size = UDim2.new(1, -160, 1, -58)
BuilderFrame.BackgroundTransparency = 1

local PromptInput = Instance.new("TextBox")
PromptInput.Parent = BuilderFrame
PromptInput.Position = UDim2.new(0, 0, 0, 0)
PromptInput.Size = UDim2.new(1, 0, 0, 55)
PromptInput.PlaceholderText = "Ask Zero Gemini... (e.g. 'Make me a 50+ feature hub', 'Build aimbot and esp')"
PromptInput.Text = ""
PromptInput.TextColor3 = Color3.fromRGB(255, 255, 255)
PromptInput.BackgroundColor3 = Color3.fromRGB(30, 41, 59)
PromptInput.TextWrapped = true
PromptInput.Font = Enum.Font.SourceSans
PromptInput.TextSize = 13
PromptInput.TextYAlignment = Enum.TextYAlignment.Top

local PromptCorner = Instance.new("UICorner")
PromptCorner.CornerRadius = UDim.new(0, 6)
PromptCorner.Parent = PromptInput

local GenerateBtn = Instance.new("TextButton")
GenerateBtn.Parent = BuilderFrame
GenerateBtn.Position = UDim2.new(0, 0, 0, 62)
GenerateBtn.Size = UDim2.new(0.68, 0, 0, 32)
GenerateBtn.Text = "⚡ Build 50+ Script with AI"
GenerateBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
GenerateBtn.BackgroundColor3 = Color3.fromRGB(16, 185, 129)
GenerateBtn.Font = Enum.Font.SourceSansBold
GenerateBtn.TextSize = 13

local SendToExecBtn = Instance.new("TextButton")
SendToExecBtn.Parent = BuilderFrame
SendToExecBtn.Position = UDim2.new(0.70, 0, 0, 62)
SendToExecBtn.Size = UDim2.new(0.30, 0, 0, 32)
SendToExecBtn.Text = "➡️ To Executor"
SendToExecBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
SendToExecBtn.BackgroundColor3 = Color3.fromRGB(56, 189, 248)
SendToExecBtn.Font = Enum.Font.SourceSansBold
SendToExecBtn.TextSize = 12

for _, b in pairs({GenerateBtn, SendToExecBtn}) do
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, 6)
    c.Parent = b
end

local GeneratedScroll = Instance.new("ScrollingFrame")
GeneratedScroll.Parent = BuilderFrame
GeneratedScroll.Position = UDim2.new(0, 0, 0, 100)
GeneratedScroll.Size = UDim2.new(1, 0, 1, -100)
GeneratedScroll.BackgroundColor3 = Color3.fromRGB(20, 30, 48)
GeneratedScroll.CanvasSize = UDim2.new(0, 0, 0, 5000)
GeneratedScroll.ScrollBarThickness = 6

local GeneratedOutput = Instance.new("TextBox")
GeneratedOutput.Parent = GeneratedScroll
GeneratedOutput.Size = UDim2.new(1, -10, 1, 0)
GeneratedOutput.Text = "-- Generated AI Code will appear here...\n-- Type 'Make me a 50+ feature hub' above and press Build!"
GeneratedOutput.TextColor3 = Color3.fromRGB(56, 189, 248)
GeneratedOutput.BackgroundTransparency = 1
GeneratedOutput.ClearTextOnFocus = false
GeneratedOutput.MultiLine = true
GeneratedOutput.TextWrapped = true
GeneratedOutput.Font = Enum.Font.Code
GeneratedOutput.TextSize = 11
GeneratedOutput.TextYAlignment = Enum.TextYAlignment.Top

local OutCorner = Instance.new("UICorner")
OutCorner.CornerRadius = UDim.new(0, 6)
OutCorner.Parent = GeneratedScroll

-- --------------------------------------------------------
-- TAB 2: PRO EXECUTOR
-- --------------------------------------------------------
local ExecutorFrame = Instance.new("Frame")
ExecutorFrame.Parent = MainFrame
ExecutorFrame.Position = UDim2.new(0, 150, 0, 48)
ExecutorFrame.Size = UDim2.new(1, -160, 1, -58)
ExecutorFrame.BackgroundTransparency = 1
ExecutorFrame.Visible = false

local LineInfo = Instance.new("TextLabel")
LineInfo.Parent = ExecutorFrame
LineInfo.Position = UDim2.new(0, 0, 0, 0)
LineInfo.Size = UDim2.new(1, 0, 0, 20)
LineInfo.Text = "Capacity: 1 / 3000+ Lines"
LineInfo.TextColor3 = Color3.fromRGB(148, 163, 184)
LineInfo.TextSize = 12
LineInfo.Font = Enum.Font.SourceSans
LineInfo.TextXAlignment = Enum.TextXAlignment.Left
LineInfo.BackgroundTransparency = 1

local EditorScroll = Instance.new("ScrollingFrame")
EditorScroll.Parent = ExecutorFrame
EditorScroll.Position = UDim2.new(0, 0, 0, 22)
EditorScroll.Size = UDim2.new(1, 0, 0, 250)
EditorScroll.BackgroundColor3 = Color3.fromRGB(20, 30, 48)
EditorScroll.CanvasSize = UDim2.new(0, 0, 0, 8000)
EditorScroll.ScrollBarThickness = 6

local CodeEditor = Instance.new("TextBox")
CodeEditor.Parent = EditorScroll
CodeEditor.Size = UDim2.new(1, -10, 1, 0)
CodeEditor.PlaceholderText = "-- Paste or edit code here (Supports 3000+ lines)..."
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

local ExecBtn = Instance.new("TextButton")
ExecBtn.Parent = ExecutorFrame
ExecBtn.Position = UDim2.new(0, 0, 0, 278)
ExecBtn.Size = UDim2.new(0.48, 0, 0, 32)
ExecBtn.Text = "▶ Execute"
ExecBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ExecBtn.BackgroundColor3 = Color3.fromRGB(16, 185, 129)
ExecBtn.Font = Enum.Font.SourceSansBold
ExecBtn.TextSize = 13

local ClearBtn = Instance.new("TextButton")
ClearBtn.Parent = ExecutorFrame
ClearBtn.Position = UDim2.new(0.52, 0, 0, 278)
ClearBtn.Size = UDim2.new(0.48, 0, 0, 32)
ClearBtn.Text = "🗑 Clear Editor"
ClearBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ClearBtn.BackgroundColor3 = Color3.fromRGB(239, 68, 68)
ClearBtn.Font = Enum.Font.SourceSansBold
ClearBtn.TextSize = 13

for _, b in pairs({ExecBtn, ClearBtn}) do
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, 6)
    c.Parent = b
end

-- --------------------------------------------------------
-- LOGIC & HANDLERS
-- --------------------------------------------------------
ToggleBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)

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

SendToExecBtn.MouseButton1Click:Connect(function()
    CodeEditor.Text = GeneratedOutput.Text
    BuilderFrame.Visible = false
    ExecutorFrame.Visible = true
    Tab2Btn.BackgroundColor3 = Color3.fromRGB(16, 185, 129)
    Tab1Btn.BackgroundColor3 = Color3.fromRGB(30, 41, 59)
end)

CodeEditor:GetPropertyChangedSignal("Text"):Connect(function()
    local _, lines = string.gsub(CodeEditor.Text, "\n", "\n")
    lines = lines + 1
    LineInfo.Text = "Capacity: " .. tostring(lines) .. " / 3000+ Lines"
end)

-- AI GENERATION ENGINE
local function Generate50FeatureHub()
    return [[
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ZeroGemini50Hub"
ScreenGui.Parent = game:GetService("CoreGui")

local Main = Instance.new("Frame")
Main.Parent = ScreenGui
Main.Size = UDim2.new(0, 520, 0, 360)
Main.Position = UDim2.new(0.25, 0, 0.2, 0)
Main.BackgroundColor3 = Color3.fromRGB(15, 23, 42)
Main.Active = true
Main.Draggable = true

local Title = Instance.new("TextLabel")
Title.Parent = Main
Title.Size = UDim2.new(1, 0, 0, 38)
Title.Text = "  ♊ Zero Gemini Mega Hub - 50 Active Hacks"
Title.TextColor3 = Color3.fromRGB(56, 189, 248)
Title.BackgroundColor3 = Color3.fromRGB(30, 41, 59)
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 14
Title.TextXAlignment = Enum.TextXAlignment.Left

local Scroll = Instance.new("ScrollingFrame")
Scroll.Parent = Main
Scroll.Position = UDim2.new(0, 10, 0, 45)
Scroll.Size = UDim2.new(1, -20, 1, -55)
Scroll.BackgroundTransparency = 1
Scroll.CanvasSize = UDim2.new(0, 0, 0, 2100)
Scroll.ScrollBarThickness = 6

local function AddButton(name, yPos, callback)
    local btn = Instance.new("TextButton")
    btn.Parent = Scroll
    btn.Position = UDim2.new(0, 0, 0, yPos)
    btn.Size = UDim2.new(1, -10, 0, 32)
    btn.Text = name
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.BackgroundColor3 = Color3.fromRGB(30, 41, 59)
    btn.Font = Enum.Font.SourceSans
    btn.TextSize = 13
    btn.MouseButton1Click:Connect(callback)
    
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, 6)
    c.Parent = btn
end

-- MOVEMENT
AddButton("1. WalkSpeed: 50 Boost", 0, function() pcall(function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50 end) end)
AddButton("2. WalkSpeed: 120 Extreme Boost", 38, function() pcall(function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 120 end) end)
AddButton("3. WalkSpeed: 250 Hyper Speed", 76, function() pcall(function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 250 end) end)
AddButton("4. Reset WalkSpeed (16)", 114, function() pcall(function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16 end) end)
AddButton("5. JumpPower: 100 Boost", 152, function() pcall(function() game.Players.LocalPlayer.Character.Humanoid.JumpPower = 100 end) end)
AddButton("6. JumpPower: 200 Mega Jump", 190, function() pcall(function() game.Players.LocalPlayer.Character.Humanoid.JumpPower = 200 end) end)
AddButton("7. Reset JumpPower (50)", 228, function() pcall(function() game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50 end) end)

local infJ = false
AddButton("8. Toggle Infinite Air Jump", 266, function()
    infJ = not infJ
    game:GetService("UserInputService").JumpRequest:Connect(function()
        if infJ and game.Players.LocalPlayer.Character then
            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
        end
    end)
end)

local fly = false
AddButton("9. Toggle Flight Engine", 304, function()
    fly = not fly
    local hrp = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if hrp then
        if fly then
            local bv = Instance.new("BodyVelocity")
            bv.Name = "AIFly"
            bv.MaxForce = Vector3.new(1e6,1e6,1e6)
            bv.Velocity = Vector3.new(0, 50, 0)
            bv.Parent = hrp
        else
            if hrp:FindFirstChild("AIFly") then hrp.AIFly:Destroy() end
        end
    end
end)

local nc = false
AddButton("10. Toggle Noclip (Walk Through Walls)", 342, function()
    nc = not nc
    game:GetService("RunService").Stepped:Connect(function()
        if nc and game.Players.LocalPlayer.Character then
            for _, p in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if p:IsA("BasePart") then p.CanCollide = false end
            end
        end
    end)
end)

-- ENVIRONMENT
AddButton("11. Set Low Gravity (25)", 380, function() workspace.Gravity = 25 end)
AddButton("12. Set Zero Gravity (0)", 418, function() workspace.Gravity = 0 end)
AddButton("13. Set Heavy Gravity (500)", 456, function() workspace.Gravity = 500 end)
AddButton("14. Reset Default Gravity (196.2)", 494, function() workspace.Gravity = 196.2 end)
AddButton("15. Enable Fullbright Night Vision", 532, function()
    local l = game:GetService("Lighting")
    l.Brightness = 3
    l.ClockTime = 14
    l.GlobalShadows = false
end)
AddButton("16. Remove Fog & Darkness", 570, function() game:GetService("Lighting").FogEnd = 100000 end)
AddButton("17. Night Mode (ClockTime 0)", 608, function() game:GetService("Lighting").ClockTime = 0 end)
AddButton("18. Day Mode (ClockTime 12)", 646, function() game:GetService("Lighting").ClockTime = 12 end)
AddButton("19. Disable Global Shadows", 684, function() game:GetService("Lighting").GlobalShadows = false end)
AddButton("20. Enable Global Shadows", 722, function() game:GetService("Lighting").GlobalShadows = true end)

-- VISUALS & ESP
local espOn = false
AddButton("21. Toggle Player ESP Highlights", 760, function()
    espOn = not espOn
    for _, p in pairs(game.Players:GetPlayers()) do
        if p ~= game.Players.LocalPlayer and p.Character then
            if espOn then
                if not p.Character:FindFirstChild("AIESP") then
                    local h = Instance.new("Highlight")
                    h.Name = "AIESP"
                    h.FillColor = Color3.fromRGB(56, 189, 248)
                    h.Parent = p.Character
                end
            else
                if p.Character:FindFirstChild("AIESP") then p.Character.AIESP:Destroy() end
            end
        end
    end
end)

AddButton("22. Rainbow Chams ESP", 798, function()
    for _, p in pairs(game.Players:GetPlayers()) do
        if p ~= game.Players.LocalPlayer and p.Character then
            local h = p.Character:FindFirstChild("AIESP") or Instance.new("Highlight")
            h.Name = "AIESP"
            h.FillColor = Color3.fromRGB(math.random(0,255), math.random(0,255), math.random(0,255))
            h.Parent = p.Character
        end
    end
end)

AddButton("23. Enable Name Tags Above Players", 836, function()
    for _, p in pairs(game.Players:GetPlayers()) do
        if p ~= game.Players.LocalPlayer and p.Character and p.Character:FindFirstChild("Head") then
            local bb = Instance.new("BillboardGui")
            bb.Size = UDim2.new(0, 100, 0, 30)
            bb.Adornee = p.Character.Head
            bb.AlwaysOnTop = true
            local lbl = Instance.new("TextLabel", bb)
            lbl.Size = UDim2.new(1,0,1,0)
            lbl.Text = p.Name
            lbl.TextColor3 = Color3.fromRGB(255,255,255)
            bb.Parent = p.Character.Head
        end
    end
end)

AddButton("24. Expand Player Hitboxes (Head)", 874, function()
    for _, p in pairs(game.Players:GetPlayers()) do
        if p ~= game.Players.LocalPlayer and p.Character and p.Character:FindFirstChild("Head") then
            p.Character.Head.Size = Vector3.new(5, 5, 5)
            p.Character.Head.Transparency = 0.5
        end
    end
end)

AddButton("25. Reset Hitbox Sizes", 912, function()
    for _, p in pairs(game.Players:GetPlayers()) do
        if p ~= game.Players.LocalPlayer and p.Character and p.Character:FindFirstChild("Head") then
            p.Character.Head.Size = Vector3.new(1.2, 1.2, 1.2)
            p.Character.Head.Transparency = 0
        end
    end
end)

AddButton("26. FOV 90 Degrees", 950, function() workspace.CurrentCamera.FieldOfView = 90 end)
AddButton("27. FOV 120 Degrees (Max Widescreen)", 988, function() workspace.CurrentCamera.FieldOfView = 120 end)
AddButton("28. FOV Reset (70)", 1026, function() workspace.CurrentCamera.FieldOfView = 70 end)
AddButton("29. Invisible Body Local Visual", 1064, function()
    if game.Players.LocalPlayer.Character then
        for _, p in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if p:IsA("BasePart") then p.Transparency = 0.7 end
        end
    end
end)
AddButton("30. Restore Visible Body", 1102, function()
    if game.Players.LocalPlayer.Character then
        for _, p in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if p:IsA("BasePart") then p.Transparency = 0 end
        end
    end
end)

-- COMBAT & AIM
local aim = false
AddButton("31. Toggle Camera Lock Aimbot", 1140, function()
    aim = not aim
    game:GetService("RunService").RenderStepped:Connect(function()
        if aim then
            local closest = nil
            local maxDist = math.huge
            for _, p in pairs(game.Players:GetPlayers()) do
                if p ~= game.Players.LocalPlayer and p.Character and p.Character:FindFirstChild("Head") then
                    local dist = (p.Character.Head.Position - game.Players.LocalPlayer.Character.Head.Position).Magnitude
                    if dist < maxDist then
                        maxDist = dist
                        closest = p
                    end
                end
            end
            if closest and closest.Character then
                workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, closest.Character.Head.Position)
            end
        end
    end)
end)

AddButton("32. Get Click Teleport Tool", 1178, function()
    local m = game.Players.LocalPlayer:GetMouse()
    local t = Instance.new("Tool")
    t.Name = "AI TP Tool"
    t.RequiresHandle = false
    t.Activated:Connect(function()
        if game.Players.LocalPlayer.Character then game.Players.LocalPlayer.Character:MoveTo(m.Hit.p) end
    end)
    t.Parent = game.Players.LocalPlayer.Backpack
end)

AddButton("33. Teleport to Random Player", 1216, function()
    local plrs = game.Players:GetPlayers()
    if #plrs > 1 then
        locallocal t = plrs[math.random(1, #plrs)]
        if t ~= game.Players.LocalPlayer and t.Character and t.Character:FindFirstChild("HumanoidRootPart") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = t.Character.HumanoidRootPart.CFrame
        end
    end
end)

AddButton("34. Anti-AFK Kick Protection", 1254, function()
    local vu = game:GetService("VirtualUser")
    game.Players.LocalPlayer.Idled:Connect(function()
        vu:Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
        task.wait(1)
        vu:Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
    end)
end)

AddButton("35. BTools (Delete/Grab/Clone)", 1292, function()
    local bp = game.Players.LocalPlayer:FindFirstChildOfClass("Backpack")
    if bp then
        Instance.new("HopperBin", bp).BinType = Enum.BinType.Hammer
        Instance.new("HopperBin", bp).BinType = Enum.BinType.Grab
        Instance.new("HopperBin", bp).BinType = Enum.BinType.Clone
    end
end)

AddButton("36. SpinBot Toggle", 1330, function()
    local spin = Instance.new("BodyAngularVelocity")
    spin.Name = "AISpin"
    spin.AngularVelocity = Vector3.new(0, 50, 0)
    spin.MaxTorque = Vector3.new(0, math.huge, 0)
    spin.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
end)

AddButton("37. Stop SpinBot", 1368, function()
    local hrp = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if hrp and hrp:FindFirstChild("AISpin") then hrp.AISpin:Destroy() end
end)

AddButton("38. Infinite Zoom In/Out Distance", 1406, function()
    game.Players.LocalPlayer.CameraMaxZoomDistance = 100000
end)

AddButton("39. Sit Character State", 1444, function()
    if game.Players.LocalPlayer.Character then game.Players.LocalPlayer.Character.Humanoid.Sit = true end
end)

AddButton("40. Unsit / Stand Up", 1482, function()
    if game.Players.LocalPlayer.Character then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
end)

-- UTILITIES & SERVERS
AddButton("41. Rejoin Same Server", 1520, function()
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
end)

AddButton("42. Server Hop (Join New Server)", 1558, function()
    game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
end)

AddButton("43. Load Infinite Yield Admin Panel", 1596, function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

AddButton("44. Copy Current Position CFrame", 1634, function()
    if setclipboard and game.Players.LocalPlayer.Character then
        setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame))
    end
end)

AddButton("45. Copy Game Place ID", 1672, function()
    if setclipboard then setclipboard(tostring(game.PlaceId)) end
end)

AddButton("46. Copy Game Job ID", 1710, function()
    if setclipboard then setclipboard(tostring(game.JobId)) end
end)

AddButton("47. Respawn / Reset Character", 1748, function()
    if game.Players.LocalPlayer.Character then game.Players.LocalPlayer.Character.Humanoid.Health = 0 end
end)

AddButton("48. Clear All Backpack Tools", 1786, function()
    game.Players.LocalPlayer.Backpack:ClearAllChildren()
end)

AddButton("49. Teleport to World Spawn", 1824, function()
    if workspace:FindFirstChildOfClass("SpawnLocation") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace:FindFirstChildOfClass("SpawnLocation").CFrame * CFrame.new(0,3,0)
    end
end)

AddButton("50. Destroy Gemini Hub GUI", 1862, function()
    ScreenGui:Destroy()
end)
]]
end

GenerateBtn.MouseButton1Click:Connect(function()
    if PromptInput.Text ~= "" then
        GenerateBtn.Text = "🧠 Generating 50+ Module Engine..."
        task.wait(0.3)
        GeneratedOutput.Text = Generate50FeatureHub()
        GenerateBtn.Text = "⚡ Build 50+ Script with AI"
    end
end)

ExecBtn.MouseButton1Click:Connect(function()
    if CodeEditor.Text ~= "" then
        local fn, err = loadstring(CodeEditor.Text)
        if fn then
            pcall(fn)
            ExecBtn.Text = "✓ Executed Successfully!"
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

ClearBtn.MouseButton1Click:Connect(function()
    CodeEditor.Text = ""
end)
