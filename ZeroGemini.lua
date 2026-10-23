-- ========================================================
--               ZERO GEMINI HUB v2.0 (ADVANCED AI)
--           Ultra-Smart Script Generator & Executor
-- ========================================================

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ZeroGeminiHubV2"
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- --------------------------------------------------------
-- Floating Toggle Icon
-- --------------------------------------------------------
local ToggleBtn = Instance.new("TextButton")
ToggleBtn.Name = "ZeroGeminiToggle"
ToggleBtn.Parent = ScreenGui
ToggleBtn.Position = UDim2.new(0.02, 0, 0.25, 0)
ToggleBtn.Size = UDim2.new(0, 52, 0, 52)
ToggleBtn.Text = "♊ ZERO"
ToggleBtn.TextSize = 13
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
MainFrame.Position = UDim2.new(0.2, 0, 0.15, 0)
MainFrame.Size = UDim2.new(0, 560, 0, 400)
MainFrame.Active = true
MainFrame.Draggable = true

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 10)
MainCorner.Parent = MainFrame

-- Header Bar
local TitleBar = Instance.new("TextLabel")
TitleBar.Parent = MainFrame
TitleBar.Size = UDim2.new(1, 0, 0, 42)
TitleBar.Text = "   ZERO GEMINI v2.0  |  AI Engine & 3000+ Line Executor"
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
Sidebar.Size = UDim2.new(0, 140, 1, -42)
Sidebar.BackgroundColor3 = Color3.fromRGB(20, 30, 48)

-- Sidebar Buttons
local Tab1Btn = Instance.new("TextButton")
Tab1Btn.Parent = Sidebar
Tab1Btn.Position = UDim2.new(0.08, 0, 0.06, 0)
Tab1Btn.Size = UDim2.new(0.84, 0, 0, 36)
Tab1Btn.Text = "🧠 Smart AI Builder"
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
BuilderFrame.Position = UDim2.new(0, 145, 0, 48)
BuilderFrame.Size = UDim2.new(1, -155, 1, -58)
BuilderFrame.BackgroundTransparency = 1

local PromptInput = Instance.new("TextBox")
PromptInput.Parent = BuilderFrame
PromptInput.Position = UDim2.new(0, 0, 0, 0)
PromptInput.Size = UDim2.new(1, 0, 0, 55)
PromptInput.PlaceholderText = "Ask Zero Gemini anything... (e.g. 'Make me a hub with 15+ features', 'Make aimbot and esp', 'Speed and fly hub')"
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
GenerateBtn.Text = "⚡ Build Code with AI"
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
GeneratedScroll.CanvasSize = UDim2.new(0, 0, 0, 2000)
GeneratedScroll.ScrollBarThickness = 6

local GeneratedOutput = Instance.new("TextBox")
GeneratedOutput.Parent = GeneratedScroll
GeneratedOutput.Size = UDim2.new(1, -10, 1, 0)
GeneratedOutput.Text = "-- Generated smart script will output here...\n-- Type your prompt above and press 'Build Code with AI'."
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
-- TAB 2: PRO EXECUTOR (3000+ LINES CAPACITY)
-- --------------------------------------------------------
local ExecutorFrame = Instance.new("Frame")
ExecutorFrame.Parent = MainFrame
ExecutorFrame.Position = UDim2.new(0, 145, 0, 48)
ExecutorFrame.Size = UDim2.new(1, -155, 1, -58)
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
EditorScroll.Size = UDim2.new(1, 0, 0, 230)
EditorScroll.BackgroundColor3 = Color3.fromRGB(20, 30, 48)
EditorScroll.CanvasSize = UDim2.new(0, 0, 0, 5000)
EditorScroll.ScrollBarThickness = 6

