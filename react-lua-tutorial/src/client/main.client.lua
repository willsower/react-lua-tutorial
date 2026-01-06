local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local React = require(ReplicatedStorage.Packages.react) 
local ReactRoblox = require(ReplicatedStorage.Packages["react-roblox"])
local App = require(script.Parent.ui.App)

local element = React.createElement

local playerGui = Players.LocalPlayer:WaitForChild("PlayerGui")
local root = ReactRoblox.createRoot(playerGui)

root:render(element(App))