local ReplicatedStorage = game:GetService("ReplicatedStorage")
local React = require(ReplicatedStorage.Packages.react) 
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
        Padding = UDim.new(0, 10),
        SortOrder = Enum.SortOrder.LayoutOrder
      }),

      SettingsButton = element(ImageButton, {
        size = UDim2.fromOffset(40, 40),
        image = Icons["Settings"],
        backgroundColor = Color3.fromRGB(28,31,36),
        backgroundTransparency = 0.1,
        layoutOrder = 1,
      }, {
        element("UICorner", {
          CornerRadius = UDim.new(0, 50)
        })
      }),

      InventoryButton = element(ImageButton, {
        size = UDim2.fromOffset(40, 40),
        image = Icons["Backpack"],
        backgroundColor = Color3.fromRGB(28,31,36),
        backgroundTransparency = 0.1,
        layoutOrder = 2,
      }, {
        element("UICorner", {
          CornerRadius = UDim.new(0, 50)
        })
      }),

      CosmeticButton = element(ImageButton, {
        size = UDim2.fromOffset(40, 40),
        image = Icons["Tools"],
        backgroundColor = Color3.fromRGB(28,31,36),
        backgroundTransparency = 0.1,
        layoutOrder = 3,
      }, {
        element("UICorner", {
          CornerRadius = UDim.new(0, 50)
        })
      })
    })
  })
end