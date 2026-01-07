local ReplicatedStorage = game:GetService("ReplicatedStorage")
local React = require(ReplicatedStorage.Packages.react) 
local Button = require(script.Parent.Parent.Components.Button)
local ImageButton = require(script.Parent.Parent.Components.ImageButton)

local Icons = require(ReplicatedStorage.Shared.assets.Icons)

local element = React.createElement

return function()
  return element("Frame", {
    Size = UDim2.fromScale(1, 1),
    BackgroundTransparency = 0.5,
  }, {
    HeaderButtons = element("Frame", {
      BackgroundTransparency = 1,
      Size = UDim2.new(1, -175, 0, 50),
      Position = UDim2.new(1, 0, 0, -50),
      AnchorPoint = Vector2.new(1, 0)
    }, {
      FlexLayout = element("UIListLayout", {
        FillDirection = Enum.FillDirection.Horizontal,
        Padding = UDim.new(0, 10)
      }),

      SettingsButton = element(ImageButton, {
        size = UDim2.fromOffset(50, 50)
      }, {
        element("UICorner", {
          CornerRadius = UDim.new(0, 50)
        })
      }),

      InventoryButton = element(ImageButton, {
        size = UDim2.fromOffset(50, 50)
      }, {
        element("UICorner", {
          CornerRadius = UDim.new(0, 50)
        })
      }),

      CosmeticButton = element(ImageButton, {
        size = UDim2.fromOffset(50, 50)
      }, {
        element("UICorner", {
          CornerRadius = UDim.new(0, 50)
        })
      })
    })
  })
end