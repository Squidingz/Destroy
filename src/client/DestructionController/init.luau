-- prerequisites
local MouseController = require(script.MouseController)
local HighlightController = require(script.HighlightController)

local DestructionController = {} -- client side controller for destruction system

--[[
All destructible objects will have "Destructible" attribute.

]]

function DestructionController.Init()
    print("DestructionController initialized.")

    -- initialize mouse controller
    MouseController.Init(HighlightController.Highlight,DestructionController.HandleDestruction)
end

function DestructionController.HandleDestruction(target)
    -- handle destruction of target
    print("Destroying object: " .. target.Name)
    --target:Destroy()
end

return DestructionController