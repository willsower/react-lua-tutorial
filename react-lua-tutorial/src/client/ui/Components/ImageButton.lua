local ReplicatedStorage = game:GetService("ReplicatedStorage")
local React = require(ReplicatedStorage.Packages.react)

local element = React.createElement

return function(props)
  return element("ImageButton", {
    Size = props.size or UDim2.fromOffset(50, 50),
    Image = props.image,
    BackgroundColor3 = props.backgroundColor,
    BackgroundTransparency = props.backgroundTransparency or 0.5,
    LayoutOrder = props.layoutOrder
  }, props.children)
end