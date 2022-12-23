local upper = script.Parent.Parent.Parent --So I don't have to write this 20 times
--This script controlls all stoves turning on

script.Parent.Transparency = 1 --Script's Parent's Transparency set to 1 (invisible).
script.Parent.Fire.Enabled = false --Script's Parent Fire is disabled ; fire is one of the script's parents child
upper.BR.Hitbox.Transparency = 1 -- BR is one of the script parents child ; BR stands for Bottom Right
upper.BR.Hitbox.Fire.Enabled = false
upper.TL.Hitbox.Fire.Enabled = false
upper.TL.Hitbox.Transparency = 1
upper.TR.Hitbox.Fire.Enabled = false
upper.TR.Hitbox.Transparency = 1
--Before game runs, everything should be off

function BottomLeft() --Bottom Left Stove turning on
	script.Parent.Stove:Play() --Plays the Stove Turning on sound
	script.Parent.Fire.Enabled = true --Enables the Fire
end

function BottomRight() --Bottom Right Stove turning on
	script.Parent.Stove:Play()
	upper.BR.Hitbox.Fire.Enabled = true
end

function TopLeft() --Top Left stove turning on
	script.Parent.Stove:Play()
	upper.TL.Hitbox.Fire.Enabled = true
end

function TopRight() --Top Right stove turning on
	script.Parent.Stove:Play()
	upper.TR.Hitbox.Fire.Enabled = true
end
--Each of these functions are declaring what to do when they are called. In this case, it's turning on the Stove.

script.Parent.ClickDetector.MouseClick:Connect(BottomLeft) --ClickDector is one of the children of script.Parent, has an event named MouseClick which is exactly as it sounds.
upper.BR.Hitbox.ClickDetector.MouseClick:Connect(BottomRight) --The Connect thing is telling the event to play the correct function when event occures.
upper.TL.Hitbox.ClickDetector.MouseClick:Connect(TopLeft)
upper.TR.Hitbox.ClickDetector.MouseClick:Connect(TopRight)
--Calling all functions when the correct part is clicked


--This portion of the script controls the stoves turning off
upper.BLoff.Transparency = 1 --Making all the hitboxes transparent
upper.BRoff.Transparency = 1
upper.TLoff.Transparency = 1
upper.TRoff.Transparency = 1

function BOTTOMLoff() -- Bottom Left stove turning off
	script.Parent.Off:Play() --Off sound playing
	script.Parent.Fire.Enabled = false --Turning off the fire
end

function BOTTOMRoff() -- Bottom Right stove turning off
	script.Parent.Off:Play()
	upper.BR.Hitbox.Fire.Enabled = false
end

function TOPLoff() --Top Left stove turning off
	script.Parent.Off:Play()
	upper.TL.Hitbox.Fire.Enabled = false
end

function TOPRoff() -- Top Right stove turning off
	script.Parent.Off:Play()
	upper.TR.Hitbox.Fire.Enabled = false
end

upper.BLoff.ClickDetector.MouseClick:Connect(BOTTOMLoff)
upper.BRoff.ClickDetector.MouseClick:Connect(BOTTOMRoff)
upper.TLoff.ClickDetector.MouseClick:Connect(TOPLoff)
upper.TRoff.ClickDetector.MouseClick:Connect(TOPRoff)
--Calling all functions when the correct part is clicked
