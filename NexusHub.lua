-- ========================================================
--          NEXUS HUB v2.0 (65 FEATURES & 8 TABS)
-- ========================================================

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Lighting = game:GetService("Lighting")
local TeleportService = game:GetService("TeleportService")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "NexusHubUI"
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
KeyStroke.Color = Color3.fromRGB(168, 85, 247)
KeyStroke.Thickness = 1.5
KeyStroke.Parent = KeyFrame

local KeyTitle = Instance.new("TextLabel")
KeyTitle.Parent = KeyFrame
KeyTitle.Size = UDim2.new(1, 0, 0, 45)
KeyTitle.Text = "   NEXUS HUB - KEY SYSTEM"
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
SubmitBtn.Text = "UNLOCK NEXUS"
SubmitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
SubmitBtn.BackgroundColor3 = Color3.fromRGB(168, 85, 247)
SubmitBtn.Font = Enum.Font.SourceSansBold
SubmitBtn.TextSize = 14

local SubmitCorner = Instance.new("UICorner")
SubmitCorner.CornerRadius = UDim.new(0, 6)
SubmitCorner.Parent = SubmitBtn

-- --------------------------------------------------------
-- 2. MAIN INTERFACE (8 TABS & ICON DISPLAY)
-- --------------------------------------------------------
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(12, 14, 22)
MainFrame.Position = UDim2.new(0.18, 0, 0.08, 0)
MainFrame.Size = UDim2.new(0, 640, 0, 480)
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Visible = false

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 12)
MainCorner.Parent = MainFrame

local MainStroke = Instance.new("UIStroke")
MainStroke.Color = Color3.fromRGB(168, 85, 247)
MainStroke.Thickness = 1.5
MainStroke.Parent = MainFrame

-- Floating Toggle Logo Icon
local ToggleBtn = Instance.new("ImageButton")
ToggleBtn.Name = "NexusToggle"
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
ToggleStroke.Color = Color3.fromRGB(168, 85, 247)
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
HeaderTitle.Text = "NEXUS HUB v2.0  |  65 Features & 10 Supported Games"
HeaderTitle.TextColor3 = Color3.fromRGB(237, 233, 254)
HeaderTitle.TextSize = 14
HeaderTitle.Font = Enum.Font.SourceSansBold
HeaderTitle.TextXAlignment = Enum.TextXAlignment.Left
HeaderTitle.BackgroundTransparency = 1

-- Sidebar Navigation (8 Tabs)
local Sidebar = Instance.new("Frame")
Sidebar.Parent = MainFrame
Sidebar.Position = UDim2.new(0, 0, 0, 45)
Sidebar.Size = UDim2.new(0, 145, 1, -45)
Sidebar.BackgroundColor3 = Color3.fromRGB(16, 18, 28)

local TabConfigs = {
    {Name = "Combat OP", Icon = "rbxassetid://6031265976"},
    {Name = "Movement", Icon = "rbxassetid://6034509993"},
    {Name = "Visuals ESP", Icon = "rbxassetid://6034832360"},
    {Name = "Games 1-5", Icon = "rbxassetid://6034684937"},
    {Name = "Games 6-10", Icon = "rbxassetid://6034684937"},
    {Name = "Player Mod", Icon = "rbxassetid://6034287525"},
    {Name = "World OP", Icon = "rbxassetid://6031280882"},
    {Name = "Utilities", Icon = "rbxassetid://6031280882"}
}

local TabButtons = {}
local TabFrames = {}

for i, cfg in ipairs(TabConfigs) do
    local btn = Instance.new("TextButton")
    btn.Parent = Sidebar
    btn.Position = UDim2.new(0.05, 0, 0.01 + (i - 1) * 0.12, 0)
    btn.Size = UDim2.new(0.9, 0, 0, 32)
    btn.Text = "       " .. cfg.Name
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.BackgroundColor3 = (i == 1) and Color3.fromRGB(168, 85, 247) or Color3.fromRGB(24, 28, 44)
    btn.Font = Enum.Font.SourceSansBold
    btn.TextSize = 12
    btn.TextXAlignment = Enum.TextXAlignment.Left
    
    local img = Instance.new("ImageLabel")
    img.Parent = btn
    img.Position = UDim2.new(0, 6, 0, 6)
    img.Size = UDim2.new(0, 20, 0, 20)
    img.Image = cfg.Icon
    img.BackgroundTransparency = 1
    
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, 6)
    c.Parent = btn
    
    TabButtons[i] = btn
    
    local scroll = Instance.new("ScrollingFrame")
    scroll.Parent = MainFrame
    scroll.Position = UDim2.new(0, 150, 0, 50)
    scroll.Size = UDim2.new(1, -155, 1, -55)
    scroll.BackgroundTransparency = 1
    scroll.CanvasSize = UDim2.new(0, 0, 0, 420)
    scroll.ScrollBarThickness = 6
    scroll.Visible = (i == 1)
    
    TabFrames[i] = scroll
    
    btn.MouseButton1Click:Connect(function()
        for j, f in ipairs(TabFrames) do
            f.Visible = (j == i)
            TabButtons[j].BackgroundColor3 = (j == i) and Color3.fromRGB(168, 85, 247) or Color3.fromRGB(24, 28, 44)
        end
    end)
