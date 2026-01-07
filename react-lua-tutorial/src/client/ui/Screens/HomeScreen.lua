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
    SettingsButton = element(ImageButton, {
      size = UDim2.fromOffset(100, 100),
      image = Icons["Settings"]
    })
  })
end