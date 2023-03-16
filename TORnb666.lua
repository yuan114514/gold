game.Lighting.MainColorCorrection.TintColor = Color3.fromRGB(61, 171, 98)
game.Lighting.MainColorCorrection.Contrast = 0.2
game.Lighting.MainColorCorrection.Saturation = -0.7
local tween = game:GetService("TweenService")
tween:Create(game.Lighting.MainColorCorrection, TweenInfo.new(5), {Contrast = 0}):Play()
tween:Create(game.Lighting.MainColorCorrection, TweenInfo.new(5), {Saturation = 0}):Play()
local TweenService = game:GetService("TweenService")
local TW = TweenService:Create(game.Lighting.MainColorCorrection, TweenInfo.new(5),{TintColor = Color3.fromRGB(255, 255, 255)})
TW:Play()
local cue1 = Instance.new("Sound")
cue1.Parent = game.Workspace
cue1.Name = "Scream"
cue1.SoundId = "rbxassetid://9114397505"
local distort = Instance.new("DistortionSoundEffect")
distort.Parent = cue1
distort.Level = 1
local distort2 = Instance.new("DistortionSoundEffect")
distort2.Parent = cue1
distort2.Level = 1
local pitch = Instance.new("PitchShiftSoundEffect")
pitch.Parent = cue1
pitch.Octave = 0.5
local pitch2 = Instance.new("PitchShiftSoundEffect")
pitch2.Parent = cue1
pitch2.Octave = 0.5
local pitch3 = Instance.new("PitchShiftSoundEffect")
pitch3.Parent = cue1
pitch3.Octave = 0.5
cue1.Volume = 0.1
cue1:Play()
local cue2 = Instance.new("Sound")
cue2.Parent = game.Workspace
cue2.Name = "Spawn"
cue2.SoundId = "rbxassetid://9114221327"
cue2.Volume = 3
cue2:Play()
local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local camara = game.Workspace.CurrentCamera
local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
	camara.CFrame = camara.CFrame * shakeCf
end)
camShake:Start()
camShake:ShakeOnce(10,3,0.1,6,2,0.5)
wait(0.1)

function GetGitSound(GithubSnd,SoundName)
	local url=GithubSnd
	if not isfile(SoundName..".mp3") then
		writefile(SoundName..".mp3", game:HttpGet(url))
	end
	local sound=Instance.new("Sound")
	sound.SoundId=(getcustomasset or getsynasset)(SoundName..".mp3")
	return sound
end

local scare = Instance.new("Sound")
scare.Parent = game.Workspace
scare.Name = "MyEarsBurn"
scare.SoundId = "rbxassetid://5567523008"
scare.PlaybackSpeed = 3
scare.Volume = 1

local shift = Instance.new("PitchShiftSoundEffect")
shift.Octave = 0.5
shift.Parent = scare

local distort = Instance.new("DistortionSoundEffect")
distort.Parent = scare
distort.Level = 1

local TweenService = game:GetService("TweenService")
local spookee = TweenService:Create(scare, TweenInfo.new(0.3),{Volume = 0})

local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity

