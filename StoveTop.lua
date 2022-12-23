local upper = script.Parent.Parent.Parent --So I don't have to write this 20 times
--This script controlls all stoves turning on
--Script made by SILK_joy
script.Parent.Transparency = 1
script.Parent.Fire.Enabled = false
upper.BR.Hitbox.Transparency = 1
upper.BR.Hitbox.Fire.Enabled = false
upper.TL.Hitbox.Fire.Enabled = false
upper.TL.Hitbox.Transparency = 1
upper.TR.Hitbox.Fire.Enabled = false
upper.TR.Hitbox.Transparency = 1
--Before game runs, everything should be off

function BottomLeft() --Bottom Left Stove turning on
	script.Parent.Stove:Play()
	script.Parent.Fire.Enabled = true
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

script.Parent.ClickDetector.MouseClick:Connect(BottomLeft)
upper.BR.Hitbox.ClickDetector.MouseClick:Connect(BottomRight)
upper.TL.Hitbox.ClickDetector.MouseClick:Connect(TopLeft)
upper.TR.Hitbox.ClickDetector.MouseClick:Connect(TopRight)
--Calling all functions when the correct part is clicked


--This portion of the script controls the stoves turning off
upper.BLoff.Transparency = 1
upper.BRoff.Transparency = 1
upper.TLoff.Transparency = 1
upper.TRoff.Transparency = 1

function BOTTOMLoff() -- Bottom Left stove turning off
	script.Parent.Off:Play()
	script.Parent.Fire.Enabled = false
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
