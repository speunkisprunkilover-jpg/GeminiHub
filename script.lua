-- ========================================================
--                    GEMINI HUB v1.0
--              Key System: Gemini_is_cool
-- ========================================================

local KeySystemGUI = Instance.new("ScreenGui")
local KeyFrame = Instance.new("Frame")
local KeyTitle = Instance.new("TextLabel")
local KeyBox = Instance.new("TextBox")
local KeySubmit = Instance.new("TextButton")
local KeyCorner = Instance.new("UICorner")

KeySystemGUI.Name = "GeminiKeySys"
KeySystemGUI.Parent = game.CoreGui
KeySystemGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

KeyFrame.Parent = KeySystemGUI
KeyFrame.BackgroundColor3 = Color3.fromRGB(15, 23, 42)
KeyFrame.Position = UDim2.new(0.5, -150, 0.5, -80)
KeyFrame.Size = UDim2.new(0, 300, 0, 160)
KeyFrame.Active = true
KeyFrame.Draggable = true

KeyCorner.CornerRadius = UDim.new(0, 12)
KeyCorner.Parent = KeyFrame

KeyTitle.Parent = KeyFrame
KeyTitle.Size = UDim2.new(1, 0, 0, 40)
KeyTitle.Text = "GEMINI HUB - KEY SYSTEM"
KeyTitle.TextColor3 = Color3.fromRGB(56, 189, 248) -- Cyan/Blue
KeyTitle.TextSize = 16
KeyTitle.Font = Enum.Font.SourceSansBold
KeyTitle.BackgroundTransparency = 1

KeyBox.Parent = KeyFrame
KeyBox.Position = UDim2.new(0.1, 0, 0.35, 0)
KeyBox.Size = UDim2.new(0.8, 0, 0, 35)
KeyBox.PlaceholderText = "Enter Key Here..."
KeyBox.Text = ""
KeyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyBox.BackgroundColor3 = Color3.fromRGB(30, 41, 59)
KeyBox.Font = Enum.Font.SourceSans
KeyBox.TextSize = 14

local KeyBoxCorner = Instance.new("UICorner")
KeyBoxCorner.CornerRadius = UDim.new(0, 8)
KeyBoxCorner.Parent = KeyBox

KeySubmit.Parent = KeyFrame
KeySubmit.Position = UDim2.new(0.2, 0, 0.68, 0)
KeySubmit.Size = UDim2.new(0.6, 0, 0, 35)
KeySubmit.Text = "Verify Key"
KeySubmit.TextColor3 = Color3.fromRGB(255, 255, 255)
KeySubmit.BackgroundColor3 = Color3.fromRGB(16, 185, 129) -- Emerald Green
KeySubmit.Font = Enum.Font.SourceSansBold
KeySubmit.TextSize = 15

local KeyBtnCorner = Instance.new("UICorner")
KeyBtnCorner.CornerRadius = UDim.new(0, 8)
KeyBtnCorner.Parent = KeySubmit

