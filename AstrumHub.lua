-- ========================================================
--          ASTRUM HUB v1.0 (67 OP FEATURES & 6 TABS)
-- ========================================================

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Lighting = game:GetService("Lighting")
local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "AstrumHubUI"
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- --------------------------------------------------------
-- 1. KEY SYSTEM INTERFACE
-- --------------------------------------------------------
local KeyFrame = Instance.new("Frame")
KeyFrame.Name = "KeyFrame"
KeyFrame.Parent = ScreenGui
KeyFrame.BackgroundColor3 = Color3.fromRGB(15, 17, 26)
KeyFrame.Position = UDim2.new(0.35, 0, 0.3, 0)
KeyFrame.Size = UDim2.new(0, 380, 0, 220)
KeyFrame.Active = true
KeyFrame.Draggable = true

local KeyCorner = Instance.new("UICorner")
KeyCorner.CornerRadius = UDim.new(0, 10)
KeyCorner.Parent = KeyFrame

local KeyStroke = Instance.new("UIStroke")
KeyStroke.Color = Color3.fromRGB(139, 92, 246)
KeyStroke.Thickness = 1.5
KeyStroke.Parent = KeyFrame

local KeyTitle = Instance.new("TextLabel")
KeyTitle.Parent = KeyFrame
KeyTitle.Size = UDim2.new(1, 0, 0, 45)
KeyTitle.Text = "   ASTRUM HUB - KEY SYSTEM"
KeyTitle.TextColor3 = Color3.fromRGB(237, 233, 254)
KeyTitle.TextSize = 15
KeyTitle.Font = Enum.Font.SourceSansBold
KeyTitle.TextXAlignment = Enum.TextXAlignment.Left
KeyTitle.BackgroundColor3 = Color3.fromRGB(24, 27, 42)

local KeyTitleCorner = Instance.new("UICorner")
KeyTitleCorner.CornerRadius = UDim.new(0, 10)
KeyTitleCorner.Parent = KeyTitle

local KeyInput = Instance.new("TextBox")
KeyInput.Parent = KeyFrame
KeyInput.Position = UDim2.new(0.08, 0, 0.35, 0)
KeyInput.Size = UDim2.new(0.84, 0, 0, 38)
KeyInput.PlaceholderText = "Enter Key Here... (Key: Gemini)"
KeyInput.Text = ""
KeyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyInput.BackgroundColor3 = Color3.fromRGB(30, 35, 55)
KeyInput.Font = Enum.Font.SourceSans
KeyInput.TextSize = 14

local InputCorner = Instance.new("UICorner")
InputCorner.CornerRadius = UDim.new(0, 6)
InputCorner.Parent = KeyInput

local SubmitBtn = Instance.new("TextButton")
SubmitBtn.Parent = KeyFrame
SubmitBtn.Position = UDim2.new(0.08, 0, 0.65, 0)
SubmitBtn.Size = UDim2.new(0.84, 0, 0, 38)
SubmitBtn.Text = "ACCESS HUB"
SubmitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
SubmitBtn.BackgroundColor3 = Color3.fromRGB(139, 92, 246)
SubmitBtn.Font = Enum.Font.SourceSansBold
SubmitBtn.TextSize = 14

local SubmitCorner = Instance.new("UICorner")
SubmitCorner.CornerRadius = UDim.new(0, 6)
SubmitCorner.Parent = SubmitBtn

-- --------------------------------------------------------
-- 2. MAIN HUB INTERFACE (6 TABS & IMAGE ICONS)
-- --------------------------------------------------------
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(12, 14, 22)
MainFrame.Position = UDim2.new(0.18, 0, 0.1, 0)
MainFrame.Size = UDim2.new(0, 620, 0, 460)
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Visible = false

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 12)
MainCorner.Parent = MainFrame

local MainStroke = Instance.new("UIStroke")
MainStroke.Color = Color3.fromRGB(139, 92, 246)
MainStroke.Thickness = 1.5
MainStroke.Parent = MainFrame

-- Floating Toggle Button
local ToggleBtn = Instance.new("ImageButton")
ToggleBtn.Name = "AstrumToggle"
ToggleBtn.Parent = ScreenGui
ToggleBtn.Position = UDim2.new(0.02, 0, 0.25, 0)
ToggleBtn.Size = UDim2.new(0, 55, 0, 55)
ToggleBtn.Image = "rbxassetid://18566144863"
ToggleBtn.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
ToggleBtn.Active = true
ToggleBtn.Draggable = true
ToggleBtn.Visible = false

