local contestants = workspace.Contestants:GetChildren()
for _, contestant in ipairs(contestants) do
    if contestant:FindFirstChild("Torso") then
        game.Players.LocalPlayer.Backpack["Zap Ray"].ZapShoot:FireServer(workspace.Contestants[contestant].Torso.Position)
        wait(0.05)
    end
end
