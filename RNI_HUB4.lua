
-- RNI HUB V1 | PURPLE EDITION
-- Interface de démonstration Roblox

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "RNI_HUB"
gui.ResetOnSpawn = false

local main = Instance.new("Frame")
main.Size = UDim2.fromOffset(290, 330)
main.Position = UDim2.new(0.5, -145, 0.5, -165)
main.BackgroundColor3 = Color3.fromRGB(35, 15, 65)
main.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 14)
corner.Parent = main

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -70, 0, 50)
title.Position = UDim2.fromOffset(12, 0)
title.BackgroundTransparency = 1
title.Text = "💜 RNI HUB"
title.TextColor3 = Color3.fromRGB(210, 160, 255)
title.TextSize = 23
title.Font = Enum.Font.GothamBold
title.Parent = main

local function makeButton(name, y, callback)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -30, 0, 43)
    button.Position = UDim2.fromOffset(15, y)
    button.BackgroundColor3 = Color3.fromRGB(105, 55, 180)
    button.Text = name
    button.TextColor3 = Color3.new(1, 1, 1)
    button.TextSize = 15
    button.Font = Enum.Font.GothamBold
    button.Parent = main

    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, 9)
    c.Parent = button

    button.MouseButton1Click:Connect(callback)
end

local status = Instance.new("TextLabel")
status.Size = UDim2.new(1, -30, 0, 35)
status.Position = UDim2.fromOffset(15, 285)
status.BackgroundTransparency = 1
status.Text = "RNI HUB prêt 💜"
status.TextColor3 = Color3.fromRGB(220, 200, 255)
status.TextSize = 13
status.Parent = main

makeButton("🔎 Egg Finder (Demo)", 65, function()
    status.Text = "Egg Finder : démonstration"
end)

makeButton("🛡️ Anti Hit (Demo)", 120, function()
    status.Text = "Anti Hit : démonstration"
end)

makeButton("🌐 Server Hop (Demo)", 175, function()
    status.Text = "Server Hop : démonstration"
end)

makeButton("❌ Fermer", 230, function()
    gui:Destroy()
end)

gui.Parent = player:WaitForChild("PlayerGui")
