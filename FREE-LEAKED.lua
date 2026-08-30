--!strict
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

-- Criar GUI estilizada com efeitos
local function CreateKeyGUI()
    local screenGui = Instance.new("ScreenGui")
    screenGui.Parent = player:WaitForChild("PlayerGui")

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 420, 0, 240)
    frame.Position = UDim2.new(0.5, -210, 0.5, -120)
    frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    frame.BorderSizePixel = 0
    frame.BackgroundTransparency = 1
    frame.Parent = screenGui

    -- Fade-in suave
    TweenService:Create(frame, TweenInfo.new(1), {BackgroundTransparency = 0}):Play()

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 15)
    corner.Parent = frame

    local shadow = Instance.new("ImageLabel")
    shadow.Size = UDim2.new(1, 20, 1, 20)
    shadow.Position = UDim2.new(0, -10, 0, -10)
    shadow.Image = "rbxassetid://1316045217"
    shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    shadow.ImageTransparency = 0.5
    shadow.ScaleType = Enum.ScaleType.Slice
    shadow.SliceCenter = Rect.new(10,10,118,118)
    shadow.Parent = frame

    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, 0, 0, 50)
    title.BackgroundTransparency = 1
    title.Text = "🔑 Key System Premium"
    title.TextColor3 = Color3.fromRGB(255, 215, 0)
    title.Font = Enum.Font.GothamBold
    title.TextSize = 32
    title.Parent = frame

    local textBox = Instance.new("TextBox")
    textBox.Size = UDim2.new(0, 360, 0, 45)
    textBox.Position = UDim2.new(0.5, -180, 0, 70)
    textBox.PlaceholderText = "Digite sua chave..."
    textBox.Text = ""
    textBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    textBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    textBox.Font = Enum.Font.Gotham
    textBox.TextSize = 20
    textBox.Parent = frame

    local tbCorner = Instance.new("UICorner")
    tbCorner.CornerRadius = UDim.new(0, 10)
    tbCorner.Parent = textBox

    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 360, 0, 50)
    button.Position = UDim2.new(0.5, -180, 0, 130)
    button.Text = "Validar Key"
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.BackgroundColor3 = Color3.fromRGB(0, 140, 255)
    button.Font = Enum.Font.GothamBold
    button.TextSize = 22
    button.Parent = frame

    local btnCorner = Instance.new("UICorner")
    btnCorner.CornerRadius = UDim.new(0, 10)
    btnCorner.Parent = button

    local status = Instance.new("TextLabel")
    status.Size = UDim2.new(1, 0, 0, 40)
    status.Position = UDim2.new(0, 0, 0, 190)
    status.BackgroundTransparency = 1
    status.Text = ""
    status.TextColor3 = Color3.fromRGB(255, 255, 255)
    status.Font = Enum.Font.Gotham
    status.TextSize = 18
    status.Parent = frame

    button.MouseButton1Click:Connect(function()
        local key = textBox.Text
        if ValidateKey(key) then
            status.Text = "✅ Key válida! Carregando hub..."
            TweenService:Create(button, TweenInfo.new(0.5), {BackgroundColor3 = Color3.fromRGB(0, 200, 0)}):Play()
            wait(1)
            screenGui:Destroy()
            -- Carregar hub principal
            loadstring(game:HttpGet("https://raw.githubusercontent.com/chocolascript-glitch/MIRANDA-HUB-STEAL-AN-EGG/refs/heads/main/FREE-LEAKED"))()
        else
            status.Text = "❌ Key inválida!"
            TweenService:Create(button, TweenInfo.new(0.5), {BackgroundColor3 = Color3.fromRGB(200, 0, 0)}):Play()
            wait(2)
            player:Kick("Chave inválida ou não autorizada.")
        end
    end)
end

CreateKeyGUI()
