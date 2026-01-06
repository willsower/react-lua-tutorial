local ReplicatedStorage = game:GetService("ReplicatedStorage")
local React = require(ReplicatedStorage.Packages.react) 
local Button = require(script.Parent.Parent.Components.Button)

local element = React.createElement

return function()
  return element("Frame", {
    Size = UDim2.fromScale(1, 1),
    BackgroundTransparency = 1,
  }, {
    MyButton = element(Button)
  })
end