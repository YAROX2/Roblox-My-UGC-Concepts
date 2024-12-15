game.Players.LocalPlayer.Character:PivotTo(CFrame.new(Vector3.new(-317.86, 35.97, -351.62)))
game.Players.LocalPlayer.Character:PivotTo(CFrame.new(Vector3.new(-306.14, 35.97, -353.99)))
game.Players.LocalPlayer.Character:PivotTo(CFrame.new(Vector3.new(-294.15, 35.97, -356.45)))
game.Players.LocalPlayer.Character:PivotTo(CFrame.new(Vector3.new(-282.54, 35.97, -359.23)))
game.Players.LocalPlayer.Character:PivotTo(CFrame.new(Vector3.new(-270.58, 35.97, -361.31)))
game.Players.LocalPlayer.Character:PivotTo(CFrame.new(Vector3.new(-317.86, 25.97, -351.62)))
game.Players.LocalPlayer.Character:PivotTo(CFrame.new(Vector3.new(-306.14, 25.97, -353.99)))
game.Players.LocalPlayer.Character:PivotTo(CFrame.new(Vector3.new(-294.15, 25.97, -356.45)))
game.Players.LocalPlayer.Character:PivotTo(CFrame.new(Vector3.new(-282.54, 25.97, -359.23)))
game.Players.LocalPlayer.Character:PivotTo(CFrame.new(Vector3.new(-270.58, 25.97, -361.31)))
local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player.PlayerGui

-- Создаём текстовое поле для отображения координат
local coordinatesLabel = Instance.new("TextLabel")
coordinatesLabel.Size = UDim2.new(0, 300, 0, 50)  -- Размер текста
coordinatesLabel.Position = UDim2.new(0, 10, 0, 10)  -- Позиция текста на экране
coordinatesLabel.TextColor3 = Color3.fromRGB(255, 255, 255)  -- Цвет текста (белый)
coordinatesLabel.BackgroundTransparency = 1  -- Прозрачный фон
coordinatesLabel.TextScaled = true  -- Масштабировать текст
coordinatesLabel.Parent = screenGui

-- Функция для обновления координат
local function updateCoordinates()
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local humanoidRootPart = player.Character.HumanoidRootPart
        local position = humanoidRootPart.Position
        
        -- Форматируем координаты с точностью до сотых
        local x = string.format("%.2f", position.X)
        local y = string.format("%.2f", position.Y)
        local z = string.format("%.2f", position.Z)

        -- Обновляем текст на экране
        coordinatesLabel.Text = "X: " .. x .. " Y: " .. y .. " Z: " .. z
    end
end

-- Обновляем координаты каждую секунду
while true do
    updateCoordinates()
    wait(1)
end
