-- 🔥 TRIO ONE MAIN CHEAT 🔥
-- FE SERVER SCRIPT VERSION
-- MADE BY ACE

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Lighting = game:GetService("Lighting")
local Debris = game:GetService("Debris")

print("✅ TRIO ONE MAIN CHEAT LOADED")

-- 📌 LOADING SCREEN
game.Players.PlayerAdded:Connect(function(player)
	local gui = Instance.new("ScreenGui")
	gui.ResetOnSpawn = false
	gui.Parent = player:WaitForChild("PlayerGui")

	local frame = Instance.new("Frame")
	frame.Size = UDim2.new(1,0,1,0)
	frame.BackgroundColor3 = Color3.fromRGB(0,0,0)
	frame.Parent = gui

	local title = Instance.new("TextLabel")
	title.Text = "TRIO ONE MAIN CHEAT"
	title.Size = UDim2.new(1,0,0.2,0)
	title.Position = UDim2.new(0,0,0.3,0)
	title.Font = Enum.Font.GothamBold
	title.TextScaled = true
	title.TextColor3 = Color3.fromRGB(255,0,0)
	title.Parent = frame

	local sub = Instance.new("TextLabel")
	sub.Text = "ISA KANG TANGA"
	sub.Size = UDim2.new(1,0,0.1,0)
	sub.Position = UDim2.new(0,0,0.55,0)
	sub.Font = Enum.Font.Gotham
	sub.TextScaled = true
	sub.TextColor3 = Color3.fromRGB(255,255,255)
	sub.Parent = frame

	local made = Instance.new("TextLabel")
	made.Text = "MADE BY ACE"
	made.Size = UDim2.new(1,0,0.1,0)
	made.Position = UDim2.new(0,0,0.7,0)
	made.Font = Enum.Font.GothamBold
	made.TextScaled = true
	made.TextColor3 = Color3.fromRGB(0,255,0)
	made.Parent = frame

	task.wait(5)
	gui:Destroy()
end)

-- 📌 SKYBOX CHANGER
local function changeSkybox()
	local sky = Instance.new("Sky")
	sky.SkyboxBk = "rbxassetid://98812414674004"
	sky.SkyboxDn = "rbxassetid://98812414674004"
	sky.SkyboxFt = "rbxassetid://98812414674004"
	sky.SkyboxLf = "rbxassetid://98812414674004"
	sky.SkyboxRt = "rbxassetid://98812414674004"
	sky.SkyboxUp = "rbxassetid://98812414674004"
	sky.Parent = Lighting
	print("🌌 Skybox Changed!")
end
changeSkybox()

-- 📌 FE ESP
local function addESP(player)
	if player.Character then
		for _, part in ipairs(player.Character:GetChildren()) do
			if part:IsA("BasePart") then
				local box = Instance.new("BoxHandleAdornment")
				box.Size = part.Size + Vector3.new(0.1,0.1,0.1)
				box.Adornee = part
				box.Color3 = Color3.fromRGB(0,255,0)
				box.Transparency = 0.5
				box.AlwaysOnTop = true
				box.ZIndex = 10
				box.Parent = part
			end
		end
	end
end
Players.PlayerAdded:Connect(function(plr)
	plr.CharacterAdded:Connect(function()
		task.wait(1)
		addESP(plr)
	end)
end)
for _,plr in pairs(Players:GetPlayers()) do
	if plr.Character then addESP(plr) end
end

-- 📌 FE GUN SPAWNER (ReplicatedStorage)
local function spawnGun(player, toolName)
	local tool = ReplicatedStorage:FindFirstChild(toolName)
	if tool then
		local clone = tool:Clone()
		clone.Parent = player.Backpack
		print("🔫 Spawned "..toolName.." for "..player.Name)
	end
end

-- 📌 TOOL DUPLICATOR
local function dupeTools(player)
	for _, tool in ipairs(player.Backpack:GetChildren()) do
		if tool:IsA("Tool") then
			local clone = tool:Clone()
			clone.Parent = player.Backpack
		end
	end
	print("📀 Tools duplicated for "..player.Name)
end

-- 📌 PASABOG NG SYUDAD
local function pasabog()
	for _, plr in ipairs(Players:GetPlayers()) do
		if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
			local exp = Instance.new("Explosion")
			exp.Position = plr.Character.HumanoidRootPart.Position
			exp.BlastRadius = 20
			exp.BlastPressure = 500000
			exp.Parent = workspace
		end
	end
	print("💥 PASABOG NG SYUDAD Triggered!")
end

-- 📌 VIRUS SCREEN
local function virusScreen(player)
	local gui = Instance.new("ScreenGui")
	gui.ResetOnSpawn = false
	gui.Parent = player:WaitForChild("PlayerGui")

	local frame = Instance.new("Frame")
	frame.Size = UDim2.new(1,0,1,0)
	frame.BackgroundColor3 = Color3.fromRGB(255,0,0)
	frame.Parent = gui

	local label = Instance.new("TextLabel")
	label.Size = UDim2.new(1,0,1,0)
	label.Text = "⚠️ SYSTEM HACKED BY TRIO ONE MAIN CHEAT ⚠️"
	label.TextColor3 = Color3.fromRGB(255,255,255)
	label.TextScaled = true
	label.Font = Enum.Font.GothamBold
	label.Parent = frame
end

-- 📌 CRASH SERVER
local function crashServer()
	while true do
		Instance.new("Part").Parent = workspace
	end
end

-- 📌 CHAT COMMANDS (;fly, ;kill, ;god)
Players.PlayerAdded:Connect(function(player)
	player.Chatted:Connect(function(msg)
		if msg == ";fly" then
			if player.Character and player.Character:FindFirstChild("Humanoid") then
				player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Physics)
				print(player.Name.." is flying!")
			end
		elseif msg:sub(1,5) == ";kill" then
			local name = msg:sub(7)
			local target = Players:FindFirstChild(name)
			if target and target.Character and target.Character:FindFirstChild("Humanoid") then
				target.Character.Humanoid.Health = 0
			end
		elseif msg == ";god" then
			if player.Character and player.Character:FindFirstChild("Humanoid") then
				player.Character.Humanoid.MaxHealth = math.huge
				player.Character.Humanoid.Health = math.huge
			end
		elseif msg == ";pasabog" then
			pasabog()
		elseif msg == ";crash" then
			crashServer()
		elseif msg == ";virus" then
			virusScreen(player)
		elseif msg:sub(1,6) == ";spawn" then
			local toolName = msg:sub(8)
			spawnGun(player, toolName)
		elseif msg == ";dupe" then
			dupeTools(player)
		end
	end)
end)

print("🔥 TRIO ONE MAIN CHEAT READY!")