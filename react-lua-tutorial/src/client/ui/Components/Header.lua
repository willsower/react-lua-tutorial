local ReplicatedStorage = game:GetService("ReplicatedStorage")
local React = require(ReplicatedStorage.Packages.react)

local ImageButton = require(script.Parent.Parent.Lib.ImageButton)
local Icons = require(ReplicatedStorage.Shared.assets.Icons)
local element = React.createElement

return function(props) 
  local isHovering, setIsHovering = React.useState(false)

  return element("Frame", {
    Size = UDim2.new(1, 0, 0, 60),
		BackgroundTransparency = 1,
    Position = UDim2.new(0, -20, 0, -45)
  }, {
    Layout = element("UIListLayout", {
      FillDirection = Enum.FillDirection.Horizontal,
      HorizontalAlignment = Enum.HorizontalAlignment.Right,
      Padding = UDim.new(0, 10)
    }),

    HelpButton = element(ImageButton, {
      layoutOrder = 1,
      image = Icons["Help"],
      size = UDim2.fromOffset(30, 30),
      backgroundTransparency = 0.1,
      backgroundColor = isHovering and Color3.fromRGB(49, 54, 62) or Color3.fromRGB(28,31,36),

      onMouseEnter = function()
        setIsHovering(true)
      end,
      onMouseLeave = function()
        setIsHovering(false)
      end,
    }, {
      element("UICorner", {
        CornerRadius = UDim.new(0, 50)
      })
    })
  })
end