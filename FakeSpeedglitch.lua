return function(OFFSET)
	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	local char = player.Character or player.CharacterAdded:Wait()

	local root = char:WaitForChild("HumanoidRootPart")

	OFFSET = OFFSET or 10

	for _, v in ipairs(char:GetChildren()) do
		if v.Name == "offset" then
			v:Destroy()
		end
	end

	local part = Instance.new("Part")
	part.Name = "offset"
	part.Size = Vector3.new(3,3,3)
	part.Transparency = 1
	part.CanCollide = false
	part.Anchored = false
	part.Massless = false
	part.Parent = char

	local weld = Instance.new("Weld")
	weld.Part0 = root
	weld.Part1 = part
	weld.C0 = CFrame.new(OFFSET, 0, 0)
	weld.Parent = root

	return part
end
