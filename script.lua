local s = game.Players.LocalPlayer.PlayerGui.MainGui:FindFirstChild("Scoreboard")
local Message = s.Parent.Message

s.Position = UDim2.new(1,0,-0.02,0)

writefile("Clock.txt", tostring(s.Clock.Text))
writefile("Pclock.txt", s.Playclock.TextLabel.Text)
writefile("Status.txt", s.Status.Text)
writefile("Homescore.txt", s.HomeScore.TextLabel.Text)
writefile("Awayscore.txt", s.AwayScore.TextLabel.Text)
writefile('FGYards.txt', s.Yardline.Text)

game.RunService.Stepped:Connect(function()

end)

s.Clock:GetPropertyChangedSignal("Text"):Connect(function()
    local clockDataLine = s.Clock.Text
    writefile("Clock.txt", clockDataLine)
end)

s.Playclock.TextLabel:GetPropertyChangedSignal("Text"):Connect(function()
    local playclockDataLine = s.Playclock.TextLabel.Text
    writefile("Pclock.txt", playclockDataLine)
end)

s.Status:GetPropertyChangedSignal("Text"):Connect(function()
    local statusDataLine = s.Status.Text
    writefile("Status.txt", statusDataLine)
end)

s.HomeScore.TextLabel:GetPropertyChangedSignal("Text"):Connect(function()
    local homeScoreDataLine = s.HomeScore.TextLabel.Text
    writefile("Homescore.txt", homeScoreDataLine)
end)

s.AwayScore.TextLabel:GetPropertyChangedSignal("Text"):Connect(function()
    local awayScoreDataLine = s.AwayScore.TextLabel.Text
    writefile("Awayscore.txt", awayScoreDataLine)
end)

s.Yardline:GetPropertyChangedSignal("Text"):Connect(function()
    local yardlineDataLine = s.Yardline.Text
    writefile("Yardline.txt", yardlineDataLine)
end)

game:GetService("RunService").Heartbeat:Connect(function()
    -- Additional logic to be executed every frame
end)
