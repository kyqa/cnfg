local s = game.Players.LocalPlayer.PlayerGui.MainGui:FindFirstChild("Scoreboard")
local Message = s.Parent.Message

s.Position = UDim2.new(1,0,-0.02,0)

writefile("Clock.txt", tostring(s.Clock.Text))
writefile("Pclock.txt", s.Playclock.TextLabel.Text)
writefile("Status.txt", s.Status.Text)
writefile("Homescore.txt", s.HomeScore.TextLabel.Text)
writefile("Awayscore.txt", s.AwayScore.TextLabel.Text)




game.RunService.Stepped:Connect(function()
    writefile('Yardline.txt', Message.Text)
    
    Message.Font = Enum.Font.JosefinSans
    Message.TextColor3 = Color3.fromRGB(255, 255, 255)
    Message.TextScaled = false
    Message.TextSize = 65.000
    Message.TextWrapped = true
    Message.TextStrokeColor3 = Color3.fromRGB(0,0,0)
    
    local Logo = Message.Parent.Transition.NameLogo
    local Replay = Message.Parent.Transition.Message
    
    if Message.Parent:FindFirstChild("ReplayDetails") then
       Message.Parent.ReplayDetails:Destroy() 
    end
end)

s.Clock:GetPropertyChangedSignal("Text"):Connect(function()
writefile("Clock.txt", s.Clock.Text)
end)


s.Status:GetPropertyChangedSignal("Text"):Connect(function()
writefile("Status.txt", s.Status.Text)
end)

s.Playclock.TextLabel:GetPropertyChangedSignal("Text"):Connect(function()
writefile("Pclock.txt", s.Playclock.TextLabel.Text)
end)

s.HomeScore.TextLabel:GetPropertyChangedSignal("Text"):Connect(function()
writefile("Homescore.txt", s.HomeScore.TextLabel.Text)
end)

s.AwayScore.TextLabel:GetPropertyChangedSignal("Text"):Connect(function()
writefile("Awayscore.txt", s.AwayScore.TextLabel.Text)
end)
