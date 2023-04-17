--if you want the crosshair to only show

--crosshair hide
game.Players.LocalPlayer.PlayerGui.ChildAdded:Connect(function(child)
    if tostring(child) == "GunGUI" then
        game:GetService("Players").LocalPlayer.PlayerGui.GunGUI.Crosshair.Main.Center:GetPropertyChangedSignal("BackgroundTransparency"):Connect(function() 
            game:GetService("Players").LocalPlayer.PlayerGui.GunGUI.Crosshair.Main.Center.BackgroundTransparency = -0.4
        end)
    end
end)


--when equip, gun inviislbe
game.Players.LocalPlayer.CharacterAdded:Connect(function()
    game.Players.LocalPlayer.Character.ChildAdded:Connect(function(child)
        if child.ClassName == "Tool" then
            wait(0.01)
            local gun = game:GetService("Workspace").Camera.ViewmodelStorage:GetChildren()[1]
            local bodyParts = {"RightHand", "RightLowerArm", "RightUpperArm", "LeftHand", "LeftLowerArm", "LeftUpperArm"}
        
            for i,v in pairs(gun:GetDescendants()) do
                if v.ClassName == "MeshPart" and not table.find(bodyParts, tostring(v)) then
                    pcall(function() v.Transparency = 1 end)
                end
            end
        end
    end)
end)
