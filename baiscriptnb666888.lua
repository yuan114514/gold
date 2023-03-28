-- Inside PingHandler (Script) -- 
 
local PingRemote = script.Parent.Handler.GetPing
 
PingRemote.OnServerEvent:Connect(function(Player)
    PingRemote:FireClient(Player)
end)
 
-- Inside Handler (LocalScript) --
 
local RunService = game:GetService("RunService")
local PingRemote = script.GetPing
 
local FPSCounter = script.Parent.Holder.FPS
local PingCounter = script.Parent.Holder.Ping
 
local Colors = {
    Good = Color3.fromRGB(0, 255, 0),
    Normal = Color3.fromRGB(255, 255, 0),
    Bad = Color3.fromRGB(255, 0, 0)
}
 
function GetPing()
    local Send = tick()
    local Ping = nil
 
    PingRemote:FireServer()
 
    local Receive; Receive = PingRemote.OnClientEvent:Connect(function()
        Ping = tick() - Send 
    end)
 
    wait(1)
 
    Receive:Disconnect()
 
    return Ping or 999
end
 
RunService.RenderStepped:Connect(function(TimeBetween)
    local FPS = math.floor(1 / TimeBetween)
 
    FPSCounter.Text = tostring(FPS)
 
    if FPS >= 50 then
        FPSCounter.TextColor3 = Colors.Good
 
    elseif FPS >= 30 then
        FPSCounter.TextColor3 = Colors.Normal
 
    elseif FPS >= 0 then
        FPSCounter.TextColor3 = Colors.Bad
 
    end
end)
 
local PingThread = coroutine.wrap(function()
    while wait() do
        local Ping = tonumber(string.format("%.3f", GetPing() * 1000))
        PingCounter.Text = (math.floor(Ping)).." ms"
 
        if Ping <= 100 then
            PingCounter.TextColor3 = Colors.Good
 
        elseif Ping > 199  then
            PingCounter.TextColor3 = Colors.Normal
 
        elseif Ping > 900 then
            PingCounter.TextColor3 = Colors.Normal
 
        end
    end
end)
 
PingThread()

restorebutton = Instance.new("ScreenGui",game:GetService("CoreGui"))
bai = Instance.new("TextButton",restorebutton)
bai.BackgroundColor3 = Color3.new(0/255,0/255,0/255)
bai.BorderColor3 = Color3.new(0/255,255/255,255/255)
bai.BorderSizePixel = 3
bai.Position = UDim2.new(1,-700,1,-23)
bai.Size = UDim2.new(0,100,0,20)
bai.Font = "SourceSans"
bai.FontSize = "Size18"
bai.Text = "点击播放音乐"
bai.TextColor3 = Color3.new(255/255,255/255,255/255)

bai.MouseButton1Down:connect(function()
Spooky = Instance.new("Sound", game.Workspace)
Spooky.Name = "Spooky"
Spooky.SoundId = "rbxassetid://1839246711"
Spooky.Volume = 50000
Spooky.Looped = true
Spooky:Play()
end)

if game.PlaceId == 189707 then
    loadstring(game:HttpGet('https://raw.githubusercontent.com/yuan114514/bai-Natural-Disaster-Survival/main/bai.lua'))()
end

if game.PlaceId == 6516141723 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Doors/Script.lua"))()
end

if game.PlaceId == 9872472334 then
    loadstring(game:HttpGet('https://raw.githubusercontent.com/9Strew/roblox/main/gamescripts/evade.lua'))()
end

if game.PlaceId == 7991339063 then
    print("auto win loaded, made by Finny")

local lp = game.Players.LocalPlayer.Character.HumanoidRootPart
repeat wait(2) until workspace.GroupBuildStructures:FindFirstChild("BlockTower")

print("starting")

for i,v in pairs(workspace:GetChildren()) do
    if v.Name:find("Block") then
		v.TouchTrigger.CFrame = lp.CFrame
        task.wait(.1)
		firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.GroupBuildStructures.BlockTower.Trigger, 0)
        task.wait(.1)
		firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.GroupBuildStructures.BlockTower.Trigger, 1)
		task.wait(.1)
    end
end

if workspace:FindFirstChild('Block24') then
	workspace:FindFirstChild('Block24').TouchTrigger.CFrame = lp.CFrame
end

wait(1)

firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.GroupBuildStructures.BlockTower.Trigger, 0)
task.wait(.1)
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.GroupBuildStructures.BlockTower.Trigger, 1)

wait(1)
repeat wait(2) until workspace.GroupBuildStructures:FindFirstChild("FoodCounter")

for i,v in pairs(workspace:GetChildren()) do
    if v.Name:find("Food") then
		v.TouchTrigger.CFrame = lp.CFrame
        task.wait(.1)
		firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.GroupBuildStructures.FoodCounter.Trigger, 0)
        task.wait(.1)
		firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.GroupBuildStructures.FoodCounter.Trigger, 1)
		task.wait(.1)
    end
end

wait(1)

firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.GroupBuildStructures.FoodCounter.Trigger, 0)
task.wait(.1)
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.GroupBuildStructures.FoodCounter.Trigger, 1)

wait(1)
repeat wait(2) until workspace.GroupBuildStructures:FindFirstChild("FuseBoard")

for i,v in pairs(workspace:GetChildren()) do
    if v.Name:find("Fuse") then
		v.TouchTrigger.CFrame = lp.CFrame
        task.wait(.1)
		firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.GroupBuildStructures.FuseBoard.Trigger, 0)
        task.wait(.1)
		firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.GroupBuildStructures.FuseBoard.Trigger, 1)
		task.wait(.1)
    end
end

wait(1)

firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.GroupBuildStructures.FuseBoard.Trigger, 0)
task.wait(.1)
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.GroupBuildStructures.FuseBoard.Trigger, 1)

wait(1)
repeat wait(2) until workspace.GroupBuildStructures:FindFirstChild("BatteryBox")

for i,v in pairs(workspace:GetChildren()) do
    if v.Name:find("Battery") then
		v.TouchTrigger.CFrame = lp.CFrame
        task.wait(.1)
		firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.GroupBuildStructures.BatteryBox.Trigger, 0)
        task.wait(.1)
		firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.GroupBuildStructures.BatteryBox.Trigger, 1)
		task.wait(.1)
    end
end

wait(1)

firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.GroupBuildStructures.BatteryBox.Trigger, 0)
task.wait(.1)
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.GroupBuildStructures.BatteryBox.Trigger, 1)

wait(1)
repeat wait(2) until workspace.GroupBuildStructures:FindFirstChild("TicketMachine")

firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,workspace.Ticket.TouchTrigger,0)
task.wait(.1)
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,workspace.Ticket.TouchTrigger,1)
task.wait(.1)
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,workspace.GroupBuildStructures.TicketMachine.Trigger,0)
task.wait(.1)
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,workspace.GroupBuildStructures.TicketMachine.Trigger,1)

while wait(4) do
    lp.CFrame = CFrame.new(Vector3.new(-404, 19, 647))
end

-- made by Finny
-- Original script blox thread: https://scriptblox.com/script/Rainbow-Friends-Auto-Win-BEST-6014 (for others websites that copy from scriptblox)
end
