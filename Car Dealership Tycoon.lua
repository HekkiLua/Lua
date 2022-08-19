-- Ссылка на Библиотеку
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
--[[ 
В данный момент стоит тема "RJTheme3" ,
поменять тему ниже -
"RJTheme1"
"RJTheme2"
"RJTheme3"
"RJTheme4"
"RJTheme5"
"RJTheme6"
"RJTheme7"
"RJTheme8"
///////////////////////////////////////////////////////////////

]]
--[[
local colors = {
    -- Цвет фона у Секций
    SchemeColor = Color3.fromRGB(0, 0, 0),
    -- Цвет фона в правой части UI
    Background = Color3.fromRGB(255, 0, 0),
    -- Цвет фона в левой части UI
    Header = Color3.fromRGB(255, 0, 0),
    -- Цвет текста
    TextColor = Color3.fromRGB(255,255,255),
    -- Цвет фона у кнопок
    ElementColor = Color3.fromRGB(20, 20, 20)
}
]]
-- Создать окно UI
local Window = Library.CreateLib("Made By aEx#9116", "RJTheme5")

-- Секция
local Tab = Window:NewTab("Player")

-- Подсекция
local Section = Tab:NewSection("PLayer")

-- Заголовок
Section:NewLabel("Wait next update to GUI :D")

--[[ 
В данный момент стоит тема "RJTheme3"
поменять тему ниже -
"RJTheme1"
"RJTheme2"
"RJTheme3"
"RJTheme4"
"RJTheme5"
"RJTheme6"
"RJTheme7"
"RJTheme8"
//////////////////////////////////////////////////////////////////


--[[
local colors = {
    -- Цвет фона у Секций
    SchemeColor = Color3.fromRGB(150, 72, 148),
    -- Цвет фона в правой части UI
    Background = Color3.fromRGB(15,15,15),
    -- Цвет фона в левой части UI
    Header = Color3.fromRGB(15,15,15),
    -- Цвет текста
    TextColor = Color3.fromRGB(255,255,255),
    -- Цвет фона у кнопок
    ElementColor = Color3.fromRGB(20, 20, 20)
}
]]

-- Кнопка
Section:NewButton("CarSpeed", "Big Speed For you any car", function()
    local Accel = 50
local GearSpeed = 999
for i,v in pairs(getgc(true)) do
   if type(v) == "table" and rawget(v,"GearSpeeds") ~= nil then
       wait()
v.GearSpeeds[1] = GearSpeed
v.GearSpeeds[2] = GearSpeed
v.GearSpeeds[3] =GearSpeed
v.GearSpeeds[4] =GearSpeed
v.GearSpeeds[5] = GearSpeed
v.GearAccels[1] = Accel
v.GearAccels[2] = Accel
v.GearAccels[3] = Accel
v.GearAccels[4] = Accel
v.GearAccels[5] = Accel
v.GearAccels[R] = Accel
end
end
end)

-- Дропдаун
Section:NewDropdown("PlayerSpeed", "You can change you speed", {"Speed 16", "Speed 100", "Speed 200"}, function(asd)
    if asd == "Speed 16" then
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
elseif asd == "Speed 100" then 
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
    elseif asd == "Speed 200" then
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 200
end
end)
