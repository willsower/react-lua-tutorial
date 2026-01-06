local ReplicatedStorage = game:GetService("ReplicatedStorage")
local React = require(ReplicatedStorage.Packages.react)

local element = React.createElement

return function()
  return element("TextButton", {
    Text = "Click Me",
    Size = UDim2.fromOffset(100, 100),
    Position = UDim2.fromScale(0.5, 0.5),
    AnchorPoint = Vector2.new(0.5, 0.5)
  })
end