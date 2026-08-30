-- Adryan Hub com Abas
local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Criar GUI principal
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 600, 0, 400)
frame.Position = UDim2.new(0.5, -300, 0.5, -200)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame.BorderSizePixel = 0
frame.Parent = screenGui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 15)
corner.Parent = frame

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 50)
title.BackgroundTransparency = 1
title.Text = "🔥 Adryan Hub 🔥"
title.TextColor3 = Color3.fromRGB(255, 215, 0)
title.Font = Enum.Font.GothamBold
title.TextSize = 34
title.Parent = frame

-- Container de abas
local tabsFrame = Instance.new("Frame")
tabsFrame.Size = UDim2.new(0, 150, 1, -50)
tabsFrame.Position = UDim2.new(0, 0, 0, 50)
tabsFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
tabsFrame.Parent = frame

local contentFrame = Instance.new("Frame")
contentFrame.Size = UDim2.new(1, -150, 1, -50)
contentFrame.Position = UDim2.new(0, 150, 0, 50)
contentFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
contentFrame.Parent = frame

-- Função para trocar abas
local function showTab(tabName)
    for _, child in pairs(contentFrame:GetChildren()) do
        child.Visible = false
    end
    local tab = contentFrame:FindFirstChild(tabName)
    if tab then
        tab.Visible = true
    end
end

-- Criar botão de aba
local function createTabButton(name, posY)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, 0, 0, 40)
    btn.Position = UDim2.new(0, 0, 0, posY)
    btn.Text = name
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 20
    btn.Parent = tabsFrame

    btn.MouseButton1Click:Connect(function()
        showTab(name)
    end)
end

-- Aba Farm
local farmTab = Instance.new("Frame")
farmTab.Name = "Farm"
farmTab.Size = UDim2.new(1, 0, 1, 0)
farmTab.BackgroundTransparency = 1
farmTab.Parent = contentFrame

local farmBtn = Instance.new("TextButton")
farmBtn.Size = UDim2.new(0, 200, 0, 50)
farmBtn.Position = UDim2.new(0, 20, 0, 20)
farmBtn.Text = "⚡ Auto Farm"
farmBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
farmBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
farmBtn.Font = Enum.Font.GothamBold
farmBtn.TextSize = 22
farmBtn.Parent = farmTab
farmBtn.MouseButton1Click:Connect(function()
    print("Auto Farm ativado!")
end)

-- Aba Visual
local visualTab = Instance.new("Frame")
visualTab.Name = "Visual"
visualTab.Size = UDim2.new(1, 0, 1, 0)
visualTab.BackgroundTransparency = 1
visualTab.Parent = contentFrame

local visualBtn = Instance.new("TextButton")
visualBtn.Size = UDim2.new(0, 200, 0, 50)
visualBtn.Position = UDim2.new(0, 20, 0, 20)
visualBtn.Text = "🌈 Visual Mod"
visualBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
visualBtn.BackgroundColor3 = Color3.fromRGB(200, 100, 255)
visualBtn.Font = Enum.Font.GothamBold
visualBtn.TextSize = 22
visualBtn.Parent = visualTab
visualBtn.MouseButton1Click:Connect(function()
    print("Visual Mod ativado!")
end)

-- Aba Extras
local extrasTab = Instance.new("Frame")
extrasTab.Name = "Extras"
extrasTab.Size = UDim2.new(1, 0, 1, 0)
extrasTab.BackgroundTransparency = 1
extrasTab.Parent = contentFrame

local extrasBtn = Instance.new("TextButton")
extrasBtn.Size = UDim2.new(0, 200, 0, 50)
extrasBtn.Position = UDim2.new(0, 20, 0, 20)
extrasBtn.Text = "🌀 Teleport"
extrasBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
extrasBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 100)
extrasBtn.Font = Enum.Font.GothamBold
extrasBtn.TextSize = 22
extrasBtn.Parent = extrasTab
extrasBtn.MouseButton1Click:Connect(function()
    print("Teleport ativado!")
end)

-- Botões de abas
createTabButton("Farm", 0)
createTabButton("Visual", 40)
createTabButton("Extras", 80)

-- Mostrar aba inicial
showTab("Farm")
