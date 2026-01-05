local ReplicatedStorage = game:GetService("ReplicatedStorage");
local Players = game:GetService("Players");
local React = require(ReplicatedStorage.Packages.react);
local ReactRoblox = require(ReplicatedStorage.Packages["react-roblox"])

local element = React.createElement

local function App() 
  return element("ScreenGui", {
    ResetOnSpawn = false
  }, {
    Label = element("TextLabel", {
			Text = "Hello from React Lua 👋",
			Size = UDim2.fromScale(0.5, 0.2),
			Position = UDim2.fromScale(0.25, 0.4),
			TextScaled = true,
			BackgroundTransparency = 0.2,
		})
  })
end

local playerGui = Players.LocalPlayer:WaitForChild("PlayerGui")
local root = ReactRoblox.createRoot(playerGui)

root:render(element(App))