-- Function to launch main hub upon key verification
local function LoadMainHub()
    KeySystemGUI:Destroy()

    -- Main ScreenGui
    local GeminiHub = Instance.new("ScreenGui")
    GeminiHub.Name = "GeminiHub"
    GeminiHub.Parent = game.CoreGui
    GeminiHub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    -- Floating Open/Close Toggle Button
    local ToggleBtn = Instance.new("TextButton")
    ToggleBtn.Parent = GeminiHub
    ToggleBtn.Position = UDim2.new(0.02, 0, 0.2, 0)
    ToggleBtn.Size = UDim2.new(0, 50, 0, 50)
    ToggleBtn.Text = "♊"
    ToggleBtn.TextSize = 24
    ToggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    ToggleBtn.BackgroundColor3 = Color3.fromRGB(16, 185, 129)
    ToggleBtn.Active = true
    ToggleBtn.Draggable = true

    local ToggleCorner = Instance.new("UICorner")
    ToggleCorner.CornerRadius = UDim.new(1, 0)
    ToggleCorner.Parent = ToggleBtn

    -- Main GUI Frame
    local MainFrame = Instance.new("Frame")
    MainFrame.Parent = GeminiHub
    MainFrame.BackgroundColor3 = Color3.fromRGB(15, 23, 42) -- Deep Navy
    MainFrame.Position = UDim2.new(0.3, 0, 0.2, 0)
    MainFrame.Size = UDim2.new(0, 480, 0, 320)
    MainFrame.Active = true
    MainFrame.Draggable = true

    local MainCorner = Instance.new("UICorner")
    MainCorner.CornerRadius = UDim.new(0, 12)
    MainCorner.Parent = MainFrame

    -- Header / Title Bar
    local TitleBar = Instance.new("TextLabel")
    TitleBar.Parent = MainFrame
    TitleBar.Size = UDim2.new(1, 0, 0, 40)
    TitleBar.Text = "  ♊ GEMINI HUB  |  Universal V1.0"
    TitleBar.TextColor3 = Color3.fromRGB(56, 189, 248)
    TitleBar.TextSize = 16
    TitleBar.Font = Enum.Font.SourceSansBold
    TitleBar.TextXAlignment = Enum.TextXAlignment.Left
    TitleBar.BackgroundColor3 = Color3.fromRGB(30, 41, 59)

    local TitleCorner = Instance.new("UICorner")
    TitleCorner.CornerRadius = UDim.new(0, 12)
    TitleCorner.Parent = TitleBar

    -- Tab Container Sidebar
    local Sidebar = Instance.new("Frame")
    Sidebar.Parent = MainFrame
    Sidebar.Position = UDim2.new(0, 0, 0, 40)
    Sidebar.Size = UDim2.new(0, 130, 1, -40)
    Sidebar.BackgroundColor3 = Color3.fromRGB(20, 30, 48)

    -- Tab Buttons
    local Tab1Btn = Instance.new("TextButton")
    Tab1Btn.Parent = Sidebar
    Tab1Btn.Position = UDim2.new(0.05, 0, 0.05, 0)
    Tab1Btn.Size = UDim2.new(0.9, 0, 0, 35)
    Tab1Btn.Text = "🏃 Player"
    Tab1Btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    Tab1Btn.BackgroundColor3 = Color3.fromRGB(16, 185, 129)
    Tab1Btn.Font = Enum.Font.SourceSansBold
    Tab1Btn.TextSize = 14

    local Tab2Btn = Instance.new("TextButton")
    Tab2Btn.Parent = Sidebar
    Tab2Btn.Position = UDim2.new(0.05, 0, 0.20, 0)
    Tab2Btn.Size = UDim2.new(0.9, 0, 0, 35)
    Tab2Btn.Text = "⚡ Combat & Util"
    Tab2Btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    Tab2Btn.BackgroundColor3 = Color3.fromRGB(30, 41, 59)
    Tab2Btn.Font = Enum.Font.SourceSansBold
    Tab2Btn.TextSize = 14

    for _, b in pairs({Tab1Btn, Tab2Btn}) do
        local c = Instance.new("UICorner")
        c.CornerRadius = UDim.new(0, 6)
        c.Parent = b
    end

    -- Tab Content Frames
    local ContentFrame1 = Instance.new("ScrollingFrame")
    ContentFrame1.Parent = MainFrame
    ContentFrame1.Position = UDim2.new(0, 135, 0, 45)
    ContentFrame1.Size = UDim2.new(1, -140, 1, -50)
    ContentFrame1.BackgroundTransparency = 1
    ContentFrame1.CanvasSize = UDim2.new(0, 0, 0, 450)
    ContentFrame1.ScrollBarThickness = 6

    local ContentFrame2 = Instance.new("ScrollingFrame")
    ContentFrame2.Parent = MainFrame
    ContentFrame2.Position = UDim2.new(0, 135, 0, 45)
    ContentFrame2.Size = UDim2.new(1, -140, 1, -50)
    ContentFrame2.BackgroundTransparency = 1
    ContentFrame2.CanvasSize = UDim2.new(0, 0, 0, 450)
    ContentFrame2.ScrollBarThickness = 6
    ContentFrame2.Visible = false

    -- Toggle GUI Visibility with Floating Icon
    ToggleBtn.MouseButton1Click:Connect(function()
        MainFrame.Visible = not MainFrame.Visible
    end)

    -- Tab Switching Logic
    Tab1Btn.MouseButton1Click:Connect(function()
        ContentFrame1.Visible = true
        ContentFrame2.Visible = false
        Tab1Btn.BackgroundColor3 = Color3.fromRGB(16, 185, 129)
        Tab2Btn.BackgroundColor3 = Color3.fromRGB(30, 41, 59)
    end)

    Tab2Btn.MouseButton1Click:Connect(function()
        ContentFrame1.Visible = false
        ContentFrame2.Visible = true
        Tab2Btn.BackgroundColor3 = Color3.fromRGB(16, 185, 129)
        Tab1Btn.BackgroundColor3 = Color3.fromRGB(30, 41, 59)
    end)

    -- Helper Function to Create Action Buttons
    local function AddFeature(parent, name, yOffset, callback)
        local btn = Instance.new("TextButton")
        btn.Parent = parent
        btn.Position = UDim2.new(0.05, 0, 0, yOffset)
        btn.Size = UDim2.new(0.9, 0, 0, 32)
        btn.Text = name
        btn.TextColor3 = Color3.fromRGB(255, 255, 255)
        btn.BackgroundColor3 = Color3.fromRGB(30, 41, 59)
        btn.Font = Enum.Font.SourceSans
        btn.TextSize = 14
        
        local corner = Instance.new("UICorner")
        corner.CornerRadius = UDim.new(0, 6)
        corner.Parent = btn

        btn.MouseButton1Click:Connect(callback)
    end

    -- ========================================================
    -- TAB 1: PLAYER ABILITIES (9 Features)
    -- ========================================================
    
    -- Feature 1: WalkSpeed 50
    AddFeature(ContentFrame1, "Set WalkSpeed (50)", 10, function()
        pcall(function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50 end)
    end)

    -- Feature 2: WalkSpeed 120 (Super Speed)
    AddFeature(ContentFrame1, "Set WalkSpeed (120)", 50, function()
        pcall(function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 120 end)
    end)

    -- Feature 3: Reset WalkSpeed
    AddFeature(ContentFrame1, "Reset Speed (16)", 90, function()
        pcall(function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16 end)
    end)

    -- Feature 4: JumpPower 150
    AddFeature(ContentFrame1, "Set JumpPower (150)", 130, function()
        pcall(function() game.Players.LocalPlayer.Character.Humanoid.JumpPower = 150 end)
    end)

    -- Feature 5: Infinite Jump
    local infJump = false
    AddFeature(ContentFrame1, "Toggle Infinite Jump", 170, function()
        infJump = not infJump
        if infJump then
            game:GetService("UserInputService").JumpRequest:Connect(function()
                if infJump then
                    game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping")
                end
            end)
        end
    end)

    -- Feature 6: Noclip Toggle
    local noclip = false
    AddFeature(ContentFrame1, "Toggle Noclip (Walk Through Walls)", 210, function()
        noclip = not noclip
        game:GetService("RunService").Stepped:Connect(function()
            if noclip and game.Players.LocalPlayer.Character then
                for _, part in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = false
                    end
                end
            end
        end)
    end)

    -- Feature 7: Flight Toggle
    local flying = false
    AddFeature(ContentFrame1, "Toggle Fly Mode", 250, function()
        flying = not flying
        local char = game.Players.LocalPlayer.Character
        if char and char:FindFirstChild("HumanoidRootPart") then
            local hrp = char.HumanoidRootPart
            if flying then
                local bv = Instance.new("BodyVelocity")
                bv.Name = "GeminiFly"
                bv.MaxForce = Vector3.new(1e6, 1e6, 1e6)
                bv.Velocity = Vector3.new(0, 40, 0)
                bv.Parent = hrp
            else
                if hrp:FindFirstChild("GeminiFly") then
                    hrp.GeminiFly:Destroy()
                end
            end
        end
    end)

    -- Feature 8: Low Gravity
    AddFeature(ContentFrame1, "Set Low Gravity", 290, function()
        workspace.Gravity = 50
    end)

    -- Feature 9: Reset Gravity
    AddFeature(ContentFrame1, "Reset Gravity", 330, function()
        workspace.Gravity = 196.2
    end)


    -- ========================================================
    -- TAB 2: COMBAT & UTILITY (8 Features)
    -- ========================================================

    -- Feature 10: Player ESP Highlights
    local espOn = false
    AddFeature(ContentFrame2, "Toggle Player Wallhack (ESP)", 10, function()
        espOn = not espOn
        for _, plr in pairs(game.Players:GetPlayers()) do
            if plr ~= game.Players.LocalPlayer and plr.Character then
                if espOn then
                    if not plr.Character:FindFirstChild("GeminiESP") then
                        local hl = Instance.new("Highlight")
                        hl.Name = "GeminiESP"
                        hl.FillColor = Color3.fromRGB(56, 189, 248)
                        hl.OutlineColor = Color3.fromRGB(16, 185, 129)
                        hl.Parent = plr.Character
                    end
                else
                    if plr.Character:FindFirstChild("GeminiESP") then
                        plr.Character.GeminiESP:Destroy()
                    end
                end
            end
        end
    end)

    -- Feature 11: Teleport to Random Player
    AddFeature(ContentFrame2, "Teleport to Random Player", 50, function()
        local plrs = game.Players:GetPlayers()
        if #plrs > 1 then
            local target = plrs[math.random(1, #plrs)]
            if target ~= game.Players.LocalPlayer and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame * CFrame.new(0, 2, 0)
            end
        end
    end)

    -- Feature 12: Click Teleport Tool
    AddFeature(ContentFrame2, "Get Click-Teleport Tool", 90, function()
        local mouse = game.Players.LocalPlayer:GetMouse()
        local tool = Instance.new("Tool")
        tool.Name = "Gemini TP Tool"
        tool.RequiresHandle = false
        tool.Activated:Connect(function()
            local pos = mouse.Hit.p
            game.Players.LocalPlayer.Character:MoveTo(pos)
        end)
        tool.Parent = game.Players.LocalPlayer.Backpack
    end)

    -- Feature 13: Btools (Building/Deleting Tools)
    AddFeature(ContentFrame2, "Give BTools", 130, function()
        local backpack = game.Players.LocalPlayer:FindFirstChildOfClass("Backpack")
        if backpack then
            local cloneTool = Instance.new("HopperBin", backpack)
            cloneTool.BinType = Enum.BinType.Clone
            local deleteTool = Instance.new("HopperBin", backpack)
            deleteTool.BinType = Enum.BinType.Hammer
            local grabTool = Instance.new("HopperBin", backpack)
            grabTool.BinType = Enum.BinType.Grab
        end
    end)

    -- Feature 14: Fullbright (Night Vision)
    AddFeature(ContentFrame2, "Enable Fullbright (Night Vision)", 170, function()
        local lighting = game:GetService("Lighting")
        lighting.Brightness = 2
        lighting.ClockTime = 14
        lighting.FogEnd = 100000
        lighting.GlobalShadows = false
    end)

    -- Feature 15: Rejoin Server
    AddFeature(ContentFrame2, "Rejoin Game Server", 210, function()
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
    end)

    -- Feature 16: Infinite Yield Loader
    AddFeature(ContentFrame2, "Load Infinite Yield Admin", 250, function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end)

    -- Feature 17: Anti-AFK Kick
    AddFeature(ContentFrame2, "Enable Anti-AFK", 290, function()
        local vu = game:GetService("VirtualUser")
        game.Players.LocalPlayer.Idled:Connect(function()
            vu:Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
            wait(1)
            vu:Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
        end)
    end)

end

-- Key submit trigger
KeySubmit.MouseButton1Click:Connect(function()
    if KeyBox.Text == "Gemini_is_cool" then
        KeySubmit.Text = "Correct Key!"
        KeySubmit.BackgroundColor3 = Color3.fromRGB(56, 189, 248)
        wait(0.5)
        LoadMainHub()
    else
        KeySubmit.Text = "Invalid Key!"
        KeySubmit.BackgroundColor3 = Color3.fromRGB(239, 68, 68)
        wait(1)
        KeySubmit.Text = "Verify Key"
        KeySubmit.BackgroundColor3 = Color3.fromRGB(16, 185, 129)
    end
end)