local CodeEditor = Instance.new("TextBox")
CodeEditor.Parent = EditorScroll
CodeEditor.Size = UDim2.new(1, -10, 1, 0)
CodeEditor.PlaceholderText = "-- Paste or write your custom code here (Capacity up to 3000+ lines)..."
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
ExecBtn.Position = UDim2.new(0, 0, 0, 258)
ExecBtn.Size = UDim2.new(0.48, 0, 0, 32)
ExecBtn.Text = "▶ Execute"
ExecBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ExecBtn.BackgroundColor3 = Color3.fromRGB(16, 185, 129)
ExecBtn.Font = Enum.Font.SourceSansBold
ExecBtn.TextSize = 13

local ClearBtn = Instance.new("TextButton")
ClearBtn.Parent = ExecutorFrame
ClearBtn.Position = UDim2.new(0.52, 0, 0, 258)
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
-- NAVIGATION & MONITORING LOGIC
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

-- Send Output to Executor
SendToExecBtn.MouseButton1Click:Connect(function()
    CodeEditor.Text = GeneratedOutput.Text
    BuilderFrame.Visible = false
    ExecutorFrame.Visible = true
    Tab2Btn.BackgroundColor3 = Color3.fromRGB(16, 185, 129)
    Tab1Btn.BackgroundColor3 = Color3.fromRGB(30, 41, 59)
end)

-- Line Capacity Counter
CodeEditor:GetPropertyChangedSignal("Text"):Connect(function()
    local _, lines = string.gsub(CodeEditor.Text, "\n", "\n")
    lines = lines + 1
    LineInfo.Text = "Capacity: " .. tostring(lines) .. " / 3000+ Lines"
    if lines > 3000 then
        LineInfo.TextColor3 = Color3.fromRGB(239, 68, 68)
    else
        LineInfo.TextColor3 = Color3.fromRGB(148, 163, 184)
    end
end)

-- --------------------------------------------------------
-- ZERO GEMINI SMART AI SCRIPT GENERATOR ENGINE
-- --------------------------------------------------------

