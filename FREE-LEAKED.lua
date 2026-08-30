-- Adryan Hub - Menu Principal
local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Criar GUI principal
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 500, 0, 320)
frame.Position = UDim2.new(0.5, -250, 0.5, -160)
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

-- Botão Auto Farm
local autoFarmBtn = Instance.new("TextButton")
autoFarmBtn.Size = UDim2.new(0, 220, 0, 50)
autoFarmBtn.Position = UDim2.new(0, 20, 0, 80)
autoFarmBtn.Text = "⚡ Auto Farm"
autoFarmBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
autoFarmBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
autoFarmBtn.Font = Enum.Font.GothamBold
autoFarmBtn.TextSize = 22
autoFarmBtn.Parent = frame

local afCorner = Instance.new("UICorner")
afCorner.CornerRadius = UDim.new(0, 10)
afCorner.Parent = autoFarmBtn

autoFarmBtn.MouseButton1Click:Connect(function()
    print("Auto Farm ativado!")
    -- Coloque aqui o código do Auto Farm
end)

-- Botão Teleport
local tpBtn = Instance.new("TextButton")
tpBtn.Size = UDim2.new(0, 220, 0, 50)
tpBtn.Position = UDim2.new(0, 20, 0, 150)
tpBtn.Text = "🌀 Teleport"
tpBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
tpBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 100)
tpBtn.Font = Enum.Font.GothamBold
tpBtn.TextSize = 22
tpBtn.Parent = frame

local tpCorner = Instance.new("UICorner")
tpCorner.CornerRadius = UDim.new(0, 10)
tpCorner.Parent = tpBtn

tpBtn.MouseButton1Click:Connect(function()
    print("Teleport ativado!")
    -- Coloque aqui o código de teleport
end)

-- Botão Configurações
local settingsBtn = Instance.new("TextButton")
settingsBtn.Size = UDim2.new(0, 220, 0, 50)
settingsBtn.Position = UDim2.new(0, 20, 0, 220)
settingsBtn.Text = "⚙️ Configurações"
settingsBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
settingsBtn.BackgroundColor3 = Color3.fromRGB(255, 140, 0)
settingsBtn.Font = Enum.Font.GothamBold
settingsBtn.TextSize = 22
settingsBtn.Parent = frame

local stCorner = Instance.new("UICorner")
stCorner.CornerRadius = UDim.new(0, 10)
stCorner.Parent = settingsBtn

settingsBtn.MouseButton1Click:Connect(function()
    print("Abrindo Configurações...")
    -- Coloque aqui opções extras
end)

-- Botão Fechar Hub
local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 220, 0, 50)
closeBtn.Position = UDim2.new(0, 260, 0, 220)
closeBtn.Text = "❌ Fechar Hub"
closeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
closeBtn.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextSize = 22
closeBtn.Parent = frame

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 10)
closeCorner.Parent = closeBtn

closeBtn.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)