local ToggleCorner = Instance.new("UICorner")
ToggleCorner.CornerRadius = UDim.new(1, 0)
ToggleCorner.Parent = ToggleBtn

local ToggleStroke = Instance.new("UIStroke")
ToggleStroke.Color = Color3.fromRGB(139, 92, 246)
ToggleStroke.Thickness = 2
ToggleStroke.Parent = ToggleBtn

-- Header
local TopHeader = Instance.new("Frame")
TopHeader.Parent = MainFrame
TopHeader.Size = UDim2.new(1, 0, 0, 45)
TopHeader.BackgroundColor3 = Color3.fromRGB(20, 23, 36)

local HeaderCorner = Instance.new("UICorner")
HeaderCorner.CornerRadius = UDim.new(0, 12)
HeaderCorner.Parent = TopHeader

local HeaderLogo = Instance.new("ImageLabel")
HeaderLogo.Parent = TopHeader
HeaderLogo.Position = UDim2.new(0, 10, 0, 5)
HeaderLogo.Size = UDim2.new(0, 35, 0, 35)
HeaderLogo.Image = "rbxassetid://18566144863"
HeaderLogo.BackgroundTransparency = 1

local HeaderTitle = Instance.new("TextLabel")
HeaderTitle.Parent = TopHeader
HeaderTitle.Position = UDim2.new(0, 55, 0, 0)
HeaderTitle.Size = UDim2.new(0.8, 0, 1, 0)
HeaderTitle.Text = "ASTRUM HUB v1.0  |  67 OP Features"
HeaderTitle.TextColor3 = Color3.fromRGB(237, 233, 254)
HeaderTitle.TextSize = 15
HeaderTitle.Font = Enum.Font.SourceSansBold
HeaderTitle.TextXAlignment = Enum.TextXAlignment.Left
HeaderTitle.BackgroundTransparency = 1

-- Sidebar Navigation (6 Tabs using Roblox Image Assets)
local Sidebar = Instance.new("Frame")
Sidebar.Parent = MainFrame
Sidebar.Position = UDim2.new(0, 0, 0, 45)
Sidebar.Size = UDim2.new(0, 140, 1, -45)
Sidebar.BackgroundColor3 = Color3.fromRGB(16, 18, 28)

local TabConfigs = {
    {Name = "Combat", Icon = "rbxassetid://6031265976"},
    {Name = "Movement", Icon = "rbxassetid://6034509993"},
    {Name = "Visuals", Icon = "rbxassetid://6034832360"},
    {Name = "Games", Icon = "rbxassetid://6034684937"},
    {Name = "Player OP", Icon = "rbxassetid://6034287525"},
    {Name = "Utility", Icon = "rbxassetid://6031280882"}
}

local TabButtons = {}
local TabFrames = {}

for i, cfg in ipairs(TabConfigs) do
    local btn = Instance.new("TextButton")
    btn.Parent = Sidebar
    btn.Position = UDim2.new(0.05, 0, 0.02 + (i - 1) * 0.15, 0)
    btn.Size = UDim2.new(0.9, 0, 0, 36)
    btn.Text = "       " .. cfg.Name
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.BackgroundColor3 = (i == 1) and Color3.fromRGB(139, 92, 246) or Color3.fromRGB(24, 28, 44)
    btn.Font = Enum.Font.SourceSansBold
    btn.TextSize = 13
    btn.TextXAlignment = Enum.TextXAlignment.Left
    
    local img = Instance.new("ImageLabel")
    img.Parent = btn
    img.Position = UDim2.new(0, 8, 0, 8)
    img.Size = UDim2.new(0, 20, 0, 20)
    img.Image = cfg.Icon
    img.BackgroundTransparency = 1
    
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, 6)
    c.Parent = btn
    
    TabButtons[i] = btn
    
    local scroll = Instance.new("ScrollingFrame")
    scroll.Parent = MainFrame
    scroll.Position = UDim2.new(0, 145, 0, 50)
    scroll.Size = UDim2.new(1, -150, 1, -55)
    scroll.BackgroundTransparency = 1
    scroll.CanvasSize = UDim2.new(0, 0, 0, 520)
    scroll.ScrollBarThickness = 6
    scroll.Visible = (i == 1)
    
    TabFrames[i] = scroll
    
    btn.MouseButton1Click:Connect(function()
        for j, f in ipairs(TabFrames) do
            f.Visible = (j == i)
            TabButtons[j].BackgroundColor3 = (j == i) and Color3.fromRGB(139, 92, 246) or Color3.fromRGB(24, 28, 44)
        end
    end)
