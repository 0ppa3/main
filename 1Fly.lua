-- Ładowanie biblioteki GUI
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("+1 Fly Every Second") -- Tworzenie okna

local b = w:CreateFolder("Race") -- Tworzenie folderu

-- Zmienne do kontroli stanu skryptu
local isScriptEnabled = false

b:Toggle("Wins AutoFarm", function(bool)
    isScriptEnabled = bool
    print("Script Enabled:", isScriptEnabled)
end)

-- Funkcja wykonywana, gdy skrypt jest włączony (na podstawie zmiennej "isScriptEnabled")
while true do
    if isScriptEnabled then
        game:GetService("ReplicatedStorage").Events.Win:FireServer()
    end
    wait() -- Poczekaj krótką chwilę, aby nie obciążać nadmiernie CPU
end

-- Dodajmy przycisk "Destroy GUI"
b:Button("Destroy GUI", function()
    w:Destroy() -- Usuń GUI
end)

-- Tworzenie skryptu do kontrolowania GUI
getgenv().a = true -- true is on, false is off

while getgenv().a do
    game:GetService("ReplicatedStorage").Events.Win:FireServer()
    task.wait()
end