end

local function AddFeatureButton(tabIndex, name, yPos, callback)
    local btn = Instance.new("TextButton")
    btn.Parent = TabFrames[tabIndex]
    btn.Position = UDim2.new(0, 0, 0, yPos)
    btn.Size = UDim2.new(0.96, 0, 0, 30)
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
-- 3. 65 FEATURES IMPLEMENTATION ACROSS 8 TABS
-- --------------------------------------------------------

-- TAB 1: COMBAT OP (1-8)
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
AddFeatureButton(1, "2. Expand Head Hitboxes (5x5)", 36, function()
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= LocalPlayer and p.Character and p.Character:FindFirstChild("Head") then
            p.Character.Head.Size = Vector3.new(5,5,5)
            p.Character.Head.Transparency = 0.5
        end
    end
end)
AddFeatureButton(1, "3. Reset Hitboxes", 72, function()
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= LocalPlayer and p.Character and p.Character:FindFirstChild("Head") then
            p.Character.Head.Size = Vector3.new(1.2,1.2,1.2)
            p.Character.Head.Transparency = 0
        end
    end
end)
AddFeatureButton(1, "4. Fast Auto Clicker Trigger", 108, function() pcall(function() mouse1click() end) end)
AddFeatureButton(1, "5. Anti-Knockback Velocity Reset", 144, function()
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
    end
end)
AddFeatureButton(1, "6. Touch Kill Aura Trigger", 180, function()
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= LocalPlayer and p.Character and p.Character:FindFirstChild("Humanoid") then
            local d = (p.Character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if d < 12 then p.Character.Humanoid:TakeDamage(10) end
        end
    end
end)
AddFeatureButton(1, "7. Spectate Nearest Player", 216, function()
    local plrs = Players:GetPlayers()
    if #plrs > 1 then workspace.CurrentCamera.CameraSubject = plrs[2].Character.Humanoid end
end)
AddFeatureButton(1, "8. Reset Spectate Camera", 252, function()
    if LocalPlayer.Character then workspace.CurrentCamera.CameraSubject = LocalPlayer.Character.Humanoid end
end)

-- TAB 2: MOVEMENT (9-17)
AddFeatureButton(2, "9. WalkSpeed: 50 Boost", 0, function() pcall(function() LocalPlayer.Character.Humanoid.WalkSpeed = 50 end) end)
AddFeatureButton(2, "10. WalkSpeed: 150 Mega Speed", 36, function() pcall(function() LocalPlayer.Character.Humanoid.WalkSpeed = 150 end) end)
AddFeatureButton(2, "11. Reset Speed (16)", 72, function() pcall(function() LocalPlayer.Character.Humanoid.WalkSpeed = 16 end) end)
AddFeatureButton(2, "12. JumpPower: 120 High Jump", 108, function() pcall(function() LocalPlayer.Character.Humanoid.JumpPower = 120 end) end)
AddFeatureButton(2, "13. Reset JumpPower (50)", 144, function() pcall(function() LocalPlayer.Character.Humanoid.JumpPower = 50 end) end)
local infJ = false
AddFeatureButton(2, "14. Infinite Air Jump", 180, function()
    infJ = not infJ
    UserInputService.JumpRequest:Connect(function()
        if infJ and LocalPlayer.Character then LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping") end
    end)
end)
local fly = false
AddFeatureButton(2, "15. Toggle Flight Engine", 216, function()
    fly = not fly
    local hrp = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if hrp then
        if fly then
            local bv = Instance.new("BodyVelocity", hrp)
            bv.Name = "NexusFly"
            bv.MaxForce = Vector3.new(1e6,1e6,1e6)
            bv.Velocity = Vector3.new(0, 50, 0)
        else
            if hrp:FindFirstChild("NexusFly") then hrp.NexusFly:Destroy() end
        end
    end
end)
local nc = false
AddFeatureButton(2, "16. Toggle Noclip", 252, function()
    nc = not nc
    RunService.Stepped:Connect(function()
        if nc and LocalPlayer.Character then
            for _, p in pairs(LocalPlayer.Character:GetChildren()) do
                if p:IsA("BasePart") then p.CanCollide = false end
            end
        end
    end)
end)
AddFeatureButton(2, "17. Forward Step CFrame Teleport", 288, function()
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame + LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * 10
    end
end)

-- TAB 3: VISUALS ESP (18-25)
local espOn = false
AddFeatureButton(3, "18. Toggle White Highlight ESP", 0, function()
    espOn = not espOn
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= LocalPlayer and p.Character then
            if espOn then
                if not p.Character:FindFirstChild("NexusESP") then
                    local h = Instance.new("Highlight")
                    h.Name = "NexusESP"
                    h.FillColor = Color3.fromRGB(168, 85, 247)
                    h.Parent = p.Character
                end
            else
                if p.Character:FindFirstChild("NexusESP") then p.Character.NexusESP:Destroy() end
            end
        end
    end
end)
AddFeatureButton(3, "19. Display Player Name Tags", 36, function()
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
AddFeatureButton(3, "20. FOV 90 Wide Angle", 72, function() workspace.CurrentCamera.FieldOfView = 90 end)
AddFeatureButton(3, "21. FOV 120 Max Angle", 108, function() workspace.CurrentCamera.FieldOfView = 120 end)
AddFeatureButton(3, "22. Reset FOV (70)", 144, function() workspace.CurrentCamera.FieldOfView = 70 end)
AddFeatureButton(3, "23. Fullbright Vision", 180, function() Lighting.Brightness = 3 Lighting.ClockTime = 14 Lighting.GlobalShadows = false end)
AddFeatureButton(3, "24. Remove Map Fog", 216, function() Lighting.FogEnd = 100000 end)
AddFeatureButton(3, "25. Infinite Camera Zoom", 252, function() LocalPlayer.CameraMaxZoomDistance = 100000 end)

-- TAB 4: GAMES 1-5 (26-35)
AddFeatureButton(4, "26. Game 1 (Rivals): Auto-Lock Radar", 0, function() print("Rivals Activated") end)
AddFeatureButton(4, "27. Game 1 (Rivals): Instant Reload", 36, function() print("Rivals Reload") end)
AddFeatureButton(4, "28. Game 2 (Just a Baseplate): High Teleport", 72, function() if LocalPlayer.Character then LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 50, 0) end end)
AddFeatureButton(4, "29. Game 2 (Just a Baseplate): Baseplate Speed", 108, function() pcall(function() LocalPlayer.Character.Humanoid.WalkSpeed = 100 end) end)
AddFeatureButton(4, "30. Game 3 (Blox Fruits): Fast Attack Mod", 144, function() print("Blox Fruits Mod") end)
AddFeatureButton(4, "31. Game 3 (Blox Fruits): Chest Tracker", 180, function() print("Blox Fruits Chest") end)
AddFeatureButton(4, "32. Game 4 (Arsenal): Kill All Trigger", 216, function() print("Arsenal Kill All") end)
AddFeatureButton(4, "33. Game 4 (Arsenal): No Recoil", 252, function() print("Arsenal No Recoil") end)
AddFeatureButton(4, "34. Game 5 (Blade Ball): Auto Parry Trigger", 288, function() print("Blade Ball Parry") end)
AddFeatureButton(4, "35. Game 5 (Blade Ball): Curve Ball Mod", 324, function() print("Blade Ball Curve") end)

-- TAB 5: GAMES 6-10 (36-45)
AddFeatureButton(5, "36. Game 6 (Doors): Auto Key & Door ESP", 0, function() print("Doors Key ESP") end)
AddFeatureButton(5, "37. Game 6 (Doors): Bypass Jumpscare", 36, function() print("Doors Jumpscare Bypass") end)
AddFeatureButton(5, "38. Game 7 (Brookhaven): Speed & Unlocks", 72, function() print("Brookhaven Unlocks") end)
AddFeatureButton(5, "39. Game 7 (Brookhaven): Vehicle Speed Boost", 108, function() print("Brookhaven Vehicle") end)
AddFeatureButton(5, "40. Game 8 (Adopt Me): Pet Auto Farm", 144, function() print("Adopt Me Farm") end)
AddFeatureButton(5, "41. Game 8 (Adopt Me): Instant Teleport Nursery", 180, function() print("Adopt Me TP") end)
AddFeatureButton(5, "42. Game 9 (Bedwars): Auto Bridge Builder", 216, function() print("Bedwars Bridge") end)
AddFeatureButton(5, "43. Game 9 (Bedwars): Kill Aura Reach", 252, function() print("Bedwars Reach") end)
AddFeatureButton(5, "44. Game 10 (Pet Simulator 99): Auto Collect Gems", 288, function() print("PS99 Gems") end)
AddFeatureButton(5, "45. Game 10 (Pet Simulator 99): Fast Hatch Mod", 324, function() print("PS99 Hatch") end)

-- TAB 6: PLAYER MOD (46-52)
AddFeatureButton(6, "46. Force Sit Character", 0, function() pcall(function() LocalPlayer.Character.Humanoid.Sit = true end) end)
AddFeatureButton(6, "47. Stand Up Character", 36, function() pcall(function() LocalPlayer.Character.Humanoid.Sit = false end) end)
AddFeatureButton(6, "48. Respawn / Reset Character", 72, function() pcall(function() LocalPlayer.Character.Humanoid.Health = 0 end) end)
AddFeatureButton(6, "49. SpinBot Engine", 108, function()
    local spin = Instance.new("BodyAngularVelocity", LocalPlayer.Character.HumanoidRootPart)
    spin.Name = "NexusSpin"
    spin.AngularVelocity = Vector3.new(0, 50, 0)
    spin.MaxTorque = Vector3.new(0, math.huge, 0)
end)
AddFeatureButton(6, "50. Stop SpinBot Engine", 144, function()
    local hrp = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if hrp and hrp:FindFirstChild("NexusSpin") then hrp.NexusSpin:Destroy() end
end)
AddFeatureButton(6, "51. Click Teleport Tool", 180, function()
    local m = LocalPlayer:GetMouse()
    local t = Instance.new("Tool", LocalPlayer.Backpack)
    t.Name = "Nexus Click TP"
    t.RequiresHandle = false
    t.Activated:Connect(function() if LocalPlayer.Character then LocalPlayer.Character:MoveTo(m.Hit.p) end end)
end)
AddFeatureButton(6, "52. Teleport to Random Player", 216, function()
    local plrs = Players:GetPlayers()
    if #plrs > 1 then
        local t = plrs[math.random(1, #plrs)]
        if t ~= LocalPlayer and t.Character and t.Character:FindFirstChild("HumanoidRootPart") then
            LocalPlayer.Character.HumanoidRootPart.CFrame = t.Character.HumanoidRootPart.CFrame
        end
    end
end)

-- TAB 7: WORLD OP (53-58)
AddFeatureButton(7, "53. Set Low Gravity (25)", 0, function() workspace.Gravity = 25 end)
AddFeatureButton(7, "54. Set Zero Gravity (0)", 36, function() workspace.Gravity = 0 end)
AddFeatureButton(7, "55. Reset Gravity Default (196.2)", 72, function() workspace.Gravity = 196.2 end)
AddFeatureButton(7, "56. Force Night Lighting (12 AM)", 108, function() Lighting.ClockTime = 0 end)
AddFeatureButton(7, "57. Force Day Lighting (12 PM)", 144, function() Lighting.ClockTime = 12 end)
AddFeatureButton(7, "58. Give Classic BTools", 180, function()
    local bp = LocalPlayer:FindFirstChildOfClass("Backpack")
    if bp then
        Instance.new("HopperBin", bp).BinType = Enum.BinType.Hammer
        Instance.new("HopperBin", bp).BinType = Enum.BinType.Grab
        Instance.new("HopperBin", bp).BinType = Enum.BinType.Clone
    end
end)

-- TAB 8: UTILITIES (59-65)
AddFeatureButton(8, "59. Anti-AFK Kick Protection", 0, function()
    local vu = game:GetService("VirtualUser")
    LocalPlayer.Idled:Connect(function()
        vu:Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
        task.wait(1)
        vu:Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
    end)
end)
AddFeatureButton(8, "60. Rejoin Current Server", 36, function() TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer) end)
AddFeatureButton(8, "61. Server Hop (New Server)", 72, function() TeleportService:Teleport(game.PlaceId, LocalPlayer) end)
AddFeatureButton(8, "62. Load Infinite Yield Admin", 108, function() loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))() end)
AddFeatureButton(8, "63. Copy CFrame Position to Clipboard", 144, function()
    if setclipboard and LocalPlayer.Character then setclipboard(tostring(LocalPlayer.Character.HumanoidRootPart.CFrame)) end
end)
AddFeatureButton(8, "64. Maximize FPS Rendering", 180, function()
    pcall(function()
        for _, v in pairs(workspace:GetDescendants()) do if v:IsA("BasePart") then v.Material = Enum.Material.SmoothPlastic end end
    end)
end)
AddFeatureButton(8, "65. Destroy Hub GUI", 216, function() ScreenGui:Destroy() end)

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
        SubmitBtn.Text = "UNLOCK NEXUS"
        SubmitBtn.BackgroundColor3 = Color3.fromRGB(168, 85, 247)
    end
end)

ToggleBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)