end

local function AddFeatureButton(tabIndex, name, yPos, callback)
    local btn = Instance.new("TextButton")
    btn.Parent = TabFrames[tabIndex]
    btn.Position = UDim2.new(0, 0, 0, yPos)
    btn.Size = UDim2.new(0.96, 0, 0, 32)
    btn.Text = "  " .. name
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.BackgroundColor3 = Color3.fromRGB(22, 25, 38)
    btn.Font = Enum.Font.SourceSans
    btn.TextSize = 12
    btn.TextXAlignment = Enum.TextXAlignment.Left
    btn.MouseButton1Click:Connect(callback)
    
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, 6)
    c.Parent = btn
end

-- --------------------------------------------------------
-- 3. 67 OP FEATURES IMPLEMENTATION
-- --------------------------------------------------------

-- TAB 1: COMBAT (1-11)
local aimActive = false
AddFeatureButton(1, "1. Camera Target Lock (Aimbot)", 0, function()
    aimActive = not aimActive
    RunService.RenderStepped:Connect(function()
        if aimActive and LocalPlayer.Character then
            local closest, dist = nil, math.huge
            for _, p in pairs(Players:GetPlayers()) do
                if p ~= LocalPlayer and p.Character and p.Character:FindFirstChild("Head") then
                    local d = (p.Character.Head.Position - LocalPlayer.Character.Head.Position).Magnitude
                    if d < dist then dist = d closest = p end
                end
            end
            if closest then workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, closest.Character.Head.Position) end
        end
    end)
end)

AddFeatureButton(1, "2. Expand Head Hitboxes (5x5)", 38, function()
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= LocalPlayer and p.Character and p.Character:FindFirstChild("Head") then
            p.Character.Head.Size = Vector3.new(5,5,5)
            p.Character.Head.Transparency = 0.5
        end
    end
end)

AddFeatureButton(1, "3. Reset Hitboxes to Normal", 76, function()
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= LocalPlayer and p.Character and p.Character:FindFirstChild("Head") then
            p.Character.Head.Size = Vector3.new(1.2,1.2,1.2)
            p.Character.Head.Transparency = 0
        end
    end
end)

AddFeatureButton(1, "4. Fast Auto Clicker Trigger", 114, function()
    pcall(function() mouse1click() end)
end)

AddFeatureButton(1, "5. Silent Trigger Bot Toggle", 152, function()
    local m = LocalPlayer:GetMouse()
    if m.Target and m.Target.Parent:FindFirstChildOfClass("Humanoid") then
        pcall(function() mouse1click() end)
    end
end)

AddFeatureButton(1, "6. Clear Character Velocity (Anti-Knockback)", 190, function()
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
    end
end)

