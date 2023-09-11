local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("+1 Fly Every Second") 

local b = w:CreateFolder("Race") 

local isScriptEnabled = false

b:Toggle("Wins AutoFarm", function(bool)
    isScriptEnabled = bool
    print("Script Enabled:", isScriptEnabled)
end)

while true do
    if isScriptEnabled then
        game:GetService("ReplicatedStorage").Events.Win:FireServer()
    end
    wait()
end

b:Button("Destroy GUI", function()
    w:Destroy()
end)

getgenv().a = true 

while getgenv().a do
    game:GetService("ReplicatedStorage").Events.Win:FireServer()
    task.wait()
end
