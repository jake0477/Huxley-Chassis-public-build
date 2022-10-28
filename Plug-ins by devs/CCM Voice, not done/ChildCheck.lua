

local lights = script.Parent.Parent.Body.Lights.Dome.DLights
local CanTrigger = script.CanTrigger
local CCMS = script.Parent.CCMSounds
local Domes = script.Parent.Parent.Body.ChildCheckButton.Click.Domes
local CCV = script.Parent.Parent.Body.ChildCheckButton.Click.CCV
local BusSettings = require(script.Parent.Parent.DriveSeat.BusSettings)
local ts = game:GetService("TweenService")
local Tinfo = TweenInfo.new(.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false)
local functions = require(script.Parent.Parent.DriveSeat.BusFunctions)

script.Parent.BusSetup.Values.IsOn.Changed:Connect(function()
	if script.Parent.BusSetup.Values.IsOn.Value == false and script.Parent.Occupant ~= nil then
		wait(1)
		CanTrigger.Value = true
    if CCV.value == true then
      CCMS.CCA:Play()
    end
		if Domes.Value == true then
			script.Parent.BusSetup.Lighting.Dome.Value = true
		end
	end
end)
