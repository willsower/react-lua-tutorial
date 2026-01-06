local ReplicatedStorage = game:GetService("ReplicatedStorage")
local React = require(ReplicatedStorage.Packages.react)
local Screens = require(script.Parent.Screens)

local element = React.createElement

return function()
  local currentScreen, setCurrentScreen = React.useState("Home")

  return element("ScreenGui", {
    ResetOnSpawn = false
  }, {
    Screen = element(Screens[currentScreen])
  })
end