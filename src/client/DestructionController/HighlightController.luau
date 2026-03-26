local HighlightController = {} -- client side controller for handling highlighting of destructible objects

HighlightController.CurrentHighlight = nil -- only update highlight when this changes

function HighlightController.Highlight(target)
    -- add highlight to target

    if HighlightController.CurrentHighlight then
        HighlightController.CurrentHighlight:Destroy()
    end

    if target == nil then
        HighlightController.CurrentHighlight = nil
        return
    end

    local highlight = Instance.new("Highlight")
    highlight.Adornee = target
    highlight.FillColor = Color3.fromRGB(255, 0, 0)
    highlight.FillTransparency = 0.5
    highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
    highlight.OutlineTransparency = 0
    highlight.Parent = target
    HighlightController.CurrentHighlight = highlight
end


return HighlightController