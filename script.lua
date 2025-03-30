local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Parent = player:FindFirstChild("PlayerGui") or player:WaitForChild("PlayerGui")

-- Tạo bảng chính
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 250)
frame.Position = UDim2.new(0.5, -150, 0.5, -125)
frame.BackgroundTransparency = 0.5
frame.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
frame.Parent = gui

-- Tiêu đề
local title = Instance.new("TextLabel")
title.Text = "Đơn Xin"
title.TextSize = 24
title.BackgroundTransparency = 1
title.TextColor3 = Color3.new(0, 0, 0)
title.Size = UDim2.new(1, 0, 0, 30)
title.Position = UDim2.new(0, 0, 0, 10)
title.Parent = frame

-- Ô nhập Đơn
local donField = Instance.new("TextBox")
donField.PlaceholderText = "Nhập đơn xin"
donField.TextSize = 18
donField.BackgroundTransparency = 0.5
donField.BackgroundColor3 = Color3.new(1, 1, 1)
donField.Size = UDim2.new(0.8, 0, 0, 30)
donField.Position = UDim2.new(0.1, 0, 0.2, 0)
donField.Parent = frame

-- Ô nhập Tên
local nameField = Instance.new("TextBox")
nameField.PlaceholderText = "Nhập tên của bạn"
nameField.TextSize = 18
nameField.BackgroundTransparency = 0.5
nameField.BackgroundColor3 = Color3.new(1, 1, 1)
nameField.Size = UDim2.new(0.8, 0, 0, 30)
nameField.Position = UDim2.new(0.1, 0, 0.4, 0)
nameField.Parent = frame

-- Trường hiển thị tên ẩn danh
local hiddenNameField = Instance.new("TextLabel")
hiddenNameField.Text = "Tên: ***"
hiddenNameField.TextSize = 18
hiddenNameField.BackgroundTransparency = 1
hiddenNameField.TextColor3 = Color3.new(0, 0, 0)
hiddenNameField.Size = UDim2.new(0.8, 0, 0, 30)
hiddenNameField.Position = UDim2.new(0.1, 0, 0.6, 0)
hiddenNameField.Parent = frame

-- Nút Gửi
local sendButton = Instance.new("TextButton")
sendButton.Text = "Gửi"
sendButton.TextSize = 18
sendButton.BackgroundTransparency = 0.5
sendButton.BackgroundColor3 = Color3.new(0, 1, 0)
sendButton.Size = UDim2.new(0.5, 0, 0, 30)
sendButton.Position = UDim2.new(0.25, 0, 0.8, 0)
sendButton.Parent = frame

-- Thông báo thành công
local successMessage = Instance.new("TextLabel")
successMessage.Text = "Gửi thành công!"
successMessage.TextSize = 18
successMessage.BackgroundTransparency = 1
successMessage.TextColor3 = Color3.new(0, 1, 0)
successMessage.Size = UDim2.new(1, 0, 0, 30)
successMessage.Position = UDim2.new(0, 0, 0.9, 0)
successMessage.Parent = frame
successMessage.Visible = false

-- Xử lý sự kiện khi nhấn nút "Gửi"
sendButton.MouseButton1Click:Connect(function()
    local donText = donField.Text
    local nameText = nameField.Text

    -- Ẩn danh bằng cách chỉ hiển thị ký tự đầu tiên
    if nameText ~= "" then
        hiddenNameField.Text = "Tên: " .. string.sub(nameText, 1, 1) .. "***"
    end

    successMessage.Visible = true
    wait(3)
    successMessage.Visible = false
end)