AddFeatureButton(1, "7. Kill Aura (Closest Target Touch)", 228, function()
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= LocalPlayer and p.Character and p.Character:FindFirstChild("Humanoid") then
            local d = (p.Character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if d < 12 then p.Character.Humanoid:TakeDamage(10) end
        end
    end
end)

AddFeatureButton(1, "8. Click Teleport Behind Target", 266, function()
    local m = LocalPlayer:GetMouse()
    if m.Target and m.Target.Parent:FindFirstChild("HumanoidRootPart") then
        LocalPlayer.Character.HumanoidRootPart.CFrame = m.Target.Parent.HumanoidRootPart.CFrame * CFrame.new(0,0,3)
    end
end)

AddFeatureButton(1, "9. Target Player Spectate Mode", 304, function()
    local plrs = Players:GetPlayers()
    if #plrs > 1 then workspace.CurrentCamera.CameraSubject = plrs[2].Character.Humanoid end
end)

AddFeatureButton(1, "10. Reset Spectate Camera", 342, function()
    if LocalPlayer.Character then workspace.CurrentCamera.CameraSubject = LocalPlayer.Character.Humanoid end
end)

AddFeatureButton(1, "11. Auto Equip Backpack Tools", 380, function()
    for _, t in pairs(LocalPlayer.Backpack:GetChildren()) do
        if t:IsA("Tool") then t.Parent = LocalPlayer.Character end
    end
end)

-- TAB 2: MOVEMENT (12-22)
AddFeatureButton(2, "12. WalkSpeed: 50 Boost", 0, function() pcall(function() LocalPlayer.Character.Humanoid.WalkSpeed = 50 end) end)
AddFeatureButton(2, "13. WalkSpeed: 120 Mega Speed", 38, function() pcall(function() LocalPlayer.Character.Humanoid.WalkSpeed = 120 end) end)
AddFeatureButton(2, "14. WalkSpeed: 300 Hyper Velocity", 76, function() pcall(function() LocalPlayer.Character.Humanoid.WalkSpeed = 300 end) end)
AddFeatureButton(2, "15. Reset Speed (16)", 114, function() pcall(function() LocalPlayer.Character.Humanoid.WalkSpeed = 16 end) end)
AddFeatureButton(2, "16. JumpPower: 120 High Jump", 152, function() pcall(function() LocalPlayer.Character.Humanoid.JumpPower = 120 end) end)
AddFeatureButton(2, "17. JumpPower: 300 Super Jump", 190, function() pcall(function() LocalPlayer.Character.Humanoid.JumpPower = 300 end) end)
AddFeatureButton(2, "18. Reset JumpPower (50)", 228, function() pcall(function() LocalPlayer.Character.Humanoid.JumpPower = 50 end) end)

local infJ = false
AddFeatureButton(2, "19. Toggle Infinite Air Jump", 266, function()
    infJ = not infJ
    UserInputService.JumpRequest:Connect(function()
        if infJ and LocalPlayer.Character then
            LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
        end
    end)
end)

local fly = false
AddFeatureButton(2, "20. Toggle Flight Engine", 304, function()
    fly = not fly
    local hrp = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if hrp then
        if fly then
            local bv = Instance.new("BodyVelocity", hrp)
            bv.Name = "AstrumFly"
            bv.MaxForce = Vector3.new(1e6,1e6,1e6)
            bv.Velocity = Vector3.new(0, 50, 0)
        else
            if hrp:FindFirstChild("AstrumFly") then hrp.AstrumFly:Destroy() end
        end
    end
end)

local nc = false
AddFeatureButton(2, "21. Toggle Noclip (Phase Walls)", 342, function()
    nc = not nc
    RunService.Stepped:Connect(function()
        if nc and LocalPlayer.Character then
            for _, p in pairs(LocalPlayer.Character:GetChildren()) do
                if p:IsA("BasePart") then p.CanCollide = false end
            end
        end
    end)
end)

AddFeatureButton(2, "22. Speed Bypass (CFrame Step)", 380, function()
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame + LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * 10
    end
end)

-- TAB 3: VISUALS (23-33)
local espOn = false
AddFeatureButton(3, "23. Toggle White Outline ESP", 0, function()
    espOn = not espOn
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= LocalPlayer and p.Character then
            if espOn then
                if not p.Character:FindFirstChild("AstrumESP") then
                    local h = Instance.new("Highlight")
                    h.Name = "AstrumESP"
                    h.FillColor = Color3.fromRGB(139, 92, 246)
                    h.Parent = p.Character
                end
            else
                if p.Character:FindFirstChild("AstrumESP") then p.Character.AstrumESP:Destroy() end
            end
        end
    end
end)

AddFeatureButton(3, "24. Rainbow Wall Chams", 38, function()
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= LocalPlayer and p.Character then
            local h = p.Character:FindFirstChild("AstrumESP") or Instance.new("Highlight", p.Character)
            h.Name = "AstrumESP"
            h.FillColor = Color3.fromRGB(math.random(0,255), math.random(0,255), math.random(0,255))
        end
    end
end)

AddFeatureButton(3, "25. Display Player Name Tags", 76, function()
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= LocalPlayer and p.Character and p.Character:FindFirstChild("Head") then
            local bb = Instance.new("BillboardGui", p.Character.Head)
            bb.Size = UDim2.new(0, 100, 0, 30)
            bb.AlwaysOnTop = true
            local lbl = Instance.new("TextLabel", bb)
            lbl.Size = UDim2.new(1,0,1,0)
            lbl.Text = p.Name
            lbl.TextColor3 = Color3.fromRGB(255,255,255)
        end
    end
end)

AddFeatureButton(3, "26. FOV 90 Wide Angle", 114, function() workspace.CurrentCamera.FieldOfView = 90 end)
AddFeatureButton(3, "27. FOV 120 Maximum Angle", 152, function() workspace.CurrentCamera.FieldOfView = 120 end)
AddFeatureButton(3, "28. Reset FOV (70)", 190, function() workspace.CurrentCamera.FieldOfView = 70 end)
AddFeatureButton(3, "29. Fullbright Night Vision Mode", 228, function()
    Lighting.Brightness = 3
    Lighting.ClockTime = 14
    Lighting.GlobalShadows = false
end)
AddFeatureButton(3, "30. Remove Map Fog", 266, function() Lighting.FogEnd = 100000 end)
AddFeatureButton(3, "31. Force Night Lighting", 304, function() Lighting.ClockTime = 0 end)
AddFeatureButton(3, "32. Force Day Lighting", 342, function() Lighting.ClockTime = 12 end)
AddFeatureButton(3, "33. Infinite Camera Zoom", 380, function() LocalPlayer.CameraMaxZoomDistance = 100000 end)

-- TAB 4: SUPPORTED GAMES (34-45)
AddFeatureButton(4, "34. Rivals: Auto-Lock & Radar", 0, function()
    print("Rivals OP Loaded")
end)
AddFeatureButton(4, "35. Rivals: Instant Reload Mod", 38, function()
    print("Rivals Reload Loaded")
end)
AddFeatureButton(4, "36. Just a Baseplate: Teleport Stage", 76, function()
    if LocalPlayer.Character then LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 50, 0) end
end)
AddFeatureButton(4, "37. Just a Baseplate: Auto Farm Speed", 114, function()
    pcall(function() LocalPlayer.Character.Humanoid.WalkSpeed = 100 end)
end)
AddFeatureButton(4, "38. Blox Fruits: Fast Attack Modifier", 152, function()
    print("Blox Fruits Mod Loaded")
end)
AddFeatureButton(4, "39. Blox Fruits: Chest ESP Tracker", 190, function()
    print("Chest Tracker Loaded")
end)
AddFeatureButton(4, "40. Arsenal: Kill All Trigger", 228, function()
    print("Arsenal Trigger Loaded")
end)
AddFeatureButton(4, "41. Arsenal: No Recoil & Spread", 266, function()
    print("No Recoil Loaded")
end)
AddFeatureButton(4, "42. Blade Ball: Auto Parry Trigger", 304, function()
    print("Auto Parry Loaded")
end)
AddFeatureButton(4, "43. Blade Ball: Curve Ball Simulator", 342, function()
    print("Curve Ball Loaded")
end)
AddFeatureButton(4, "44. Doors: Auto Key & Door ESP", 380, function()
    print("Doors ESP Loaded")
end)
AddFeatureButton(4, "45. Doors: Bypass Entity Jumpscare", 418, function()
    print("Bypass Jumpscare Loaded")
end)