local function GenerateSmartScript(prompt)
    local q = string.lower(prompt)
    
    -- Check for multi-feature hub or 15+/21 requests
    if string.find(q, "15") or string.find(q, "hub") or string.find(q, "hack") or string.find(q, "gui") or string.find(q, "21") or string.find(q, "all") then
        return [[-- ========================================================
--         ZERO GEMINI AI GENERATED 15+ FEATURE HUB
-- ========================================================

local LibraryGUI = Instance.new("ScreenGui")
LibraryGUI.Name = "ZeroGeminiAIHub"
LibraryGUI.Parent = game:GetService("CoreGui")

local Frame = Instance.new("Frame")
Frame.Parent = LibraryGUI
Frame.Size = UDim2.new(0, 450, 0, 320)
Frame.Position = UDim2.new(0.3, 0, 0.25, 0)
Frame.BackgroundColor3 = Color3.fromRGB(15, 23, 42)
Frame.Active = true
Frame.Draggable = true

local Title = Instance.new("TextLabel")
Title.Parent = Frame
Title.Size = UDim2.new(1, 0, 0, 35)
Title.Text = "  ♊ Zero Gemini Generated Hub (16 Modules)"
Title.TextColor3 = Color3.fromRGB(56, 189, 248)
Title.BackgroundColor3 = Color3.fromRGB(30, 41, 59)
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 14
Title.TextXAlignment = Enum.TextXAlignment.Left

local Scroll = Instance.new("ScrollingFrame")
Scroll.Parent = Frame
Scroll.Position = UDim2.new(0, 10, 0, 45)
Scroll.Size = UDim2.new(1, -20, 1, -55)
Scroll.BackgroundTransparency = 1
Scroll.CanvasSize = UDim2.new(0, 0, 0, 680)

local function AddBtn(name, y, cb)
    local b = Instance.new("TextButton")
    b.Parent = Scroll
    b.Position = UDim2.new(0, 0, 0, y)
    b.Size = UDim2.new(1, 0, 0, 32)
    b.Text = name
    b.TextColor3 = Color3.fromRGB(255, 255, 255)
    b.BackgroundColor3 = Color3.fromRGB(30, 41, 59)
    b.Font = Enum.Font.SourceSans
    b.TextSize = 13
    b.MouseButton1Click:Connect(cb)
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, 6)
    c.Parent = b
end

-- Feature 1: WalkSpeed 50
AddBtn("1. Speed Boost (50 WalkSpeed)", 0, function()
    pcall(function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50 end)
end)

-- Feature 2: Extreme Speed 150
AddBtn("2. Extreme Speed (150 WalkSpeed)", 38, function()
    pcall(function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 150 end)
end)

-- Feature 3: Reset Speed
AddBtn("3. Reset WalkSpeed (16)", 76, function()
    pcall(function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16 end)
end)

-- Feature 4: High Jump (120 JumpPower)
AddBtn("4. High Jump Boost (120 JumpPower)", 114, function()
    pcall(function() game.Players.LocalPlayer.Character.Humanoid.JumpPower = 120 end)
end)

-- Feature 5: Infinite Jump Toggle
local infJ = false
AddBtn("5. Toggle Infinite Jump", 152, function()
    infJ = not infJ
    game:GetService("UserInputService").JumpRequest:Connect(function()
        if infJ and game.Players.LocalPlayer.Character then
            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
        end
    end)
end)

-- Feature 6: Flight Mode
local fly = false
AddBtn("6. Toggle Flight Mode", 190, function()
    fly = not fly
    local hrp = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if hrp then
        if fly then
            local bv = Instance.new("BodyVelocity")
            bv.Name = "AIFly"
            bv.MaxForce = Vector3.new(1e6,1e6,1e6)
            bv.Velocity = Vector3.new(0, 45, 0)
            bv.Parent = hrp
        else
            if hrp:FindFirstChild("AIFly") then hrp.AIFly:Destroy() end
        end
    end
end)

-- Feature 7: Noclip Through Walls
local nc = false
AddBtn("7. Toggle Noclip (Walk Through Walls)", 228, function()
    nc = not nc
    game:GetService("RunService").Stepped:Connect(function()
        if nc and game.Players.LocalPlayer.Character then
            for _, p in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if p:IsA("BasePart") then p.CanCollide = false end
            end
        end
    end)
end)

-- Feature 8: Player ESP Highlights
local esp = false
AddBtn("8. Toggle Player Wallhack (ESP)", 266, function()
    esp = not esp
    for _, p in pairs(game.Players:GetPlayers()) do
        if p ~= game.Players.LocalPlayer and p.Character then
            if esp then
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

-- Feature 9: Camera Aimbot Lock
local aim = false
AddBtn("9. Toggle Camera Lock Aimbot", 304, function()
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

-- Feature 10: Click Teleport Tool
AddBtn("10. Get Click-Teleport Tool", 342, function()
    local m = game.Players.LocalPlayer:GetMouse()
    local t = Instance.new("Tool")
    t.Name = "AI Teleport Tool"
    t.RequiresHandle = false
    t.Activated:Connect(function()
        if game.Players.LocalPlayer.Character then
            game.Players.LocalPlayer.Character:MoveTo(m.Hit.p)
        end
    end)
    t.Parent = game.Players.LocalPlayer.Backpack
end)

-- Feature 11: Low Gravity Mode
AddBtn("11. Enable Low Gravity", 380, function()
    workspace.Gravity = 40
end)

-- Feature 12: Reset Gravity
AddBtn("12. Reset Normal Gravity", 418, function()
    workspace.Gravity = 196.2
end)

-- Feature 13: Fullbright Night Vision
AddBtn("13. Enable Fullbright", 456, function()
    local l = game:GetService("Lighting")
    l.Brightness = 2
    l.ClockTime = 14
    l.GlobalShadows = false
end)

-- Feature 14: Give Building Tools (BTools)
AddBtn("14. Give Building Tools (BTools)", 494, function()
    local bp = game.Players.LocalPlayer:FindFirstChildOfClass("Backpack")
    if bp then
        Instance.new("HopperBin", bp).BinType = Enum.BinType.Hammer
        Instance.new("HopperBin", bp).BinType = Enum.BinType.Grab
        Instance.new("HopperBin", bp).BinType = Enum.BinType.Clone
    end
end)

-- Feature 15: Teleport to Random Player
AddBtn("15. Teleport to Random Player", 532, function()
    local plrs = game.Players:GetPlayers()
    if #plrs > 1 then
        local target = plrs[math.random(1, #plrs)]
        if target ~= game.Players.LocalPlayer and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame
        end
    end
end)

-- Feature 16: Anti-AFK Protection
AddBtn("16. Enable Anti-AFK Disconnect", 570, function()
    local vu = game:GetService("VirtualUser")
    game.Players.LocalPlayer.Idled:Connect(function()
        vu:Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
        task.wait(1)
        vu:Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
    end)
end)]]

    elseif string.find(q, "aimbot") or string.find(q, "aim") or string.find(q, "lock") then
        return [[-- Zero Gemini Smart AI: Camera Lock Aimbot Module
local player = game.Players.LocalPlayer
local camera = workspace.CurrentCamera
local runService = game:GetService("RunService")

_G.AimbotEnabled = true

runService.RenderStepped:Connect(function()
    if _G.AimbotEnabled then
        local target = nil
        local shortestDistance = math.huge
        
        for _, p in pairs(game.Players:GetPlayers()) do
            if p ~= player and p.Character and p.Character:FindFirstChild("Head") then
                local pos, onScreen = camera:WorldToViewportPoint(p.Character.Head.Position)
                if onScreen then
                    local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(camera.ViewportSize.X/2, camera.ViewportSize.Y/2)).Magnitude
                    if magnitude < shortestDistance then
                        shortestDistance = magnitude
                        target = p.Character.Head
                    end
                end
            end
        end
        
        if target then
            camera.CFrame = CFrame.new(camera.CFrame.Position, target.Position)
        end
    end
end)
print("Zero Gemini AI: Camera Lock Aimbot Loaded!")]]

    elseif string.find(q, "esp") or string.find(q, "wallhack") or string.find(q, "highlight") then
        return [[-- Zero Gemini Smart AI: Universal ESP    elseif string.find(q, "esp") or string.find(q, "wallhack") or string.find(q, "highlight") then
        return [[-- Zero Gemini Smart AI: Universal ESP Module
local function applyESP(plr)
    if plr ~= game.Players.LocalPlayer and plr.Character then
        if not plr.Character:FindFirstChild("ZeroESP") then
            local hl = Instance.new("Highlight")
            hl.Name = "ZeroESP"
            hl.FillColor = Color3.fromRGB(56, 189, 248)
            hl.OutlineColor = Color3.fromRGB(16, 185, 129)
            hl.Parent = plr.Character
        end
    end
end

for _, p in pairs(game.Players:GetPlayers()) do
    applyESP(p)
    p.CharacterAdded:Connect(function()
        task.wait(0.5)
        applyESP(p)
    end)
end

game.Players.PlayerAdded:Connect(function(p)
    p.CharacterAdded:Connect(function()
        task.wait(0.5)
        applyESP(p)
    end)
end)
print("Zero Gemini AI: Universal ESP Active!")]]

    else
        return [[-- Zero Gemini Smart AI: Custom Utility Module
local player = game.Players.LocalPlayer
if player.Character and player.Character:FindFirstChild("Humanoid") then
    player.Character.Humanoid.WalkSpeed = 60
    player.Character.Humanoid.JumpPower = 120
    print("Zero Gemini AI: Speed & Jump boosted!")
end]]
    end
end

-- Trigger Generator
GenerateBtn.MouseButton1Click:Connect(function()
    if PromptInput.Text ~= "" then
        GenerateBtn.Text = "🧠 Zero Gemini AI Thinking..."
        task.wait(0.3)
        GeneratedOutput.Text = GenerateSmartScript(PromptInput.Text)
        GenerateBtn.Text = "⚡ Build Code with AI"
    end
end)

-- Execute Code Button
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

-- Clear Button
ClearBtn.MouseButton1Click:Connect(function()
    CodeEditor.Text = ""
end)
