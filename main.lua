game.Players.LocalPlayer.PlayerGui.ChildAdded:Connect(function(child)
    if tostring(child) == "GunGUI" then
        game:GetService("Players").LocalPlayer.PlayerGui.GunGUI.Crosshair.Main.Center:GetPropertyChangedSignal("BackgroundTransparency"):Connect(function() 
            game:GetService("Players").LocalPlayer.PlayerGui.GunGUI.Crosshair.Main.Center.BackgroundTransparency = -0.4
        end)
    end
end)