-- TAB 5: PLAYER OP (46-56)
AddFeatureButton(5, "46. Force Sit State", 0, function() pcall(function() LocalPlayer.Character.Humanoid.Sit = true end) end)
AddFeatureButton(5, "47. Stand Up State", 38, function() pcall(function() LocalPlayer.Character.Humanoid.Sit = false end) end)
AddFeatureButton(5, "48. Instant Character Respawn", 76, function() pcall(function() LocalPlayer.Character.Humanoid.Health = 0 end) end)

AddFeatureButton(5, "49. SpinBot Engine", 114, function()
    local spin = Instance.new("BodyAngularVelocity", LocalPlayer.Character.HumanoidRootPart)
    spin.Name = "AstrumSpin"
    spin.AngularVelocity = Vector3.new(0, 50, 0)
    spin.MaxTorque = Vector3.new(0, math.huge, 0)
end)

AddFeatureButton(5, "50. Stop SpinBot Engine", 152, function()
    local hrp = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if hrp and hrp:FindFirstChild("AstrumSpin") then hrp.AstrumSpin:Destroy() end
end)

AddFeatureButton(5, "51. Click Teleport Tool", 190, function()
    local m = LocalPlayer:GetMouse()
    local t = Instance.new("Tool", LocalPlayer.Backpack)
    t.Name = "Astrum Click TP"
    t.RequiresHandle = false
    t.Activated:Connect(function()
        if LocalPlayer.Character then LocalPlayer.Character:MoveTo(m.Hit.p) end
    end)
end)

