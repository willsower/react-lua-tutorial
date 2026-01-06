local ReplicatedStorage = game:GetService("ReplicatedStorage")
local React = require(ReplicatedStorage.Packages.react)

local element = React.createElement

return function(props)
  return element("TextButton", {
    Text = props.text or "Button",
    Size = props.size or UDim2.fromOffset(100, 100),
    Position = props.position or UDim2.fromScale(0.5, 0.5),
    AnchorPoint = props.anchorPoint or Vector2.new(0.5, 0.5),

    [React.Event.Activated] = function()
      if props.onClick then
        props.onClick()
      end
    end,
  })
end