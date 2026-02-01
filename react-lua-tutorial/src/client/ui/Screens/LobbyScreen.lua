local ReplicatedStorage = game:GetService("ReplicatedStorage")
local React = require(ReplicatedStorage.Packages.react)

local Header = require(script.Parent.Parent.Components.Header)
local element = React.createElement

return function(props)
  return element("Frame", {
    Size = UDim2.fromScale(1, 1),
    BackgroundTransparency = 0.5,
  }, {
    Header = element(Header)
  })
end