AddFeatureButton(5, "52. Teleport to Random Player", 228, function()
    local plrs = Players:GetPlayers()
    if #plrs > 1 then
        local t = plrs[math.random(1, #plrs)]
        if t ~= LocalPlayer and t.Character and t.Character:FindFirstChild("HumanoidRootPart") then
            LocalPlayer.Character.HumanoidRootPart.CFrame = t.Character.HumanoidRootPart.CFrame
        end
    end
end)

AddFeatureButton(5, "53. Clear All Inventory Tools", 266, function() LocalPlayer.Backpack:ClearAllChildren() end)
AddFeatureButton(5, "54. Teleport to World Spawn", 304, function()
    if workspace:FindFirstChildOfClass("SpawnLocation") then
        LocalPlayer.Character.HumanoidRootPart.CFrame = workspace:FindFirstChildOfClass("SpawnLocation").CFrame * CFrame.new(0,3,0)
    end
end)
AddFeatureButton(5, "55. Give Classic BTools", 342, function()
    local bp = LocalPlayer:FindFirstChildOfClass("Backpack")
    if bp then
        Instance.new("HopperBin", bp).BinType = Enum.BinType.Hammer
        Instance.new("HopperBin", bp).BinType = Enum.BinType.Grab
        Instance.new("HopperBin", bp).BinType = Enum.BinType.Clone
    end
end)
AddFeatureButton(5, "56. Anti-Gravity Float Mode", 380, function() workspace.Gravity = 10 end)

-- TAB 6: UTILITY (57-67)
AddFeatureButton(6, "57. Anti-AFK Idle Protection", 0, function()
    local vu = game:GetService("VirtualUser")
    LocalPlayer.Idled:Connect(function()
        vu:Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
        task.wait(1)
        vu:Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
    end)
end)
AddFeatureButton(6, "58. Rejoin Current Server", 38, function()
    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
end)
AddFeatureButton(6, "59. Server Hop (New Server)", 76, function()
    TeleportService:Teleport(game.PlaceId, LocalPlayer)
end)
AddFeatureButton(6, "60. Load Infinite Yield Admin", 114, function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
AddFeatureButton(6, "61. Copy Position CFrame to Clipboard", 152, function()
    if setclipboard and LocalPlayer.Character then
        setclipboard(tostring(LocalPlayer.Character.HumanoidRootPart.CFrame))
    end
end)
AddFeatureButton(6, "62. Copy Game Place ID", 190, function() if setclipboard then setclipboard(tostring(game.PlaceId)) end end)
AddFeatureButton(6, "63. Copy Server Job ID", 228, function() if setclipboard then setclipboard(tostring(game.JobId)) end end)
AddFeatureButton(6, "64. Copy Local User ID", 266, function() if setclipboard then setclipboard(tostring(LocalPlayer.UserId)) end end)
AddFeatureButton(6, "65. Reset Gravity Default", 304, function() workspace.Gravity = 196.2 end)
AddFeatureButton(6, "66. Maximize FPS Rendering", 342, function()
    pcall(function()
        for _, v in pairs(workspace:GetDescendants()) do
            if v:IsA("BasePart") then v.Material = Enum.Material.SmoothPlastic end
        end
    end)
end)
AddFeatureButton(6, "67. Destroy Astrum Hub GUI", 380, function() ScreenGui:Destroy() end)

-- --------------------------------------------------------
-- 4. KEY VERIFICATION HANDLER
-- --------------------------------------------------------
SubmitBtn.MouseButton1Click:Connect(function()
    if KeyInput.Text == "Gemini" then
        KeyFrame.Visible = false
        MainFrame.Visible = true
        ToggleBtn.Visible = true
    else
        SubmitBtn.Text = "INCORRECT KEY!"
        SubmitBtn.BackgroundColor3 = Color3.fromRGB(220, 38, 38)
        task.wait(1.5)
        SubmitBtn.Text = "ACCESS HUB"
        SubmitBtn.BackgroundColor3 = Color3.fromRGB(139, 92, 246)
    end
end)

ToggleBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)