local entity = Creator.createEntity({
    CustomName = "Rebound", -- Custom name of your entity
    Model = "rbxassetid://11411313091", -- Can be GitHub file or rbxassetid
    Speed = 80, -- Percentage, 100 = default Rush speed
    DelayTime = 1.4, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    BreakLights = false,
    KillRange = 50,
    BackwardsMovement = true,
    FlickerLights = {
        false, -- Enabled
        2.5, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 1
    },
    CamShake = {
        true, -- Enabled
        {5, 15, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled ('false' if you don't want jumpscare)
        {
            Image1 = "https://www.roblox.com/library/11862656491", -- Image1 url
            Image2 = "https://www.roblox.com/library/11862656491", -- Image2 url
            Shake = false,
            Sound1 = {
                0, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                5567523008, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled
                Color3.fromRGB(6, 38, 135), -- Color
            },
            Tease = {
                false, -- Enabled ('false' if you don't want tease)
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You died to Rebound...", "It appears at the next door and has a chance to stay there or run back to the latest door.", "He will come back many times after his initial spawn", "so hide every next door until it is safe.."}, -- Custom death message (can be as long as you want)
})

-----[[ Advanced ]]-----

entity.Debug.OnEntityEnteredRoom = function(room)
    print("Entity:", entity, "has entered room:", room)
    Speed = 0
    wait(2)
    Speed = 80
end

entity.Debug.OnEntitySpawned = function(entityModel)
    print("Entity has spawned:", entityModel)
workspace.Rebound.Rebound_Cue:Destroy()
workspace.Rebound.Rebound_Cue2:Destroy()
workspace.Rebound.Torso.Idle:Destroy()
workspace.Rebound.Torso.Footsteps:Destroy()
local bruh = workspace.Rebound.Torso
local TweenService = game:GetService("TweenService")
local spawn = Instance.new("Sound")
spawn.Parent = bruh
spawn.Name = "ReboundSpawn"
spawn.SoundId = "rbxassetid://9114221327"
spawn.Volume = 5
spawn.RollOffMaxDistance = 10000
spawn.RollOffMinDistance = 450
spawn:Play()
    local move = GetGitSound("https://github.com/check78/worldcuuuup/blob/main/DoomBegin.mp3?raw=true","Reboun")
    move.Parent = bruh
    move.Name = "ReboundMoving"
    move.Volume = 0
    move.Looped = true
local vroom = TweenService:Create(move, TweenInfo.new(2),{Volume = 0.2})
    local distort = Instance.new("DistortionSoundEffect")
    distort.Level = 0.75
    distort.Parent = move
	move.RollOffMaxDistance = 200
	move.RollOffMinDistance = 100
    local tree = Instance.new("TremoloSoundEffect")
    tree.Depth = 1
    tree.Duty = 1
    tree.Frequency = 5
    tree.Parent = move
    local eq = Instance.new("EqualizerSoundEffect")
    eq.HighGain = -60
    eq.MidGain = 10
    eq.LowGain = 10
    eq.Parent = move
	wait(1)
    vroom:Play()
	move:Play()
end

entity.Debug.OnEntityDespawned = function(entityModel)
    print("Entity has despawned:", entityModel)
end

entity.Debug.OnEntityStartMoving = function(entityModel)
    print("Entity has started moving:", entityModel)
end

entity.Debug.OnEntityFinishedRebound = function(entityModel)
    print("Entity finished rebound:", entityModel)
end

entity.Debug.OnDeath = function()
    warn("You died.")

    firesignal(game.ReplicatedStorage.EntityInfo.DeathHint.OnClientEvent, {"You died to Rebound...", "It appears at the next door and has a chance to stay there or run back to the latest door.", "He will come back many times after his initial spawn", "so hide every next door until it is safe.."}, "Blue")

	local ReSt = game.ReplicatedStorage
	local Plr = game.Players.LocalPlayer

		scare:Play()
	    ReSt.GameStats["Player_".. Plr.Name].Total.DeathCause.Value = "Rebound"
		wait(0.5)
		scare:Destroy()

end

------------------------

-- Run the created entity
Creator.runEntity(entity)

local randomnumber = math.random(3,5)
print(randomnumber)

for i = 3,randomnumber do
	game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
wait(1)

function GetGitSound(GithubSnd,SoundName)
	local url=GithubSnd
	if not isfile(SoundName..".mp3") then
		writefile(SoundName..".mp3", game:HttpGet(url))
	end
	local sound=Instance.new("Sound")
	sound.SoundId=(getcustomasset or getsynasset)(SoundName..".mp3")
	return sound
end

local scare = Instance.new("Sound")
scare.Parent = game.Workspace
scare.Name = "MyEarsBurn"
scare.SoundId = "rbxassetid://5567523008"
scare.PlaybackSpeed = 3
scare.Volume = 1

local shift = Instance.new("PitchShiftSoundEffect")
shift.Octave = 0.5
shift.Parent = scare

local distort = Instance.new("DistortionSoundEffect")
distort.Parent = scare
distort.Level = 1

local TweenService = game:GetService("TweenService")

local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity

local entity = Creator.createEntity({
    CustomName = "Rebound", -- Custom name of your entity
    Model = "rbxassetid://11411313091", -- Can be GitHub file or rbxassetid
    Speed = 80, -- Percentage, 100 = default Rush speed
    DelayTime = 1.4, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    BreakLights = false,
    KillRange = 50,
    BackwardsMovement = true,
    FlickerLights = {
        false, -- Enabled
        2.5, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 1
    },
    CamShake = {
        true, -- Enabled
        {5, 15, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled ('false' if you don't want jumpscare)
        {
            Image1 = "https://www.roblox.com/library/11862656491", -- Image1 url
            Image2 = "https://www.roblox.com/library/11862656491", -- Image2 url
            Shake = false,
            Sound1 = {
                0, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                5567523008, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled
                Color3.fromRGB(6, 38, 135), -- Color
            },
            Tease = {
                false, -- Enabled ('false' if you don't want tease)
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You died to Rebound...", "It appears at the next door and has a chance to stay there or run back to the latest door.", "He will come back many times after his initial spawn", "so hide every next door until it is safe.."}, -- Custom death message (can be as long as you want)
})

-----[[ Advanced ]]-----

entity.Debug.OnEntityEnteredRoom = function(room)
    print("Entity:", entity, "has entered room:", room)
    Speed = 0
    wait(2)
    Speed = 80
end

entity.Debug.OnEntitySpawned = function(entityModel)
    print("Entity has spawned:", entityModel)
workspace.Rebound.Rebound_Cue:Destroy()
workspace.Rebound.Rebound_Cue2:Destroy()
workspace.Rebound.Torso.Idle:Destroy()
workspace.Rebound.Torso.Footsteps:Destroy()
local bruh = workspace.Rebound.Torso
local TweenService = game:GetService("TweenService")
local spawn = Instance.new("Sound")
spawn.Parent = bruh
spawn.Name = "ReboundSpawn"
spawn.SoundId = "rbxassetid://9114221327"
spawn.Volume = 5
spawn.RollOffMaxDistance = 10000
spawn.RollOffMinDistance = 450
spawn:Play()
    local move = GetGitSound("https://github.com/check78/worldcuuuup/blob/main/DoomBegin.mp3?raw=true","Reboun")
    move.Parent = bruh
    move.Name = "ReboundMoving"
    move.Volume = 0
    move.Looped = true
local vroom = TweenService:Create(move, TweenInfo.new(2),{Volume = 0.2})
    local distort = Instance.new("DistortionSoundEffect")
    distort.Level = 0.75
    distort.Parent = move
	move.RollOffMaxDistance = 200
	move.RollOffMinDistance = 100
    local tree = Instance.new("TremoloSoundEffect")
    tree.Depth = 1
    tree.Duty = 1
    tree.Frequency = 5
    tree.Parent = move
    local eq = Instance.new("EqualizerSoundEffect")
    eq.HighGain = -60
    eq.MidGain = 10
    eq.LowGain = 10
    eq.Parent = move
	wait(1)
    vroom:Play()
	move:Play()
end

entity.Debug.OnEntityDespawned = function(entityModel)
    print("Entity has despawned:", entityModel)
end

entity.Debug.OnEntityStartMoving = function(entityModel)
    print("Entity has started moving:", entityModel)
end

entity.Debug.OnEntityFinishedRebound = function(entityModel)
    print("Entity finished rebound:", entityModel)
end

entity.Debug.OnDeath = function()
    warn("You died.")

    firesignal(game.ReplicatedStorage.EntityInfo.DeathHint.OnClientEvent, {"You died to Rebound...", "It appears at the next door and has a chance to stay there or run back to the latest door.", "He will come back many times after his initial spawn", "so hide every next door until it is safe.."}, "Blue")

	local ReSt = game.ReplicatedStorage
	local Plr = game.Players.LocalPlayer

		scare:Play()
	    ReSt.GameStats["Player_".. Plr.Name].Total.DeathCause.Value = "Rebound"
		wait(0.5)
		scare:Destroy()

end

------------------------

-- Run the created entity
Creator.runEntity(entity)
end
print("Laps ended. Done.")
wait(3)
local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

-- Creates and displays your custom achievement
Achievements.Get({
    Title = "I Always Come Back.",
    Desc = "Encounter Rebound.",
    Reason = " ",
    Image = "https://github.com/check78/worldcuuuup/blob/main/ReboundBadgeV2.png?raw=true",
}) 
