_G.auto = false 
_G.rb = false

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("Running Sim")

local b = w:CreateFolder("Main")
local d = w:CreateFolder("by 0p_pa")


local function Money()
    while _G.auto do
        local args = {
    [1] = "Collect",
    [2] = "100"
}

game:GetService("ReplicatedStorage").Remotes.Money:FireServer(unpack(args))

        local args = {
    [1] = "Collect",
    [2] = "100"
}

game:GetService("ReplicatedStorage").Remotes.Money:FireServer(unpack(args))

        wait(0.00001)
    end
end

b:Toggle("Money", function(bool)
    _G.auto = bool 

    if _G.auto then
        spawn(Money)
    end
end)

local function rb()
    while _G.auto do
game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer('Rebirth')
        wait()
    end
end

b:Toggle("Rebirth", function(bool)
    _G.auto = bool 

    if _G.auto then
        spawn(rb)
    end
end)
