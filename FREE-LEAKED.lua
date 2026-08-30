[13:16, 30/08/2026] santosxz_rlq: --!strict
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer

-- Lista de chaves válidas
local Keys = {
    ["VIP001"] = true,
    ["VIP002"] = true,
    ["VIP003"] = true,
    ["VIP004"] = true,
    ["VIP005"] = true,
    ["VIP006"] = true,
    ["VIP007"] = true,
    ["VIP008"] = true,
    ["VIP009"] = true,
    ["VIP010"] = true
}

-- Função para validar chave
local function ValidateKey(key: string)
    return Keys[key] == true
end

-- Criar GUI estilizada
local function CreateKeyGUI()
    local screenGui = Instance.new("ScreenGui")
    screenGui.Parent = player:WaitForChild("PlayerGui")

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 420, 0, 240)
    fra…
[13:54, 30/08/2026] santosxz_rlq: -- 🔥 Adryan Hub Completo 🔥
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
title.Font = Enum.Font.…
