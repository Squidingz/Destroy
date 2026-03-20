local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

local MouseController = {}

function MouseController.CaptureMouseData()
    return mouse.Hit
end

return MouseController