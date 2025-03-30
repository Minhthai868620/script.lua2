-- Tạo bảng
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 250)
frame.Position = UDim2.new(0.5, -150, 0.5, -125)
frame.BackgroundTransparency = 0.5
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.Parent = game.StarterGui.ScreenGui

-- Tạo tiêu đề
local title = Instance.new("TextLabel")
title.Text = "Đơn Xin"
title.FontSize = Enum.FontSize.Size24
title.BackgroundTransparency = 1
title.TextColor3 = Color3.new(0, 0, 0)
title.Size = UDim2.new(0, 100, 0, 30)
title.Position = UDim2.new(0.5, -50, 0, 10)
title.Parent = frame

-- Tạo trường nhập đơn
local donLabel = Instance.new("TextLabel")
donLabel.Text = "Đơn:"
donLabel.FontSize = Enum.FontSize.Size18
donLabel.BackgroundTransparency = 1
donLabel.TextColor3 = Color3.new(0, 0, 0)
donLabel.Size = UDim2.new(0, 50, 0, 30)
donLabel.Position = UDim2.new(0, 10, 0.2, -15)
donLabel.Parent = frame

local donField = Instance.new("TextBox")
donField.PlaceholderText = "Nhập đơn xin"
donField.FontSize = Enum.FontSize.Size18
donField.BackgroundTransparency = 0.5
donField.BackgroundColor3 = Color3.new(1, 1, 1)
donField.Size = UDim2.new(0, 200, 0, 30)
donField.Position = UDim2.new(0.3, -100, 0.2, -15)
donField.Parent = frame

-- Tạo trường nhập tên
local nameLabel = Instance.new("TextLabel")
nameLabel.Text = "Tên:"
nameLabel.FontSize = Enum.FontSize.Size18
nameLabel.BackgroundTransparency = 1
nameLabel.TextColor3 = Color3.new(0, 0, 0)
nameLabel.Size = UDim2.new(0, 50, 0, 30)
nameLabel.Position = UDim2.new(0, 10, 0.4, -15)
nameLabel.Parent = frame

local nameField = Instance.new("TextBox")
nameField.PlaceholderText = "Nhập tên của bạn"
nameField.FontSize = Enum.FontSize.Size18
nameField.BackgroundTransparency = 0.5
nameField.BackgroundColor3 = Color3.new(1, 1, 1)
nameField.Size = UDim2.new(0, 200, 0, 30)
nameField.Position = UDim2.new(0.3, -100, 0.4, -15)
nameField.Parent = frame

-- Tạo trường hiển thị tên đã che
local hiddenNameField = Instance.new("TextLabel")
hiddenNameField.Text = ""
hiddenNameField.FontSize = Enum.FontSize.Size18
hiddenNameField.BackgroundTransparency = 1
hiddenNameField.TextColor3 = Color3.new(0, 0, 0)
hiddenNameField.Size = UDim2.new(0, 200, 0, 30)
hiddenNameField.Position = UDim2.new(0.5, -100, 0.6, -15)
hiddenNameField.Parent = frame

-- Tạo nút gửi
local sendButton = Instance.new("TextButton")
sendButton.Text = "Gửi"
sendButton.FontSize = Enum.FontSize.Size18
sendButton.BackgroundTransparency = 0.5
sendButton.BackgroundColor3 = Color3.new(1, 1, 1)
sendButton.Size = UDim2.new(0, 100, 0, 30)
sendButton.Position = UDim2.new(0.5, -50, 0.8, -15)
sendButton.Parent = frame

-- Tạo thông báo khi script chạy thành công
local successMessage = Instance.new("TextLabel")
successMessage.Text = "Script chạy thành công!"
successMessage.FontSize = Enum.FontSize.Size18
successMessage.BackgroundTransparency = 1
successMessage.TextColor3 = Color3.new(0, 1, 0)
successMessage.Size = UDim2.new(0, 200, 0, 30)
successMessage.Position = UDim2.new(0.5, -100, 0.9, -15)
successMessage.Parent = frame
successMessage.Visible = false  -- Ẩn thông báo thành công ban đầu

-- Xử lý sự kiện khi nhấn nút "Gửi"
sendButton.MouseButton1Click:Connect(function()
    -- Lấy giá trị từ các trường nhập liệu
    local donText = donField.Text
    local nameText = nameField.Text
    
    -- Hiển thị tên người dùng đã nhập vào trường hiển thị tên đã che
    hiddenNameField.Text = nameText
    
    -- Thực hiện một hành động khi nhấn gửi (ví dụ, hiển thị thông báo thành công)
    successMessage.Visible = true

    -- Ẩn thông báo sau 3 giây
    wait(3)
    successMessage.Visible = false
end)