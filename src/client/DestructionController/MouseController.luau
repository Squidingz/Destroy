local MouseController = {}

local Mouse = game.Players.LocalPlayer:GetMouse()

MouseController.CurrentHover = nil -- only callback when this changes

function MouseController.Init(hoverCallback, clickCallback)
    --print("MouseController initialized.")

    -- start monitoring mouse
    -- callback information if the player hovers over a destructible object

    Mouse.Move:Connect(function()
        local target = Mouse.Target
        if target and target:GetAttribute("Destructible") then
            if MouseController.CurrentHover ~= target then
                MouseController.CurrentHover = target
                hoverCallback(target)
                print("Hovering over: " .. target.Name)
            end
        else
            if MouseController.CurrentHover ~= nil then
                MouseController.CurrentHover = nil
                hoverCallback(nil)
            end
        end
    end)

    Mouse.Button1Down:Connect(function()
        local target = Mouse.Target
        if target and target:GetAttribute("Destructible") then
            clickCallback(target)
        end
    end)
end

return MouseController