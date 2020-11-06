local CheatVersion = "1.4.3"


for _,v in pairs(game.workspace.Collectibles:GetChildren()) do
if string.find(v.Name,"") then
v:Destroy()
end
end 

local uis=game:GetService("UserInputService")
local nobodi = Instance.new("Sound")
local inputMinutes, inputSeconds, convertTime, farmTime, minutes, seconds = 1, 1, 60, 90, inputMinutes, inputSeconds
local TPTime = 600
local TPTimeToggle = false

local NewMenu = {

      -- Meniu Nou

      BaseMenu = 123,
      MainMenu = 123,
      Gradient = 123,
      CloseButton = 123,
      
      -- Meniu Nou end
}

-- Meniu Nou 
BaseMenu = Instance.new("ScreenGui")
BaseMenu.Parent = game.CoreGui

MainMenu = Instance.new("Frame")
MainMenu.Parent = BaseMenu
MainMenu.BackgroundColor3 = Color3.new(1, 1, 1)
MainMenu.BorderSizePixel = 0
MainMenu.Position = UDim2.new(0, 0, 0)
MainMenu.Size = UDim2.new(0, 540, 0, 25)
MainMenu.Selectable = true
MainMenu.Draggable = true 
MainMenu.Active = true

Gradient = Instance.new("ImageLabel")
Gradient.Parent = MainMenu
Gradient.Size = UDim2.new(0, 270, 0, 12)
Gradient.Image = "rbxassetid://5885947892"

CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0, 270, 0, 12)
CloseButton.Parent = MainMenu

-- Meniu Nou end

local s = Instance.new("Sound")
local isRainbow = false
local isSpeed = false
local tuoidz = "Sunflower Field"
local DarkCyberMainGUI = Instance.new("ScreenGui")
local MiniPage = Instance.new("Frame")
local Destroy = Instance.new("TextButton")
local GameText = Instance.new("TextLabel")
local MainPage = Instance.new("Frame")
local VersionText = Instance.new("TextButton")
local HomePage = Instance.new("Frame")
local ImageGang = Instance.new("ImageLabel")
local CreditText = Instance.new("TextLabel")
local JoinText = Instance.new("TextLabel")
local DiscordlinkTest = Instance.new("TextLabel")
local Copylinkdiscord = Instance.new("TextButton")
local TeleportTo32fdba = Instance.new("TextButton")
local RainbowButton = Instance.new("TextButton")
local TeleportToKillerTorchi = Instance.new("TextButton")
local TeleportToSalutDaniCeFaci = Instance.new("TextButton")
local FarmingPage = Instance.new("Frame")
local FieldSelectPage = Instance.new("ScrollingFrame")
local SunflowerButton = Instance.new("TextButton")
local MushroomButton = Instance.new("TextButton")
local SpiderButton = Instance.new("TextButton")
local BambooButton = Instance.new("TextButton")
local RoseButton = Instance.new("TextButton")
local PineTreeButton = Instance.new("TextButton")
local CactusButton = Instance.new("TextButton")
local PumpkinButton = Instance.new("TextButton")
local PineappleButton = Instance.new("TextButton")
local StumpButton = Instance.new("TextButton")
local MountainTopButton = Instance.new("TextButton")
local CoconutButton = Instance.new("TextButton")
local PepperButton = Instance.new("TextButton")
local StawberryButton = Instance.new("TextButton")
local BlueflowerButton = Instance.new("TextButton")
local DanrButton = Instance.new("TextButton")
local DanrButton_2 = Instance.new("TextButton")
local FieldSelectText = Instance.new("TextLabel")
local HoneyText = Instance.new("TextLabel")
local FieldText = Instance.new("TextLabel")
local TimeElapsedText = Instance.new("TextLabel")
local StartButton = Instance.new("TextButton")
local PollenToHoney = Instance.new("TextButton")
local CancelPollenToHoney = Instance.new("TextButton")
local FieldSelectText_2 = Instance.new("TextLabel")
local WaypointPage = Instance.new("ScrollingFrame")
local Suntp = Instance.new("TextButton")
local Mushtp = Instance.new("TextButton")
local Dantp = Instance.new("TextButton")
local Blueftp = Instance.new("TextButton")
local Clovertp = Instance.new("TextButton")
local Bambootp = Instance.new("TextButton")
local Spidertp = Instance.new("TextButton")
local Strawtp = Instance.new("TextButton")
local Castustp = Instance.new("TextButton")
local Pumtp = Instance.new("TextButton")
local Pintreetp = Instance.new("TextButton")
local Rosetp = Instance.new("TextButton")
local Toptp = Instance.new("TextButton")
local Coconuttp = Instance.new("TextButton")
local Stumptp = Instance.new("TextButton")
local Pineappletp = Instance.new("TextButton")
local Peppertp = Instance.new("TextButton")
local SummonSprouttp = Instance.new("TextButton")
local Coconutshoptp = Instance.new("TextButton")
local Petaltp = Instance.new("TextButton")
local Shopproctp = Instance.new("TextButton")
local Shoptoptp = Instance.new("TextButton")
local Shopmoontp = Instance.new("TextButton")
local Shopbasictp = Instance.new("TextButton")
local Shopsprinklertp = Instance.new("TextButton")
local InstantConversiontp = Instance.new("TextButton")
local MegaMemorytp = Instance.new("TextButton")
local NightMemorytp = Instance.new("TextButton")
local ExtremeMemorytp = Instance.new("TextButton")
local StartHalltp = Instance.new("TextButton")
local Anttp = Instance.new("TextButton")
local Demonmasktp = Instance.new("TextButton")
local TunelBeartp = Instance.new("TextButton")
local WindyBeetp = Instance.new("TextButton")
local Diamondmasktp = Instance.new("TextButton")
local Soon = Instance.new("TextButton")
local GummyMask = Instance.new("TextButton")
local Afkstumptp = Instance.new("TextButton")
local Kingamulettp = Instance.new("TextButton")
local ExtraPage = Instance.new("ScrollingFrame")
local Autodig = Instance.new("TextButton")
local Autobuffitem = Instance.new("TextButton")
local Killcoconutcrab = Instance.new("TextButton")
local KillTunnel = Instance.new("TextButton")
local Usenightbell = Instance.new("TextButton")
local Usefielddice = Instance.new("TextButton")
local Autokillvicious = Instance.new("TextButton")
local Autokillwindy = Instance.new("TextButton")
local Autokillmonster = Instance.new("TextButton")
local RemoteQuest = Instance.new("TextButton")
local Autogumdrop = Instance.new("TextButton")
local FindWindBee = Instance.new("TextButton")
local Useglitter = Instance.new("TextButton")
local Autogliter = Instance.new("TextButton")
local Autococonut = Instance.new("TextButton")
local Autostinger = Instance.new("TextButton")
local Eqipdemonmask = Instance.new("TextButton")
local Equipdemonmask = Instance.new("TextButton")
local Equipgummymask = Instance.new("TextButton")
local Automagicbean = Instance.new("TextButton")
local Bringtornado = Instance.new("TextButton")
local Killstumnail = Instance.new("TextButton")
local Dropweapon = Instance.new("TextButton")
local Noclip = Instance.new("TextButton")
local AutoDispenser = Instance.new("TextButton")
local Autotop = Instance.new("TextButton")
local AutoDispenser_2 = Instance.new("TextButton")
local Autored = Instance.new("TextButton")
local Autoblue = Instance.new("TextButton")
local ExtrasButton = Instance.new("TextButton")
local FarmingButton = Instance.new("TextButton")
local HomeButton = Instance.new("TextButton")
local Button1Minute = Instance.new("TextButton")
local Button2Minute = Instance.new("TextButton")
local Button3Minute = Instance.new("TextButton")
local Button4Minute = Instance.new("TextButton")
local Button5Minute = Instance.new("TextButton")
local _Button1_5Minute = Instance.new("TextButton")
local _Button2Minute = Instance.new("TextButton")
local _Button3Minute = Instance.new("TextButton")
local _Button5Minute = Instance.new("TextButton")
local _Button4Minute = Instance.new("TextButton")
local DiscordButton = Instance.new("TextButton")
local SettingButton = Instance.new("TextButton")
local WaypointsButton = Instance.new("TextButton")
local SettingPage = Instance.new("Frame")
local Close = Instance.new("TextButton")
local FarmingOptionsLogo = Instance.new("TextLabel")
local FarmingOptionsConvertText = Instance.new("TextLabel")
local FarmingOptionsFarmingText = Instance.new("TextLabel")
local FarmingOptionsConvertTime = Instance.new("TextLabel")
local FarmingOptionsFarmingTime = Instance.new("TextLabel")
local DarkCyberLoadingGUI = Instance.new("ScreenGui")
local LoadingFrame = Instance.new("Frame")
local FarmingOptions = Instance.new("Frame")
local Loadingimage = Instance.new("ImageLabel")
local Createtitle = Instance.new("TextLabel")
local NameTitle = Instance.new("TextLabel")
local Loadingtext = Instance.new("TextLabel")
local DarkCyberSynapshitGUI = Instance.new("ScreenGui")
local SynapShitPage = Instance.new("Frame")
local Createtitle = Instance.new("TextLabel")
local NameTitle = Instance.new("TextLabel")
local Welcome = Instance.new("TextLabel")
local HomeButtonDown = Instance.new("Frame")
--Properties:

HomeButtonDown.Name = "HomeButtonDown"
HomeButtonDown.Parent = MainPage
HomeButtonDown.BackgroundColor3 = Color3.new(0, 0, 0)
HomeButtonDown.BorderSizePixel = 0
HomeButtonDown.Position = UDim2.new(0.0171954892, 0, 0.0269999991, 0)
HomeButtonDown.Size = UDim2.new(0.979999996, 0, 0.1169999975, 0)

s.Name = "Sound"
s.SoundId = "rbxassetid://421058925"
s.Volume = 1
s.Pitch = 1
s.Looped = false
s.archivable = false
s.Parent = game.Workspace

nobodi.Name = "Sound"
nobodi.SoundId = "rbxassetid://5885947892"
nobodi.Volume = 10
nobodi.Pitch = 1
nobodi.Looped = false
nobodi.archivable = false
nobodi.Parent = game.Workspace

DarkCyberMainGUI.Name = "[DarkCyber]MainGUI"
DarkCyberMainGUI.Parent = game.CoreGui

MiniPage.Name = "MiniPage"
MiniPage.Parent = DarkCyberMainGUI
MiniPage.BackgroundColor3 = Color3.new(0, 0, 0)
MiniPage.BorderSizePixel = 0
MiniPage.Position = UDim2.new(0.331979187, 0, -0.7, 0)
MiniPage.Size = UDim2.new(0, 540, 0, 25)

Destroy.Name = "Destroy"
Destroy.Parent = MiniPage
Destroy.BackgroundColor3 = Color3.new(99, 99, 99)
Destroy.BackgroundTransparency = 1
Destroy.Position = UDim2.new(0.950854659, 4, 0, 0)
Destroy.Size = UDim2.new(0, 25, 0, 25)
Destroy.Font = Enum.Font.GothamBold
Destroy.Text = "X"
Destroy.TextColor3 = Color3.new(255, 1, 1)
Destroy.TextSize = 20

GameText.Name = "GameText"
GameText.Parent = MiniPage
GameText.BackgroundColor3 = Color3.new(0, 0, 0)
GameText.BackgroundTransparency = 1
GameText.Position = UDim2.new(0.337588102, 0, -0.0399999991, 0)
GameText.Size = UDim2.new(0.324587107, 0, 0.999999702, 0)
GameText.Font = Enum.Font.GothamBold
GameText.Text = "Kebab"
GameText.TextColor3 = Color3.new(1, 1, 1)
GameText.TextSize = 16

MainPage.Name = "MainPage"
MainPage.Parent = MiniPage
MainPage.Active = true
MainPage.BackgroundColor3 = Color3.new(0.14117647058, 0.14117647058, 0.14117647058)
MainPage.BorderSizePixel = 0
MainPage.Position = UDim2.new(0, 0, 1.0016675, 0)
MainPage.Selectable = true
MainPage.Size = UDim2.new(1, 0, 8.4163208, 0)

-- IMPORTNT!
------------------------------------------------
VersionText.Name = "VersionText"
VersionText.Parent = MainPage
VersionText.BackgroundColor3 = Color3.new(1, 1, 1)
VersionText.BackgroundTransparency = 1
VersionText.Position = UDim2.new(0.84158959627, 0, 0.914668798, 0)
VersionText.Size = UDim2.new(0.173481352, 0, 0.08324752, 0)
VersionText.Font = Enum.Font.GothamBold
VersionText.Text = "Version: "..CheatVersion
VersionText.TextColor3 = Color3.new(1, 1, 1)
VersionText.TextSize = 8

HomePage.Name = "HomePage"
HomePage.Parent = MainPage
HomePage.BackgroundColor3 = Color3.new(1, 1, 1)
HomePage.BackgroundTransparency = 1
HomePage.BorderSizePixel = 0
HomePage.Position = UDim2.new(0, 0, 0.132234111, 0)
HomePage.Size = UDim2.new(1, 0, 0.782434821, 0)

ImageGang.Name = "ImageGang"
ImageGang.Parent = HomePage
ImageGang.BackgroundColor3 = Color3.new(1, 1, 1)
ImageGang.Position = UDim2.new(123.0295857992, 0, 0.0601093024, 0)
ImageGang.Size = UDim2.new(0, 70, 0, 70)
ImageGang.Image = ""

CreditText.Name = "CreditText"
CreditText.Parent = HomePage
CreditText.BackgroundColor3 = Color3.new(1, 1, 1)
CreditText.BackgroundTransparency = 1
CreditText.Position = UDim2.new(0.418195452, 0.1, 0.5601093657, 0)
CreditText.Size = UDim2.new(0.609829473, 0, 0.382513672, 0)
CreditText.Font = Enum.Font.GothamBold
CreditText.Text = "Credits: Sal#4798 and DarkCyber"
CreditText.TextColor3 = Color3.new(1, 1, 1)
CreditText.TextSize = 10

JoinText.Name = "JoinText"
JoinText.Parent = HomePage
JoinText.BackgroundColor3 = Color3.new(1, 1, 1)
JoinText.BackgroundTransparency = 1
JoinText.Position = UDim2.new(0, 0, 0.453551859, 0)
JoinText.Size = UDim2.new(0.998024881, 0, 0.146612123, 0)
JoinText.Font = Enum.Font.GothamBold
JoinText.Text = ""
JoinText.TextColor3 = Color3.new(1, 1, 1)
JoinText.TextSize = 17

DiscordlinkTest.Name = "DiscordlinkTest"
DiscordlinkTest.Parent = HomePage
DiscordlinkTest.BackgroundColor3 = Color3.new(1, 1, 1)
DiscordlinkTest.BackgroundTransparency = 1
DiscordlinkTest.Position = UDim2.new(0, 0, 0.601092875, 0)
DiscordlinkTest.Size = UDim2.new(0.348024881, 0, 0.146612123, 0)
DiscordlinkTest.Font = Enum.Font.GothamBold
DiscordlinkTest.Text = ""
DiscordlinkTest.TextColor3 = Color3.new(0.44705882352, 0.53725490196, 0.85490196078)
DiscordlinkTest.TextSize = 17

Copylinkdiscord.Name = "Copylinkdiscord"
Copylinkdiscord.Parent = HomePage
Copylinkdiscord.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Copylinkdiscord.BorderSizePixel = 0
Copylinkdiscord.Position = UDim2.new(0.0295858085, 0, 0.79781419, 0)
Copylinkdiscord.Size = UDim2.new(0.276331353, 0, 0.131147563, 0)
Copylinkdiscord.Font = Enum.Font.GothamBold
Copylinkdiscord.Text = "Teleport to SalutDaniCeFaci"
Copylinkdiscord.TextColor3 = Color3.new(1, 1, 1)
Copylinkdiscord.TextSize = 10

TeleportTo32fdba.Name = "TeleportTo32fdba"
TeleportTo32fdba.Parent = HomePage
TeleportTo32fdba.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
TeleportTo32fdba.BorderSizePixel = 0
TeleportTo32fdba.Position = UDim2.new(0.325858085, 0, 0.79781419, 0)
TeleportTo32fdba.Size = UDim2.new(0.196331353, 0, 0.131147563, 0)
TeleportTo32fdba.Font = Enum.Font.GothamBold
TeleportTo32fdba.Text = "TP to 32fdba"
TeleportTo32fdba.TextColor3 = Color3.new(1, 1, 1)
TeleportTo32fdba.TextSize = 12

TeleportToSalutDaniCeFaci.Name = "TeleportToSalutDaniCeFaci"
TeleportToSalutDaniCeFaci.Parent = HomePage
TeleportToSalutDaniCeFaci.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
TeleportToSalutDaniCeFaci.BorderSizePixel = 0
TeleportToSalutDaniCeFaci.Position = UDim2.new(0.75871617, 0, 0.79781419, 0)
TeleportToSalutDaniCeFaci.Size = UDim2.new(0.196331353, 0, 0.131147563, 0)
TeleportToSalutDaniCeFaci.Font = Enum.Font.GothamBold
TeleportToSalutDaniCeFaci.Text = "TP to ITZ"
TeleportToSalutDaniCeFaci.TextColor3 = Color3.new(1, 1, 1)
TeleportToSalutDaniCeFaci.TextSize = 12

RainbowButton.Name = "RainbowButton"
RainbowButton.Parent = SettingPage
RainbowButton.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
RainbowButton.BorderSizePixel = 0
RainbowButton.Position = UDim2.new(0.0264150947, 0, 0.0853963569, 0)
RainbowButton.Size = UDim2.new(0, 98, 0, 20)
RainbowButton.Font = Enum.Font.Gotham
RainbowButton.Text = "Nobodi Mode"
RainbowButton.TextColor3 = Color3.new(1, 1, 1)
RainbowButton.TextSize = 12

FarmingOptions.Name = "FarmingOptions"
FarmingOptions.Parent = SettingPage
FarmingOptions.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
FarmingOptions.Size = UDim2.new(.943, 0, 0.7, 0)
FarmingOptions.BorderColor3 = Color3.new(0, 0, 0)
FarmingOptions.Position = UDim2.new(0.028, 0, 0.3, 0)
FarmingOptions.BorderSizePixel = 2

FarmingOptionsLogo.Name = "FarmingOptionsLogo"
FarmingOptionsLogo.Parent = SettingPage
FarmingOptionsLogo.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
FarmingOptionsLogo.Size = UDim2.new(0.809829473, 0, 0.382513672, 0)
FarmingOptionsLogo.BorderColor3 = Color3.new(0, 0, 0)
FarmingOptionsLogo.Position = UDim2.new(-0.27, 0, 0.1, 0)
FarmingOptionsLogo.BackgroundTransparency = 1
FarmingOptionsLogo.BorderSizePixel = 2
FarmingOptionsLogo.Text = "Farming Options"
FarmingOptionsLogo.TextColor3 = Color3.new(1, 1, 1)
FarmingOptionsLogo.TextStrokeTransparency = 0
FarmingOptionsLogo.TextStrokeColor3 = Color3.new(0, 0, 0)

FarmingOptionsConvertText.Name = "FarmingOptionsLogo"
FarmingOptionsConvertText.Parent = SettingPage
FarmingOptionsConvertText.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
FarmingOptionsConvertText.Size = UDim2.new(0.809829473, 0, 0.382513672, 0)
FarmingOptionsConvertText.BorderColor3 = Color3.new(0, 0, 0)
FarmingOptionsConvertText.Position = UDim2.new(-0.02, 0, 0.23, 0)
FarmingOptionsConvertText.BackgroundTransparency = 1
FarmingOptionsConvertText.BorderSizePixel = 2
FarmingOptionsConvertText.Text = "Farming Time"
FarmingOptionsConvertText.TextColor3 = Color3.new(1, 1, 1)
FarmingOptionsConvertText.TextStrokeTransparency = 0
FarmingOptionsConvertText.TextStrokeColor3 = Color3.new(0, 0, 0)

FarmingOptionsFarmingText.Name = "FarmingOptionsLogo"
FarmingOptionsFarmingText.Parent = SettingPage
FarmingOptionsFarmingText.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
FarmingOptionsFarmingText.Size = UDim2.new(0.809829473, 0, 0.382513672, 0)
FarmingOptionsFarmingText.BorderColor3 = Color3.new(0, 0, 0)
FarmingOptionsFarmingText.Position = UDim2.new(-0.3, 0, 0.23, 0)
FarmingOptionsFarmingText.BackgroundTransparency = 1
FarmingOptionsFarmingText.BorderSizePixel = 2
FarmingOptionsFarmingText.Text = "Convert Time"
FarmingOptionsFarmingText.TextColor3 = Color3.new(1, 1, 1)
FarmingOptionsFarmingText.TextStrokeTransparency = 0
FarmingOptionsFarmingText.TextStrokeColor3 = Color3.new(0, 0, 0)

FarmingOptionsConvertTime.Name = "FarmingOptionsConvertTime"
FarmingOptionsConvertTime.Parent = SettingPage
FarmingOptionsConvertTime.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
FarmingOptionsConvertTime.Size = UDim2.new(0.809829473, 0, 0.382513672, 0)
FarmingOptionsConvertTime.BorderColor3 = Color3.new(0, 0, 0)
FarmingOptionsConvertTime.Position = UDim2.new(0.2, 0, 0.23, 0)
FarmingOptionsConvertTime.BackgroundTransparency = 1
FarmingOptionsConvertTime.BorderSizePixel = 2
FarmingOptionsConvertTime.TextSize = 10
FarmingOptionsConvertTime.Text = "Convert Time: "..convertTime
FarmingOptionsConvertTime.TextColor3 = Color3.new(0, 0, 0)

FarmingOptionsFarmingTime.Name = "FarmingOptionsFarmingTime"
FarmingOptionsFarmingTime.Parent = SettingPage
FarmingOptionsFarmingTime.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
FarmingOptionsFarmingTime.Size = UDim2.new(0.809829473, 0, 0.382513672, 0)
FarmingOptionsFarmingTime.BorderColor3 = Color3.new(0, 0, 0)
FarmingOptionsFarmingTime.Position = UDim2.new(0.2, 0, 0.33, 0)
FarmingOptionsFarmingTime.BackgroundTransparency = 1
FarmingOptionsFarmingTime.BorderSizePixel = 2
FarmingOptionsFarmingTime.TextSize = 10
FarmingOptionsFarmingTime.Text = "Farm Time: "..convertTime
FarmingOptionsFarmingTime.TextColor3 = Color3.new(0, 0, 0)

Button1Minute.Name = "Button1Minute"
Button1Minute.Parent = FarmingOptions
Button1Minute.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Button1Minute.BorderSizePixel = 0
Button1Minute.Position = UDim2.new(0.02, 0, 0.25, 0)
Button1Minute.Size = UDim2.new(0.116331353, 0, 0.131147563, 0)
Button1Minute.Font = Enum.Font.GothamBold
Button1Minute.Text = "1 Minute"
Button1Minute.TextColor3 = Color3.new(1, 1, 1)
Button1Minute.TextSize = 12

Button2Minute.Name = "Button2Minute"
Button2Minute.Parent = FarmingOptions
Button2Minute.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Button2Minute.BorderSizePixel = 0
Button2Minute.Position = UDim2.new(0.02, 0, 0.40, 0)
Button2Minute.Size = UDim2.new(0.116331353, 0, 0.131147563, 0)
Button2Minute.Font = Enum.Font.GothamBold
Button2Minute.Text = "2 Minutes"
Button2Minute.TextColor3 = Color3.new(1, 1, 1)
Button2Minute.TextSize = 12

Button3Minute.Name = "Button3Minute"
Button3Minute.Parent = FarmingOptions
Button3Minute.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Button3Minute.BorderSizePixel = 0
Button3Minute.Position = UDim2.new(0.02, 0, 0.55, 0)
Button3Minute.Size = UDim2.new(0.116331353, 0, 0.131147563, 0)
Button3Minute.Font = Enum.Font.GothamBold
Button3Minute.Text = "3 Minutes"
Button3Minute.TextColor3 = Color3.new(1, 1, 1)
Button3Minute.TextSize = 12

Button4Minute.Name = "Button4Minute"
Button4Minute.Parent = FarmingOptions
Button4Minute.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Button4Minute.BorderSizePixel = 0
Button4Minute.Position = UDim2.new(0.02, 0, 0.70, 0)
Button4Minute.Size = UDim2.new(0.116331353, 0, 0.131147563, 0)
Button4Minute.Font = Enum.Font.GothamBold
Button4Minute.Text = "4 Minutes"
Button4Minute.TextColor3 = Color3.new(1, 1, 1)
Button4Minute.TextSize = 12

Button5Minute.Name = "Button5Minute"
Button5Minute.Parent = FarmingOptions
Button5Minute.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Button5Minute.BorderSizePixel = 0
Button5Minute.Position = UDim2.new(0.02, 0, 0.85, 0)
Button5Minute.Size = UDim2.new(0.116331353, 0, 0.131147563, 0)
Button5Minute.Font = Enum.Font.GothamBold
Button5Minute.Text = "5 Minutes"
Button5Minute.TextColor3 = Color3.new(1, 1, 1)
Button5Minute.TextSize = 12

_Button1_5Minute.Name = "Button1Minute"
_Button1_5Minute.Parent = FarmingOptions
_Button1_5Minute.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
_Button1_5Minute.BorderSizePixel = 0
_Button1_5Minute.Position = UDim2.new(0.3, 0, 0.25, 0)
_Button1_5Minute.Size = UDim2.new(0.146331353, 0, 0.131147563, 0)
_Button1_5Minute.Font = Enum.Font.GothamBold
_Button1_5Minute.Text = "1 Minute"
_Button1_5Minute.TextColor3 = Color3.new(1, 1, 1)
_Button1_5Minute.TextSize = 12

_Button2Minute.Name = "Button1Minute"
_Button2Minute.Parent = FarmingOptions
_Button2Minute.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
_Button2Minute.BorderSizePixel = 0
_Button2Minute.Position = UDim2.new(0.3, 0, 0.40, 0)
_Button2Minute.Size = UDim2.new(0.146331353, 0, 0.131147563, 0)
_Button2Minute.Font = Enum.Font.GothamBold
_Button2Minute.Text = "2 Minutes"
_Button2Minute.TextColor3 = Color3.new(1, 1, 1)
_Button2Minute.TextSize = 12

_Button3Minute.Name = "Button1Minute"
_Button3Minute.Parent = FarmingOptions
_Button3Minute.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
_Button3Minute.BorderSizePixel = 0
_Button3Minute.Position = UDim2.new(0.3, 0, 0.55, 0)
_Button3Minute.Size = UDim2.new(0.146331353, 0, 0.131147563, 0)
_Button3Minute.Font = Enum.Font.GothamBold
_Button3Minute.Text = "3 Minutes"
_Button3Minute.TextColor3 = Color3.new(1, 1, 1)
_Button3Minute.TextSize = 12

_Button4Minute.Name = "Button1Minute"
_Button4Minute.Parent = FarmingOptions
_Button4Minute.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
_Button4Minute.BorderSizePixel = 0
_Button4Minute.Position = UDim2.new(0.3, 0, 0.70, 0) 
_Button4Minute.Size = UDim2.new(0.146331353, 0, 0.131147563, 0)
_Button4Minute.Font = Enum.Font.GothamBold
_Button4Minute.Text = "4 Minutes"
_Button4Minute.TextColor3 = Color3.new(1, 1, 1)
_Button4Minute.TextSize = 12

_Button5Minute.Name = "Button1Minute"
_Button5Minute.Parent = FarmingOptions
_Button5Minute.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
_Button5Minute.BorderSizePixel = 0
_Button5Minute.Position = UDim2.new(0.3, 0, 0.85, 0)
_Button5Minute.Size = UDim2.new(0.146331353, 0, 0.131147563, 0)
_Button5Minute.Font = Enum.Font.GothamBold
_Button5Minute.Text = "5 Minutes"
_Button5Minute.TextColor3 = Color3.new(1, 1, 1)
_Button5Minute.TextSize = 12

TeleportToKillerTorchi.Name = "TeleportToKillerTorchi"
TeleportToKillerTorchi.Parent = HomePage
TeleportToKillerTorchi.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
TeleportToKillerTorchi.BorderSizePixel = 0
TeleportToKillerTorchi.Position = UDim2.new(0.54171617, 0, 0.79781419, 0) --0.355858085
TeleportToKillerTorchi.Size = UDim2.new(0.196331353, 0, 0.131147563, 0)
TeleportToKillerTorchi.Font = Enum.Font.GothamBold
TeleportToKillerTorchi.Text = "TP to killertorchi"
TeleportToKillerTorchi.TextColor3 = Color3.new(1, 1, 1)
TeleportToKillerTorchi.TextSize = 12

FarmingPage.Name = "FarmingPage"
FarmingPage.Parent = MainPage
FarmingPage.BackgroundColor3 = Color3.new(1, 1, 1)
FarmingPage.BackgroundTransparency = 1
FarmingPage.Position = UDim2.new(-5.75803369e-08, 0, 0.127000019, 0)
FarmingPage.Size = UDim2.new(0.999777615, 0, 0.787668824, 0)
FarmingPage.Visible = false

FieldSelectPage.Name = "FieldSelectPage"
FieldSelectPage.Parent = FarmingPage
FieldSelectPage.BackgroundColor3 = Color3.new(0.14117647058, 0.14117647058, 0.14117647058)
FieldSelectPage.BorderSizePixel = 0
FieldSelectPage.Position = UDim2.new(0.0228317082, 0, 0.16433613, 0)
FieldSelectPage.Size = UDim2.new(0.400000006, 0, 0.835663855, 2)
FieldSelectPage.ScrollBarThickness = 5

SunflowerButton.Name = "SunflowerButton"
SunflowerButton.Parent = FieldSelectPage
SunflowerButton.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
SunflowerButton.BorderSizePixel = 0
SunflowerButton.Position = UDim2.new(0.108427808, 0, 0.0228219759, 0)
SunflowerButton.Size = UDim2.new(0, 160, 0, 20)
SunflowerButton.Font = Enum.Font.GothamBold
SunflowerButton.Text = "Sunflower Field"
SunflowerButton.TextColor3 = Color3.new(1, 1, 1)
SunflowerButton.TextSize = 14

MushroomButton.Name = "MushroomButton"
MushroomButton.Parent = FieldSelectPage
MushroomButton.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
MushroomButton.BorderSizePixel = 0
MushroomButton.Position = UDim2.new(0.108427808, 0, 0.0791205987, 0)
MushroomButton.Size = UDim2.new(0, 160, 0, 20)
MushroomButton.Font = Enum.Font.GothamBold
MushroomButton.Text = "Mushroom Field"
MushroomButton.TextColor3 = Color3.new(1, 1, 1)
MushroomButton.TextSize = 14

SpiderButton.Name = "SpiderButton"
SpiderButton.Parent = FieldSelectPage
SpiderButton.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
SpiderButton.BorderSizePixel = 0
SpiderButton.Position = UDim2.new(0.108427808, 0, 0.412541032, 0)
SpiderButton.Size = UDim2.new(0, 160, 0, 20)
SpiderButton.Font = Enum.Font.GothamBold
SpiderButton.Text = "Spider Field"
SpiderButton.TextColor3 = Color3.new(1, 1, 1)
SpiderButton.TextSize = 14

BambooButton.Name = "BambooButton"
BambooButton.Parent = FieldSelectPage
BambooButton.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
BambooButton.BorderSizePixel = 0
BambooButton.Position = UDim2.new(0.108427808, 0, 0.355216533, 0)
BambooButton.Size = UDim2.new(0, 160, 0, 20)
BambooButton.Font = Enum.Font.GothamBold
BambooButton.Text = "Bamboo Field"
BambooButton.TextColor3 = Color3.new(1, 1, 1)
BambooButton.TextSize = 14

RoseButton.Name = "RoseButton"
RoseButton.Parent = FieldSelectPage
RoseButton.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
RoseButton.BorderSizePixel = 0
RoseButton.Position = UDim2.new(0.108427808, 0, 0.524258256, 0)
RoseButton.Size = UDim2.new(0, 160, 0, 20)
RoseButton.Font = Enum.Font.GothamBold
RoseButton.Text = "Rose Field"
RoseButton.TextColor3 = Color3.new(1, 1, 1)
RoseButton.TextSize = 14

PineTreeButton.Name = "PineTreeButton"
PineTreeButton.Parent = FieldSelectPage
PineTreeButton.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
PineTreeButton.BorderSizePixel = 0
PineTreeButton.Position = UDim2.new(0.108427808, 0, 0.467443049, 0)
PineTreeButton.Size = UDim2.new(0, 160, 0, 20)
PineTreeButton.Font = Enum.Font.GothamBold
PineTreeButton.Text = "Pine Tree Field"
PineTreeButton.TextColor3 = Color3.new(1, 1, 1)
PineTreeButton.TextSize = 14

CactusButton.Name = "CactusButton"
CactusButton.Parent = FieldSelectPage
CactusButton.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
CactusButton.BorderSizePixel = 0
CactusButton.Position = UDim2.new(0.108427808, 0, 0.579347968, 0)
CactusButton.Size = UDim2.new(0, 160, 0, 20)
CactusButton.Font = Enum.Font.GothamBold
CactusButton.Text = "Cactus Field"
CactusButton.TextColor3 = Color3.new(1, 1, 1)
CactusButton.TextSize = 14

PumpkinButton.Name = "PumpkinButton"
PumpkinButton.Parent = FieldSelectPage
PumpkinButton.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
PumpkinButton.BorderSizePixel = 0
PumpkinButton.Position = UDim2.new(0.108427808, 0, 0.633908749, 0)
PumpkinButton.Size = UDim2.new(0, 160, 0, 20)
PumpkinButton.Font = Enum.Font.GothamBold
PumpkinButton.Text = "Pumpkin Field"
PumpkinButton.TextColor3 = Color3.new(1, 1, 1)
PumpkinButton.TextSize = 14

PineappleButton.Name = "PineappleButton"
PineappleButton.Parent = FieldSelectPage
PineappleButton.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
PineappleButton.BorderSizePixel = 0
PineappleButton.Position = UDim2.new(0.108427808, 0, 0.688469529, 0)
PineappleButton.Size = UDim2.new(0, 160, 0, 20)
PineappleButton.Font = Enum.Font.GothamBold
PineappleButton.Text = "Pineapple Field"
PineappleButton.TextColor3 = Color3.new(1, 1, 1)
PineappleButton.TextSize = 14

StumpButton.Name = "StumpButton"
StumpButton.Parent = FieldSelectPage
StumpButton.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
StumpButton.BorderSizePixel = 0
StumpButton.Position = UDim2.new(0.108427808, 0, 0.74303031, 0)
StumpButton.Size = UDim2.new(0, 160, 0, 20)
StumpButton.Font = Enum.Font.GothamBold
StumpButton.Text = "Stump Field"
StumpButton.TextColor3 = Color3.new(1, 1, 1)
StumpButton.TextSize = 14

MountainTopButton.Name = "MountainTopButton"
MountainTopButton.Parent = FieldSelectPage
MountainTopButton.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
MountainTopButton.BorderSizePixel = 0
MountainTopButton.Position = UDim2.new(0.108427808, 0, 0.797487676, 0)
MountainTopButton.Size = UDim2.new(0, 160, 0, 20)
MountainTopButton.Font = Enum.Font.GothamBold
MountainTopButton.Text = "Mountain Top Field"
MountainTopButton.TextColor3 = Color3.new(1, 1, 1)
MountainTopButton.TextSize = 14

CoconutButton.Name = "CoconutButton"
CoconutButton.Parent = FieldSelectPage
CoconutButton.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
CoconutButton.BorderSizePixel = 0
CoconutButton.Position = UDim2.new(0.108427808, 0, 0.852136731, 0)
CoconutButton.Size = UDim2.new(0, 160, 0, 20)
CoconutButton.Font = Enum.Font.GothamBold
CoconutButton.Text = "Coconut Field"
CoconutButton.TextColor3 = Color3.new(1, 1, 1)
CoconutButton.TextSize = 14

PepperButton.Name = "PepperButton"
PepperButton.Parent = FieldSelectPage
PepperButton.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
PepperButton.BorderSizePixel = 0
PepperButton.Position = UDim2.new(0.108427808, 0, 0.908951104, 0)
PepperButton.Size = UDim2.new(0, 160, 0, 20)
PepperButton.Font = Enum.Font.GothamBold
PepperButton.Text = "Pepper Field"
PepperButton.TextColor3 = Color3.new(1, 1, 1)
PepperButton.TextSize = 14

StawberryButton.Name = "StawberryButton"
StawberryButton.Parent = FieldSelectPage
StawberryButton.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
StawberryButton.BorderSizePixel = 0
StawberryButton.Position = UDim2.new(0.108427808, 0, 0.300172061, 0)
StawberryButton.Size = UDim2.new(0, 160, 0, 20)
StawberryButton.Font = Enum.Font.GothamBold
StawberryButton.Text = "Strawberry Field"
StawberryButton.TextColor3 = Color3.new(1, 1, 1)
StawberryButton.TextSize = 14

BlueflowerButton.Name = "BlueflowerButton"
BlueflowerButton.Parent = FieldSelectPage
BlueflowerButton.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
BlueflowerButton.BorderSizePixel = 0
BlueflowerButton.Position = UDim2.new(0.108427808, 0, 0.135357112, 0)
BlueflowerButton.Size = UDim2.new(0, 160, 0, 20)
BlueflowerButton.Font = Enum.Font.GothamBold
BlueflowerButton.Text = "Blue Folower Field"
BlueflowerButton.TextColor3 = Color3.new(1, 1, 1)
BlueflowerButton.TextSize = 14

DanrButton.Name = "DanrButton"
DanrButton.Parent = FieldSelectPage
DanrButton.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
DanrButton.BorderSizePixel = 0
DanrButton.Position = UDim2.new(0.108427808, 0, 0.189853355, 0)
DanrButton.Size = UDim2.new(0, 160, 0, 20)
DanrButton.Font = Enum.Font.GothamBold
DanrButton.Text = "Dandelion Field"
DanrButton.TextColor3 = Color3.new(1, 1, 1)
DanrButton.TextSize = 14

DanrButton_2.Name = "DanrButton"
DanrButton_2.Parent = FieldSelectPage
DanrButton_2.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
DanrButton_2.BorderSizePixel = 0
DanrButton_2.Position = UDim2.new(0.108427808, 0, 0.244349569, 0)
DanrButton_2.Size = UDim2.new(0, 160, 0, 20)
DanrButton_2.Font = Enum.Font.GothamBold
DanrButton_2.Text = "Clover Field"
DanrButton_2.TextColor3 = Color3.new(1, 1, 1)
DanrButton_2.TextSize = 14

FieldSelectText.Name = "FieldSelectText"
FieldSelectText.Parent = FarmingPage
FieldSelectText.BackgroundColor3 = Color3.new(1, 1, 1)
FieldSelectText.BackgroundTransparency = 1
FieldSelectText.Position = UDim2.new(0.0247862451, 0, 0.0436922573, 0)
FieldSelectText.Size = UDim2.new(0.398045629, 0, 0.114787988, 0)
FieldSelectText.Font = Enum.Font.GothamBlack
FieldSelectText.Text = "Field Select"
FieldSelectText.TextColor3 = Color3.new(1, 1, 1)
FieldSelectText.TextSize = 16

FieldText.Name = "FieldText"
FieldText.Parent = FarmingPage
FieldText.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
FieldText.BorderSizePixel = 0
FieldText.Position = UDim2.new(0.446999997, 0, 0.170000002, 0)
FieldText.Size = UDim2.new(0.530130506, 0, 0.100000001, 0)
FieldText.Font = Enum.Font.GothamBold
FieldText.Text = " Field Select: Loading..."
FieldText.TextColor3 = Color3.new(1, 1, 1)
FieldText.TextSize = 14
FieldText.TextXAlignment = Enum.TextXAlignment.Left

StartButton.Name = "StartButton"
StartButton.Parent = FarmingPage
StartButton.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
StartButton.BorderSizePixel = 0
StartButton.Position = UDim2.new(0.446999997, 0, 0.300000012, 0)
StartButton.Size = UDim2.new(0.530328393, 0, 0.100000001, 0)
StartButton.Font = Enum.Font.GothamBold
StartButton.Text = "Start Farming"
StartButton.TextColor3 = Color3.new(1, 1, 1)
StartButton.TextSize = 14

PollenToHoney.Name = "PollenToHoney"
PollenToHoney.Parent = FarmingPage
PollenToHoney.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
PollenToHoney.BorderSizePixel = 0
PollenToHoney.Position = UDim2.new(0.446999997, 0, 0.555212036, 0)
PollenToHoney.Size = UDim2.new(0.530328393, 0, 0.200000001, 0)
PollenToHoney.Font = Enum.Font.GothamBold
PollenToHoney.Text = "Auto Honey Making"
PollenToHoney.TextColor3 = Color3.new(1, 1, 1)
PollenToHoney.TextSize = 14 --game:GetService("ReplicatedStorage").Events.PlayerHiveCommand:FireServer("ToggleHoneyMaking")

CancelPollenToHoney.Name = "PollenToHoney"
CancelPollenToHoney.Parent = FarmingPage
CancelPollenToHoney.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
CancelPollenToHoney.BorderSizePixel = 0
CancelPollenToHoney.Position = UDim2.new(0.446999997, 0, 0.785212036, 0)
CancelPollenToHoney.Size = UDim2.new(0.530328393, 0, 0.160000001, 0)
CancelPollenToHoney.Font = Enum.Font.GothamBold
CancelPollenToHoney.Text = "Cancel Auto Honey Making"
CancelPollenToHoney.TextColor3 = Color3.new(1, 1, 1)
CancelPollenToHoney.TextSize = 14

FieldSelectText_2.Name = "FieldSelectText"
FieldSelectText_2.Parent = FarmingPage
FieldSelectText_2.BackgroundColor3 = Color3.new(1, 1, 1)
FieldSelectText_2.BackgroundTransparency = 1
FieldSelectText_2.Position = UDim2.new(0.447186798, 0, 0.0436922573, 0)
FieldSelectText_2.Size = UDim2.new(0.530446231, 0, 0.114787988, 0)
FieldSelectText_2.Font = Enum.Font.GothamBlack
FieldSelectText_2.Text = "Farming Status"
FieldSelectText_2.TextColor3 = Color3.new(1, 1, 1)
FieldSelectText_2.TextSize = 14

WaypointPage.Name = "WaypointPage"
WaypointPage.Parent = MainPage
WaypointPage.BackgroundColor3 = Color3.new(1, 1, 1)
WaypointPage.BackgroundTransparency = 1
WaypointPage.Position = UDim2.new(0, 0, 0.167000034, 0)
WaypointPage.Size = UDim2.new(0, 530, 0, 155)
WaypointPage.Visible = false
WaypointPage.CanvasSize = UDim2.new(0, 0, 3, 0)
WaypointPage.ScrollBarThickness = 5

Suntp.Name = "Suntp"
Suntp.Parent = WaypointPage
Suntp.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Suntp.BorderSizePixel = 0
Suntp.Position = UDim2.new(0.0160000008, 0, 0.0199999996, 0)
Suntp.Size = UDim2.new(0, 120, 0, 20)
Suntp.Font = Enum.Font.GothamBold
Suntp.Text = "Sunflower Field"
Suntp.TextColor3 = Color3.new(1, 1, 1)
Suntp.TextSize = 14

Mushtp.Name = "Mushtp"
Mushtp.Parent = WaypointPage
Mushtp.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Mushtp.BorderSizePixel = 0
Mushtp.Position = UDim2.new(0.261000007, 0, 0.0199999996, 0)
Mushtp.Size = UDim2.new(0, 120, 0, 20)
Mushtp.Font = Enum.Font.GothamBold
Mushtp.Text = "Mushroom Field"
Mushtp.TextColor3 = Color3.new(1, 1, 1)
Mushtp.TextSize = 14

Dantp.Name = "Dantp"
Dantp.Parent = WaypointPage
Dantp.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Dantp.BorderSizePixel = 0
Dantp.Position = UDim2.new(0.510999978, 0, 0.0199999996, 0)
Dantp.Size = UDim2.new(0, 120, 0, 20)
Dantp.Font = Enum.Font.GothamBold
Dantp.Text = "Dandelion Field"
Dantp.TextColor3 = Color3.new(1, 1, 1)
Dantp.TextSize = 14

Blueftp.Name = "Blueftp"
Blueftp.Parent = WaypointPage
Blueftp.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Blueftp.BorderSizePixel = 0
Blueftp.Position = UDim2.new(0.755999982, 0, 0.0199999996, 0)
Blueftp.Size = UDim2.new(0, 120, 0, 20)
Blueftp.Font = Enum.Font.GothamBold
Blueftp.Text = "Blueflower Field"
Blueftp.TextColor3 = Color3.new(1, 1, 1)
Blueftp.TextSize = 14

Clovertp.Name = "Clovertp"
Clovertp.Parent = WaypointPage
Clovertp.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Clovertp.BorderSizePixel = 0
Clovertp.Position = UDim2.new(0.0160000008, 0, 0.0599999987, 0)
Clovertp.Size = UDim2.new(0, 120, 0, 20)
Clovertp.Font = Enum.Font.GothamBold
Clovertp.Text = "Clover Field"
Clovertp.TextColor3 = Color3.new(1, 1, 1)
Clovertp.TextSize = 14

Bambootp.Name = "Bambootp"
Bambootp.Parent = WaypointPage
Bambootp.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Bambootp.BorderSizePixel = 0
Bambootp.Position = UDim2.new(0.261000007, 0, 0.0599999987, 0)
Bambootp.Size = UDim2.new(0, 120, 0, 20)
Bambootp.Font = Enum.Font.GothamBold
Bambootp.Text = "Bamboo Field"
Bambootp.TextColor3 = Color3.new(1, 1, 1)
Bambootp.TextSize = 14

Spidertp.Name = "Spidertp"
Spidertp.Parent = WaypointPage
Spidertp.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Spidertp.BorderSizePixel = 0
Spidertp.Position = UDim2.new(0.510999978, 0, 0.0599999987, 0)
Spidertp.Size = UDim2.new(0, 120, 0, 20)
Spidertp.Font = Enum.Font.GothamBold
Spidertp.Text = "Spider Field"
Spidertp.TextColor3 = Color3.new(1, 1, 1)
Spidertp.TextSize = 14

Strawtp.Name = "Strawtp"
Strawtp.Parent = WaypointPage
Strawtp.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Strawtp.BorderSizePixel = 0
Strawtp.Position = UDim2.new(0.755999982, 0, 0.0599999987, 0)
Strawtp.Size = UDim2.new(0, 120, 0, 20)
Strawtp.Font = Enum.Font.GothamBold
Strawtp.Text = "Strawbery Field"
Strawtp.TextColor3 = Color3.new(1, 1, 1)
Strawtp.TextSize = 14

Castustp.Name = "Castustp"
Castustp.Parent = WaypointPage
Castustp.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Castustp.BorderSizePixel = 0
Castustp.Position = UDim2.new(0.0160000008, 0, 0.100354269, 0)
Castustp.Size = UDim2.new(0, 120, 0, 20)
Castustp.Font = Enum.Font.GothamBold
Castustp.Text = "Cactus Field"
Castustp.TextColor3 = Color3.new(1, 1, 1)
Castustp.TextSize = 14

Pumtp.Name = "Pumtp"
Pumtp.Parent = WaypointPage
Pumtp.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Pumtp.BorderSizePixel = 0
Pumtp.Position = UDim2.new(0.261000007, 0, 0.100354269, 0)
Pumtp.Size = UDim2.new(0, 120, 0, 20)
Pumtp.Font = Enum.Font.GothamBold
Pumtp.Text = "Pumpkin Field"
Pumtp.TextColor3 = Color3.new(1, 1, 1)
Pumtp.TextSize = 14

Pintreetp.Name = "Pintreetp"
Pintreetp.Parent = WaypointPage
Pintreetp.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Pintreetp.BorderSizePixel = 0
Pintreetp.Position = UDim2.new(0.510999978, 0, 0.100354269, 0)
Pintreetp.Size = UDim2.new(0, 120, 0, 20)
Pintreetp.Font = Enum.Font.GothamBold
Pintreetp.Text = "Pine Tree Field"
Pintreetp.TextColor3 = Color3.new(1, 1, 1)
Pintreetp.TextSize = 14

Rosetp.Name = "Rosetp"
Rosetp.Parent = WaypointPage
Rosetp.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Rosetp.BorderSizePixel = 0
Rosetp.Position = UDim2.new(0.755999982, 0, 0.100354269, 0)
Rosetp.Size = UDim2.new(0, 120, 0, 20)
Rosetp.Font = Enum.Font.GothamBold
Rosetp.Text = "Rose Field"
Rosetp.TextColor3 = Color3.new(1, 1, 1)
Rosetp.TextSize = 14

Toptp.Name = "Toptp"
Toptp.Parent = WaypointPage
Toptp.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Toptp.BorderSizePixel = 0
Toptp.Position = UDim2.new(0.755999982, 0, 0.140000001, 0)
Toptp.Size = UDim2.new(0, 120, 0, 20)
Toptp.Font = Enum.Font.GothamBold
Toptp.Text = "Mountain Field"
Toptp.TextColor3 = Color3.new(1, 1, 1)
Toptp.TextSize = 14

Coconuttp.Name = "Coconuttp"
Coconuttp.Parent = WaypointPage
Coconuttp.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Coconuttp.BorderSizePixel = 0
Coconuttp.Position = UDim2.new(0.510999978, 0, 0.140000001, 0)
Coconuttp.Size = UDim2.new(0, 120, 0, 20)
Coconuttp.Font = Enum.Font.GothamBold
Coconuttp.Text = "Coconut Field"
Coconuttp.TextColor3 = Color3.new(1, 1, 1)
Coconuttp.TextSize = 14

Stumptp.Name = "Stumptp"
Stumptp.Parent = WaypointPage
Stumptp.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Stumptp.BorderSizePixel = 0
Stumptp.Position = UDim2.new(0.261000007, 0, 0.140000001, 0)
Stumptp.Size = UDim2.new(0, 120, 0, 20)
Stumptp.Font = Enum.Font.GothamBold
Stumptp.Text = "Stump Field"
Stumptp.TextColor3 = Color3.new(1, 1, 1)
Stumptp.TextSize = 14

Pineappletp.Name = "Pineappletp"
Pineappletp.Parent = WaypointPage
Pineappletp.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Pineappletp.BorderSizePixel = 0
Pineappletp.Position = UDim2.new(0.0160000008, 0, 0.140000001, 0)
Pineappletp.Size = UDim2.new(0, 120, 0, 20)
Pineappletp.Font = Enum.Font.GothamBold
Pineappletp.Text = "Pineapple Field"
Pineappletp.TextColor3 = Color3.new(1, 1, 1)
Pineappletp.TextSize = 14

Peppertp.Name = "Peppertp"
Peppertp.Parent = WaypointPage
Peppertp.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Peppertp.BorderSizePixel = 0
Peppertp.Position = UDim2.new(0.0160000008, 0, 0.180000007, 0)
Peppertp.Size = UDim2.new(0, 120, 0, 20)
Peppertp.Font = Enum.Font.GothamBold
Peppertp.Text = "Pepper Field"
Peppertp.TextColor3 = Color3.new(1, 1, 1)
Peppertp.TextSize = 14

SummonSprouttp.Name = "SummonSprouttp"
SummonSprouttp.Parent = WaypointPage
SummonSprouttp.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
SummonSprouttp.BorderSizePixel = 0
SummonSprouttp.Position = UDim2.new(0.263000011, 0, 0.180000007, 0)
SummonSprouttp.Size = UDim2.new(0, 120, 0, 20)
SummonSprouttp.Font = Enum.Font.GothamBold
SummonSprouttp.Text = "Sprout"
SummonSprouttp.TextColor3 = Color3.new(1, 1, 1)
SummonSprouttp.TextSize = 14

Coconutshoptp.Name = "Coconutshoptp"
Coconutshoptp.Parent = WaypointPage
Coconutshoptp.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Coconutshoptp.BorderSizePixel = 0
Coconutshoptp.Position = UDim2.new(0.513000011, 0, 0.180000007, 0)
Coconutshoptp.Size = UDim2.new(0, 120, 0, 20)
Coconutshoptp.Font = Enum.Font.GothamBold
Coconutshoptp.Text = "Coconut Shop"
Coconutshoptp.TextColor3 = Color3.new(1, 1, 1)
Coconutshoptp.TextSize = 14

Petaltp.Name = "Petaltp"
Petaltp.Parent = WaypointPage
Petaltp.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Petaltp.BorderSizePixel = 0
Petaltp.Position = UDim2.new(0.755999982, 0, 0.180000007, 0)
Petaltp.Size = UDim2.new(0, 120, 0, 20)
Petaltp.Font = Enum.Font.GothamBold
Petaltp.Text = "Petal Shop"
Petaltp.TextColor3 = Color3.new(1, 1, 1)
Petaltp.TextSize = 14

Shopproctp.Name = "Shopproctp"
Shopproctp.Parent = WaypointPage
Shopproctp.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Shopproctp.BorderSizePixel = 0
Shopproctp.Position = UDim2.new(0.263000011, 0, 0.219999999, 0)
Shopproctp.Size = UDim2.new(0, 120, 0, 20)
Shopproctp.Font = Enum.Font.GothamBold
Shopproctp.Text = "Pro Shop"
Shopproctp.TextColor3 = Color3.new(1, 1, 1)
Shopproctp.TextSize = 14

Shoptoptp.Name = "Shoptoptp"
Shoptoptp.Parent = WaypointPage
Shoptoptp.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Shoptoptp.BorderSizePixel = 0
Shoptoptp.Position = UDim2.new(0.513000011, 0, 0.219999999, 0)
Shoptoptp.Size = UDim2.new(0, 120, 0, 20)
Shoptoptp.Font = Enum.Font.GothamBold
Shoptoptp.Text = "Master Shop"
Shoptoptp.TextColor3 = Color3.new(1, 1, 1)
Shoptoptp.TextSize = 14

Shopmoontp.Name = "Shopmoontp"
Shopmoontp.Parent = WaypointPage
Shopmoontp.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Shopmoontp.BorderSizePixel = 0
Shopmoontp.Position = UDim2.new(0.755999982, 0, 0.219999999, 0)
Shopmoontp.Size = UDim2.new(0, 120, 0, 20)
Shopmoontp.Font = Enum.Font.GothamBold
Shopmoontp.Text = "Moon Charm"
Shopmoontp.TextColor3 = Color3.new(1, 1, 1)
Shopmoontp.TextSize = 14

Shopbasictp.Name = "Shopbasictp"
Shopbasictp.Parent = WaypointPage
Shopbasictp.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Shopbasictp.BorderSizePixel = 0
Shopbasictp.Position = UDim2.new(0.0160000008, 0, 0.219999999, 0)
Shopbasictp.Size = UDim2.new(0, 120, 0, 20)
Shopbasictp.Font = Enum.Font.GothamBold
Shopbasictp.Text = "Noob Shop"
Shopbasictp.TextColor3 = Color3.new(1, 1, 1)
Shopbasictp.TextSize = 14

Shopsprinklertp.Name = "Shopsprinklertp"
Shopsprinklertp.Parent = WaypointPage
Shopsprinklertp.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Shopsprinklertp.BorderSizePixel = 0
Shopsprinklertp.Position = UDim2.new(0.0160000008, 0, 0.25999999, 0)
Shopsprinklertp.Size = UDim2.new(0, 120, 0, 20)
Shopsprinklertp.Font = Enum.Font.GothamBold
Shopsprinklertp.Text = "Sprinkler Shop"
Shopsprinklertp.TextColor3 = Color3.new(1, 1, 1)
Shopsprinklertp.TextSize = 14

InstantConversiontp.Name = "InstantConversiontp"
InstantConversiontp.Parent = WaypointPage
InstantConversiontp.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
InstantConversiontp.BorderSizePixel = 0
InstantConversiontp.Position = UDim2.new(0.264773577, 0, 0.259568214, 0)
InstantConversiontp.Size = UDim2.new(0, 120, 0, 20)
InstantConversiontp.Font = Enum.Font.GothamBold
InstantConversiontp.Text = "Instant Sell"
InstantConversiontp.TextColor3 = Color3.new(1, 1, 1)
InstantConversiontp.TextSize = 14

MegaMemorytp.Name = "MegaMemorytp"
MegaMemorytp.Parent = WaypointPage
MegaMemorytp.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
MegaMemorytp.BorderSizePixel = 0
MegaMemorytp.Position = UDim2.new(0.514773548, 0, 0.259568214, 0)
MegaMemorytp.Size = UDim2.new(0, 120, 0, 20)
MegaMemorytp.Font = Enum.Font.GothamBold
MegaMemorytp.Text = "Mega Memory"
MegaMemorytp.TextColor3 = Color3.new(1, 1, 1)
MegaMemorytp.TextSize = 14

NightMemorytp.Name = "NightMemorytp"
NightMemorytp.Parent = WaypointPage
NightMemorytp.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
NightMemorytp.BorderSizePixel = 0
NightMemorytp.Position = UDim2.new(0.755999982, 0, 0.259568214, 0)
NightMemorytp.Size = UDim2.new(0, 120, 0, 20)
NightMemorytp.Font = Enum.Font.GothamBold
NightMemorytp.Text = "Night Memory"
NightMemorytp.TextColor3 = Color3.new(1, 1, 1)
NightMemorytp.TextSize = 14

ExtremeMemorytp.Name = "ExtremeMemorytp"
ExtremeMemorytp.Parent = WaypointPage
ExtremeMemorytp.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
ExtremeMemorytp.BorderSizePixel = 0
ExtremeMemorytp.Position = UDim2.new(0.0160000008, 0, 0.300000012, 0)
ExtremeMemorytp.Size = UDim2.new(0, 120, 0, 20)
ExtremeMemorytp.Font = Enum.Font.GothamBold
ExtremeMemorytp.Text = "Extreme Memory"
ExtremeMemorytp.TextColor3 = Color3.new(1, 1, 1)
ExtremeMemorytp.TextSize = 14

StartHalltp.Name = "StartHalltp"
StartHalltp.Parent = WaypointPage
StartHalltp.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
StartHalltp.BorderSizePixel = 0
StartHalltp.Position = UDim2.new(0.264999986, 0, 0.300000012, 0)
StartHalltp.Size = UDim2.new(0, 120, 0, 20)
StartHalltp.Font = Enum.Font.GothamBold
StartHalltp.Text = "Star Hall"
StartHalltp.TextColor3 = Color3.new(1, 1, 1)
StartHalltp.TextSize = 14

Anttp.Name = "Anttp"
Anttp.Parent = WaypointPage
Anttp.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Anttp.BorderSizePixel = 0
Anttp.Position = UDim2.new(0.514999986, 0, 0.300000012, 0)
Anttp.Size = UDim2.new(0, 120, 0, 20)
Anttp.Font = Enum.Font.GothamBold
Anttp.Text = "Ant"
Anttp.TextColor3 = Color3.new(1, 1, 1)
Anttp.TextSize = 14

Demonmasktp.Name = "Demonmasktp"
Demonmasktp.Parent = WaypointPage
Demonmasktp.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Demonmasktp.BorderSizePixel = 0
Demonmasktp.Position = UDim2.new(0.0160000008, 0, 0.379999995, 0)
Demonmasktp.Size = UDim2.new(0, 120, 0, 20)
Demonmasktp.Font = Enum.Font.GothamBold
Demonmasktp.Text = "Demon Mask"
Demonmasktp.TextColor3 = Color3.new(1, 1, 1)
Demonmasktp.TextSize = 14

TunelBeartp.Name = "TunelBeartp"
TunelBeartp.Parent = WaypointPage
TunelBeartp.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
TunelBeartp.BorderSizePixel = 0
TunelBeartp.Position = UDim2.new(0.0140000004, 0, 0.340000004, 0)
TunelBeartp.Size = UDim2.new(0, 120, 0, 20)
TunelBeartp.Font = Enum.Font.GothamBold
TunelBeartp.Text = "Tunel Bear"
TunelBeartp.TextColor3 = Color3.new(1, 1, 1)
TunelBeartp.TextSize = 14

WindyBeetp.Name = "WindyBeetp"
WindyBeetp.Parent = WaypointPage
WindyBeetp.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
WindyBeetp.BorderSizePixel = 0
WindyBeetp.Position = UDim2.new(0.263000011, 0, 0.340000004, 0)
WindyBeetp.Size = UDim2.new(0, 120, 0, 20)
WindyBeetp.Font = Enum.Font.GothamBold
WindyBeetp.Text = "WindyBee"
WindyBeetp.TextColor3 = Color3.new(1, 1, 1)
WindyBeetp.TextSize = 14

Diamondmasktp.Name = "Diamondmasktp"
Diamondmasktp.Parent = WaypointPage
Diamondmasktp.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Diamondmasktp.BorderSizePixel = 0
Diamondmasktp.Position = UDim2.new(0.513999999, 0, 0.340000004, 0)
Diamondmasktp.Size = UDim2.new(0, 120, 0, 20)
Diamondmasktp.Font = Enum.Font.GothamBold
Diamondmasktp.Text = "Diamond Mask"
Diamondmasktp.TextColor3 = Color3.new(1, 1, 1)
Diamondmasktp.TextSize = 14


GummyMask.Name = "GummyMask"
GummyMask.Parent = WaypointPage
GummyMask.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
GummyMask.BorderSizePixel = 0
GummyMask.Position = UDim2.new(0.755999982, 0, 0.340000004, 0)
GummyMask.Size = UDim2.new(0, 120, 0, 20)
GummyMask.Font = Enum.Font.GothamBold
GummyMask.Text = "Gummy Mask"
GummyMask.TextColor3 = Color3.new(1, 1, 1)
GummyMask.TextSize = 14

Kingamulettp.Name = "Kingamulettp"
Kingamulettp.Parent = WaypointPage
Kingamulettp.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Kingamulettp.BorderSizePixel = 0
Kingamulettp.Position = UDim2.new(0.754622638, 0, 0.300000012, 0)
Kingamulettp.Size = UDim2.new(0, 120, 0, 20)
Kingamulettp.Font = Enum.Font.GothamBold
Kingamulettp.Text = "King Amulet"
Kingamulettp.TextColor3 = Color3.new(1, 1, 1)
Kingamulettp.TextSize = 14

ExtraPage.Name = "ExtraPage"
ExtraPage.Parent = MainPage
ExtraPage.BackgroundColor3 = Color3.new(1, 1, 1)
ExtraPage.BackgroundTransparency = 1
ExtraPage.Position = UDim2.new(0, 0, 0.167000034, 0)
ExtraPage.Size = UDim2.new(0, 530, 0, 155)
ExtraPage.Visible = false
ExtraPage.CanvasSize = UDim2.new(0, 0, 3, 0)
ExtraPage.ScrollBarThickness = 5

Autodig.Name = "Autodig"
Autodig.Parent = ExtraPage
Autodig.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Autodig.BorderSizePixel = 0
Autodig.Position = UDim2.new(0.0160000008, 0, 0.0199999996, 0)
Autodig.Size = UDim2.new(0, 120, 0, 20)
Autodig.Font = Enum.Font.GothamBold
Autodig.Text = "Auto Dig"
Autodig.TextColor3 = Color3.new(1, 1, 1)
Autodig.TextSize = 14

Autobuffitem.Name = "Autobuffitem"
Autobuffitem.Parent = ExtraPage
Autobuffitem.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Autobuffitem.BorderSizePixel = 0
Autobuffitem.Position = UDim2.new(0.261000007, 0, 0.0199999996, 0)
Autobuffitem.Size = UDim2.new(0, 120, 0, 20)
Autobuffitem.Font = Enum.Font.GothamBold
Autobuffitem.Text = "Auto Item Buff"
Autobuffitem.TextColor3 = Color3.new(1, 1, 1)
Autobuffitem.TextSize = 14

Killcoconutcrab.Name = "Killcoconutcrab"
Killcoconutcrab.Parent = ExtraPage
Killcoconutcrab.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Killcoconutcrab.BorderSizePixel = 0
Killcoconutcrab.Position = UDim2.new(0.510999978, 0, 0.0199999996, 0)
Killcoconutcrab.Size = UDim2.new(0, 120, 0, 20)
Killcoconutcrab.Font = Enum.Font.GothamBold
Killcoconutcrab.Text = "Kill Coconut Crab"
Killcoconutcrab.TextColor3 = Color3.new(1, 1, 1)
Killcoconutcrab.TextScaled = true
Killcoconutcrab.TextSize = 14
Killcoconutcrab.TextWrapped = true

KillTunnel.Name = "KillTunnel"
KillTunnel.Parent = ExtraPage
KillTunnel.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
KillTunnel.BorderSizePixel = 0
KillTunnel.Position = UDim2.new(0.755999982, 0, 0.0199999996, 0)
KillTunnel.Size = UDim2.new(0, 120, 0, 20)
KillTunnel.Font = Enum.Font.GothamBold
KillTunnel.Text = "Kill Tunnel"
KillTunnel.TextColor3 = Color3.new(1, 1, 1)
KillTunnel.TextSize = 14

Usenightbell.Name = "Usenightbell"
Usenightbell.Parent = ExtraPage
Usenightbell.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Usenightbell.BorderSizePixel = 0
Usenightbell.Position = UDim2.new(0.0160000008, 0, 0.0599999987, 0)
Usenightbell.Size = UDim2.new(0, 120, 0, 20)
Usenightbell.Font = Enum.Font.GothamBold
Usenightbell.Text = "Use Night Bell"
Usenightbell.TextColor3 = Color3.new(1, 1, 1)
Usenightbell.TextSize = 14

Usefielddice.Name = "Usefielddice"
Usefielddice.Parent = ExtraPage
Usefielddice.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Usefielddice.BorderSizePixel = 0
Usefielddice.Position = UDim2.new(0.261000007, 0, 0.0599999987, 0)
Usefielddice.Size = UDim2.new(0, 120, 0, 20)
Usefielddice.Font = Enum.Font.GothamBold
Usefielddice.Text = "Use Field Dice"
Usefielddice.TextColor3 = Color3.new(1, 1, 1)
Usefielddice.TextSize = 14

Autokillvicious.Name = "Autokillvicious"
Autokillvicious.Parent = ExtraPage
Autokillvicious.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Autokillvicious.BorderSizePixel = 0
Autokillvicious.Position = UDim2.new(0.510999978, 0, 0.0599999987, 0)
Autokillvicious.Size = UDim2.new(0, 120, 0, 20)
Autokillvicious.Font = Enum.Font.GothamBold
Autokillvicious.Text = "Auto Vicious"
Autokillvicious.TextColor3 = Color3.new(1, 1, 1)
Autokillvicious.TextSize = 14

Autokillwindy.Name = "Autokillwindy"
Autokillwindy.Parent = ExtraPage
Autokillwindy.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Autokillwindy.BorderSizePixel = 0
Autokillwindy.Position = UDim2.new(0.755999982, 0, 0.0599999987, 0)
Autokillwindy.Size = UDim2.new(0, 120, 0, 20)
Autokillwindy.Font = Enum.Font.GothamBold
Autokillwindy.Text = "Auto Windy "
Autokillwindy.TextColor3 = Color3.new(1, 1, 1)
Autokillwindy.TextSize = 14

Autokillmonster.Name = "Autokillmonster"
Autokillmonster.Parent = ExtraPage
Autokillmonster.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Autokillmonster.BorderSizePixel = 0
Autokillmonster.Position = UDim2.new(0.755999982, 0, 0.100000001, 0)
Autokillmonster.Size = UDim2.new(0, 120, 0, 20)
Autokillmonster.Font = Enum.Font.GothamBold
Autokillmonster.Text = "Auto Night Bell"
Autokillmonster.TextColor3 = Color3.new(1, 1, 1)
Autokillmonster.TextSize = 14

RemoteQuest.Name = "RemoteQuest" --CHECKPOINT 1
RemoteQuest.Parent = ExtraPage
RemoteQuest.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
RemoteQuest.BorderSizePixel = 0
RemoteQuest.Position = UDim2.new(0.510999978, 0, 0.100000001, 0)
RemoteQuest.Size = UDim2.new(0, 120, 0, 20)
RemoteQuest.Font = Enum.Font.GothamBold
RemoteQuest.Text = "Auto Quest"
RemoteQuest.TextColor3 = Color3.new(1, 1, 1)
RemoteQuest.TextSize = 14

Autogumdrop.Name = "Autogumdrop"
Autogumdrop.Parent = ExtraPage
Autogumdrop.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Autogumdrop.BorderSizePixel = 0
Autogumdrop.Position = UDim2.new(0.261000007, 0, 0.100000001, 0)
Autogumdrop.Size = UDim2.new(0, 120, 0, 20)
Autogumdrop.Font = Enum.Font.GothamBold
Autogumdrop.Text = "Auto Gumdrop"
Autogumdrop.TextColor3 = Color3.new(1, 1, 1)
Autogumdrop.TextSize = 14

FindWindBee.Name = "FindWindBee"
FindWindBee.Parent = ExtraPage
FindWindBee.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
FindWindBee.BorderSizePixel = 0
FindWindBee.Position = UDim2.new(0.0160000008, 0, 0.100000001, 0)
FindWindBee.Size = UDim2.new(0, 120, 0, 20)
FindWindBee.Font = Enum.Font.GothamBold
FindWindBee.Text = "Find Windy Bee"
FindWindBee.TextColor3 = Color3.new(1, 1, 1)
FindWindBee.TextSize = 14

Useglitter.Name = "Useglitter"
Useglitter.Parent = ExtraPage
Useglitter.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Useglitter.BorderSizePixel = 0
Useglitter.Position = UDim2.new(0.755999982, 0, 0.140375406, 0)
Useglitter.Size = UDim2.new(0, 120, 0, 20)
Useglitter.Font = Enum.Font.GothamBold
Useglitter.Text = "Auto Farm Sparkles"
Useglitter.TextColor3 = Color3.new(1, 1, 1)
Useglitter.TextSize = 10

Autogliter.Name = "Autogliter"
Autogliter.Parent = ExtraPage
Autogliter.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Autogliter.BorderSizePixel = 0
Autogliter.Position = UDim2.new(0.510999978, 0, 0.140375406, 0)
Autogliter.Size = UDim2.new(0, 120, 0, 20)
Autogliter.Font = Enum.Font.GothamBold
Autogliter.Text = "Auto Glitter"
Autogliter.TextColor3 = Color3.new(1, 1, 1)
Autogliter.TextSize = 14

Autococonut.Name = "Autococonut"
Autococonut.Parent = ExtraPage
Autococonut.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Autococonut.BorderSizePixel = 0
Autococonut.Position = UDim2.new(0.0160000008, 0, 0.140375406, 0)
Autococonut.Size = UDim2.new(0, 120, 0, 20)
Autococonut.Font = Enum.Font.GothamBold
Autococonut.Text = "Auto Coconut"
Autococonut.TextColor3 = Color3.new(1, 1, 1)
Autococonut.TextSize = 14

Autostinger.Name = "Autostinger"
Autostinger.Parent = ExtraPage
Autostinger.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Autostinger.BorderSizePixel = 0
Autostinger.Position = UDim2.new(0.261000007, 0, 0.140375406, 0)
Autostinger.Size = UDim2.new(0, 120, 0, 20)
Autostinger.Font = Enum.Font.GothamBold
Autostinger.Text = "Auto Stinger"
Autostinger.TextColor3 = Color3.new(1, 1, 1)
Autostinger.TextSize = 14

Eqipdemonmask.Name = "Eqipdemonmask"
Eqipdemonmask.Parent = ExtraPage
Eqipdemonmask.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Eqipdemonmask.BorderSizePixel = 0
Eqipdemonmask.Position = UDim2.new(0.755999982, 0, 0.180000007, 0)
Eqipdemonmask.Size = UDim2.new(0, 120, 0, 20)
Eqipdemonmask.Font = Enum.Font.GothamBold
Eqipdemonmask.Text = "Equip Diamond Mask"
Eqipdemonmask.TextColor3 = Color3.new(1, 1, 1)
Eqipdemonmask.TextScaled = true
Eqipdemonmask.TextSize = 14
Eqipdemonmask.TextWrapped = true

Equipdemonmask.Name = "Equipdemonmask"
Equipdemonmask.Parent = ExtraPage
Equipdemonmask.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Equipdemonmask.BorderSizePixel = 0
Equipdemonmask.Position = UDim2.new(0.510999978, 0, 0.180000007, 0)
Equipdemonmask.Size = UDim2.new(0, 120, 0, 20)
Equipdemonmask.Font = Enum.Font.GothamBold
Equipdemonmask.Text = "Equip Demon Mask"
Equipdemonmask.TextColor3 = Color3.new(1, 1, 1)
Equipdemonmask.TextScaled = true
Equipdemonmask.TextSize = 14
Equipdemonmask.TextWrapped = true

Equipgummymask.Name = "Equipgummymask"
Equipgummymask.Parent = ExtraPage
Equipgummymask.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Equipgummymask.BorderSizePixel = 0
Equipgummymask.Position = UDim2.new(0.261000007, 0, 0.180000007, 0)
Equipgummymask.Size = UDim2.new(0, 120, 0, 20)
Equipgummymask.Font = Enum.Font.GothamBold
Equipgummymask.Text = "Equip Gummy Mask"
Equipgummymask.TextColor3 = Color3.new(1, 1, 1)
Equipgummymask.TextScaled = true
Equipgummymask.TextSize = 14
Equipgummymask.TextWrapped = true

Automagicbean.Name = "Automagicbean"
Automagicbean.Parent = ExtraPage
Automagicbean.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Automagicbean.BorderSizePixel = 0
Automagicbean.Position = UDim2.new(0.0160000008, 0, 0.180000007, 0)
Automagicbean.Size = UDim2.new(0, 120, 0, 20)
Automagicbean.Font = Enum.Font.GothamBold
Automagicbean.Text = "Auto Magic Bean"
Automagicbean.TextColor3 = Color3.new(1, 1, 1)
Automagicbean.TextSize = 14

Bringtornado.Name = "Bringtornado"
Bringtornado.Parent = ExtraPage
Bringtornado.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Bringtornado.BorderSizePixel = 0
Bringtornado.Position = UDim2.new(0.755999982, 0, 0.219999999, 0)
Bringtornado.Size = UDim2.new(0, 120, 0, 20)
Bringtornado.Font = Enum.Font.GothamBold
Bringtornado.Text = "Bring Tornado"
Bringtornado.TextColor3 = Color3.new(1, 1, 1)
Bringtornado.TextSize = 14

Killstumnail.Name = "Killstumnail"
Killstumnail.Parent = ExtraPage
Killstumnail.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Killstumnail.BorderSizePixel = 0
Killstumnail.Position = UDim2.new(0.510999978, 0, 0.219999999, 0)
Killstumnail.Size = UDim2.new(0, 120, 0, 20)
Killstumnail.Font = Enum.Font.GothamBold
Killstumnail.Text = "Auto Farm Leaves"
Killstumnail.TextColor3 = Color3.new(1, 1, 1)
Killstumnail.TextSize = 14

Dropweapon.Name = "Dropweapon"
Dropweapon.Parent = ExtraPage
Dropweapon.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Dropweapon.BorderSizePixel = 0
Dropweapon.Position = UDim2.new(0.261000007, 0, 0.219999999, 0)
Dropweapon.Size = UDim2.new(0, 120, 0, 20)
Dropweapon.Font = Enum.Font.GothamBold
Dropweapon.Text = "Drop Weapon"
Dropweapon.TextColor3 = Color3.new(1, 1, 1)
Dropweapon.TextSize = 14

Noclip.Name = "Noclip"
Noclip.Parent = ExtraPage
Noclip.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Noclip.BorderSizePixel = 0
Noclip.Position = UDim2.new(0.0160000008, 0, 0.219999999, 0)
Noclip.Size = UDim2.new(0, 120, 0, 20)
Noclip.Font = Enum.Font.GothamBold
Noclip.Text = "Noclip"
Noclip.TextColor3 = Color3.new(1, 1, 1)
Noclip.TextSize = 14

AutoDispenser.Name = "AutoDispenser"
AutoDispenser.Parent = ExtraPage
AutoDispenser.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
AutoDispenser.BorderSizePixel = 0
AutoDispenser.Position = UDim2.new(0.0144905448, 0, 0.261870772, 0)
AutoDispenser.Size = UDim2.new(0, 120, 0, 20)
AutoDispenser.Font = Enum.Font.GothamBold
AutoDispenser.Text = "Auto Dispenser"
AutoDispenser.TextColor3 = Color3.new(1, 1, 1)
AutoDispenser.TextSize = 14

Autotop.Name = "Autotop"
Autotop.Parent = ExtraPage
Autotop.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Autotop.BorderSizePixel = 0
Autotop.Position = UDim2.new(0.259773552, 0, 0.261870772, 0)
Autotop.Size = UDim2.new(0, 120, 0, 20)
Autotop.Font = Enum.Font.GothamBold
Autotop.Text = "Auto Dispenser"
Autotop.TextColor3 = Color3.new(1, 1, 1)
Autotop.TextSize = 14

AutoDispenser_2.Name = "AutoDispenser"
AutoDispenser_2.Parent = ExtraPage
AutoDispenser_2.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
AutoDispenser_2.BorderSizePixel = 0
AutoDispenser_2.Position = UDim2.new(0.259773552, 0, 0.261870772, 0)
AutoDispenser_2.Size = UDim2.new(0, 120, 0, 20)
AutoDispenser_2.Font = Enum.Font.GothamBold
AutoDispenser_2.Text = "Auto Top Booster"
AutoDispenser_2.TextColor3 = Color3.new(1, 1, 1)
AutoDispenser_2.TextSize = 14

Autored.Name = "Autored"
Autored.Parent = ExtraPage
Autored.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Autored.BorderSizePixel = 0
Autored.Position = UDim2.new(0.510716915, 0, 0.261870772, 0)
Autored.Size = UDim2.new(0, 120, 0, 20)
Autored.Font = Enum.Font.GothamBold
Autored.Text = "Auto Red Booster"
Autored.TextColor3 = Color3.new(1, 1, 1)
Autored.TextScaled = true
Autored.TextSize = 14
Autored.TextWrapped = true

Autoblue.Name = "Autoblue"
Autoblue.Parent = ExtraPage
Autoblue.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
Autoblue.BorderSizePixel = 0
Autoblue.Position = UDim2.new(0.755999923, 0, 0.261870772, 0)
Autoblue.Size = UDim2.new(0, 120, 0, 20)
Autoblue.Font = Enum.Font.GothamBold
Autoblue.Text = "Auto Blue Booster"
Autoblue.TextColor3 = Color3.new(1, 1, 1)
Autoblue.TextScaled = true
Autoblue.TextSize = 14
Autoblue.TextWrapped = true

ExtrasButton.Name = "ExtrasButton"
ExtrasButton.Parent = MainPage
ExtrasButton.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
ExtrasButton.BorderSizePixel = 0
ExtrasButton.Position = UDim2.new(0.538195491, 0, 0.0399999991, 0)
ExtrasButton.Size = UDim2.new(0.159999996, 0, 0.0869999975, 0)
ExtrasButton.Font = Enum.Font.GothamBold
ExtrasButton.Text = "Features"
ExtrasButton.TextColor3 = Color3.new(0, 0, 0)
ExtrasButton.TextSize = 14


FarmingButton.Name = "FarmingButton"
FarmingButton.Parent = MainPage
FarmingButton.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
FarmingButton.BorderSizePixel = 0
FarmingButton.Position = UDim2.new(0.198195487, 0, 0.0399999991, 0)
FarmingButton.Size = UDim2.new(0.159999996, 0, 0.0869999975, 0)
FarmingButton.Font = Enum.Font.GothamBold
FarmingButton.Text = "Farming"
FarmingButton.TextColor3 = Color3.new(0, 0, 0)
FarmingButton.TextSize = 14


HomeButton.Name = "HomeButton"
HomeButton.Parent = MainPage
HomeButton.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
HomeButton.BorderSizePixel = 0
HomeButton.Position = UDim2.new(0.0281954892, 0, 0.0399999991, 0)
HomeButton.Size = UDim2.new(0.159999996, 0, 0.0869999975, 0)
HomeButton.Font = Enum.Font.GothamBold
HomeButton.Text = "Home"
HomeButton.TextColor3 = Color3.new(0, 0, 0)
HomeButton.TextSize = 14


SettingButton.Name = "SettingButton"
SettingButton.Parent = MainPage
SettingButton.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
SettingButton.BorderSizePixel = 0
SettingButton.Position = UDim2.new(0.708195508, 0, 0.0399999991, 0)
SettingButton.Size = UDim2.new(0.159999996, 0, 0.0869999975, 0)
SettingButton.Font = Enum.Font.GothamBold
SettingButton.Text = "Settings"
SettingButton.TextColor3 = Color3.new(0, 0, 0)
SettingButton.TextSize = 14

DiscordButton.Name = "DiscordButton"
DiscordButton.Parent = MainPage
DiscordButton.BackgroundColor3 = Color3.new(0.44705882352, 0.53725490196, 0.85490196078)
DiscordButton.BorderSizePixel = 2
DiscordButton.Position = UDim2.new(0.878195508, 0, 0.0399999991, 0)
DiscordButton.Size = UDim2.new(0.109999996, 0, 0.0869999975, 0)
DiscordButton.Font = Enum.Font.GothamBold
DiscordButton.Text = "Discord"
DiscordButton.TextColor3 = Color3.new(0, 0, 0)
DiscordButton.TextSize = 14

WaypointsButton.Name = "WaypointsButton"
WaypointsButton.Parent = MainPage
WaypointsButton.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
WaypointsButton.BorderSizePixel = 0
WaypointsButton.Position = UDim2.new(0.368195474, 0, 0.0399999991, 0)
WaypointsButton.Size = UDim2.new(0.159999996, 0, 0.0869999975, 0)
WaypointsButton.Font = Enum.Font.GothamBold
WaypointsButton.Text = "Teleports"
WaypointsButton.TextColor3 = Color3.new(0, 0, 0)
WaypointsButton.TextSize = 14

SettingPage.Name = "SettingPage"
SettingPage.Parent = MainPage
SettingPage.BackgroundColor3 = Color3.new(0.96078431372, 0.2431372549, 0.21960784313)
SettingPage.BackgroundTransparency = 1
SettingPage.Position = UDim2.new(-0, 0, 0.127000004, 0)
SettingPage.Size = UDim2.new(1, 0, 0.787999988, 0)
SettingPage.Visible = false

Close.Name = "Close"
Close.Parent = MiniPage
Close.BackgroundColor3 = Color3.new(1, 1, 1)
Close.BackgroundTransparency = 1
Close.Position = UDim2.new(0.00760612637, 0, 0.0016666688, 0)
Close.Size = UDim2.new(0, 25, 0, 25)
Close.Font = Enum.Font.GothamBold
Close.Text = "-"
MiniPage.Transparency = 0.5
Close.TextColor3 = Color3.new(1, 1, 1)
Close.TextSize = 20

DarkCyberLoadingGUI.Name = "[DarkCyber]LoadingGUI"
DarkCyberLoadingGUI.Parent = game.CoreGui

LoadingFrame.Name = "Loading Frame"
LoadingFrame.Parent = DarkCyberLoadingGUI
LoadingFrame.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
LoadingFrame.BorderSizePixel = 0
LoadingFrame.Position = UDim2.new(0.432933673, 0, 0.416230351, 0)
LoadingFrame.Size = UDim2.new(0, 200, 0, 127)

Createtitle.Name = "Createtitle3"
Createtitle.Parent = LoadingFrame
Createtitle.BackgroundColor3 = Color3.new(0, 0, 0)
Createtitle.BackgroundTransparency = 0
Createtitle.Size = UDim2.new(0, 200, 0, 27)
Createtitle.Font = Enum.Font.GothamBlack
Createtitle.Text = "Loading"
Createtitle.BorderSizePixel = 0
Createtitle.TextColor3 = Color3.new(35, 31, 28)
Createtitle.TextSize = 14

NameTitle.Name = "NameTitle"
NameTitle.Parent = Createtitle
NameTitle.BackgroundColor3 = Color3.new(1, 1, 1)
NameTitle.BackgroundTransparency = 1
NameTitle.Position = UDim2.new(2, 0, 0, 0)
NameTitle.Size = UDim2.new(0, 233, 0, 25)
NameTitle.Font = Enum.Font.GothamBold
NameTitle.Text = ""
NameTitle.TextColor3 = Color3.new(1, 1, 1)
NameTitle.TextSize = 14

Loadingimage.Name = "Loadingimage"
Loadingimage.Parent = LoadingFrame
Loadingimage.BackgroundColor3 = Color3.new(1, 1, 1)
Loadingimage.BackgroundTransparency = 1
Loadingimage.BorderSizePixel = 0
Loadingimage.Position = UDim2.new(0.383938613, 0, 0.29838711, 0)
Loadingimage.Size = UDim2.new(0, 50, 0, 50)
Loadingimage.Image = "http://www.roblox.com/asset/?id=3953349579"

Loadingtext.Name = "Loadingtext"
Loadingtext.Parent = LoadingFrame
Loadingtext.BackgroundColor3 = Color3.new(1, 1, 1)
Loadingtext.BackgroundTransparency = 1
Loadingtext.Position = UDim2.new(0.3004677, 0, 0.307086617, 0)
Loadingtext.Size = UDim2.new(0, 200, 0, 50)
Loadingtext.Font = Enum.Font.GothamBold
Loadingtext.Text = ""
Loadingtext.TextColor3 = Color3.new(0, 0, 0)
Loadingtext.TextSize = 17
Loadingtext.TextXAlignment = Enum.TextXAlignment.Left

DarkCyberSynapshitGUI.Name = "[DarkCyber]SynapshitGUI"
DarkCyberSynapshitGUI.Parent = game.CoreGui

SynapShitPage.Name = "SynapShitPage"
SynapShitPage.Parent = DarkCyberSynapshitGUI
SynapShitPage.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
SynapShitPage.BorderSizePixel = 0
SynapShitPage.Position = UDim2.new(0.432933673, 0, 0.416230351, 0)
SynapShitPage.Size = UDim2.new(0, 200, 0, 127)
SynapShitPage.Visible = false

local Createtitle2 = Instance.new("TextLabel")

Createtitle2.Name = "Createtitle"
Createtitle2.Parent = SynapShitPage
Createtitle2.BackgroundColor3 = Color3.new(1, 1, 1)
Createtitle2.BackgroundTransparency = 1
Createtitle2.Size = UDim2.new(0, 108, 0, 25)
Createtitle2.Font = Enum.Font.GothamBlack
Createtitle2.Text = "sal's Modification"
Createtitle2.TextColor3 = Color3.new(1, 1, 1)
Createtitle2.TextSize = 14

NameTitle2 = Instance.new("TextLabel")

NameTitle2.Name = "NameTitle"
NameTitle2.Parent = Createtitle2
NameTitle2.BackgroundColor3 = Color3.new(1, 1, 1)
NameTitle2.BackgroundTransparency = 1
NameTitle2.Position = UDim2.new(0.997087002, 0, 0, 0)
NameTitle2.Size = UDim2.new(0, 159, 0, 25)
NameTitle2.Font = Enum.Font.GothamBold
NameTitle2.Text = ""
NameTitle2.TextColor3 = Color3.new(1, 1, 1)
NameTitle2.TextSize = 14

Welcome.Name = "Welcome"
Welcome.Parent = SynapShitPage
Welcome.BackgroundColor3 = Color3.new(1, 1, 1)
Welcome.BackgroundTransparency = 1
Welcome.Position = UDim2.new(0, 0, 0.313432842, 0)
Welcome.Size = UDim2.new(0, 266, 0, 50)
Welcome.Font = Enum.Font.GothamBold
Welcome.Text = "Getting things ready.."
Welcome.TextColor3 = Color3.new(35, 31, 28)
Welcome.TextSize = 25
Welcome.TextWrapped = true



-- Scripts:
local red = Color3.fromRGB(255, 80, 80)
local blue = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)

MiniPage.Selectable = true
MiniPage.Draggable = true 
MiniPage.Active = true

local repss = 0
local xoay = 0 

spawn(function()
for i=1,150 do wait(.05)
      xoay = xoay - 10
      Loadingimage.Rotation = xoay
end
end)

for c=1,3 do wait(.3)
      Loadingtext.Text = ""..string.rep('',repss%3+1)
      repss = repss + 1
end

Loadingtext.Text = ""
wait(0.1)

local repss = 0

for d=1,10 do wait(.3)
      Loadingtext.Text = ""..string.rep('',repss%3+1)
      repss = repss + 1
end

if game.PlaceId == 1537690962 or game.PlaceId == 4079902982 then
Loadingtext.Text = ""
if syn then 
DarkCyberLoadingGUI:Destroy()
SynapShitPage.Visible = false
wait(0.1)
SynapShitPage:TweenPosition(UDim2.new(0.416354954, 0, -0.717690426, 0), Enum.EasingDirection.InOut)
wait(0.1)
DarkCyberSynapshitGUI:Destroy()
wait(0.1)
MiniPage:TweenPosition(UDim2.new(0.361979187, 0, 0.34183538, 0), Enum.EasingDirection.InOut)  --0.361979187, 0, 0.34183538, 0
else
LoadingFrame:TweenPosition(UDim2.new(0.410933673, 0, -0.7, 0), Enum.EasingDirection.InOut) 
wait(1)
DarkCyberLoadingGUI:Destroy()
MiniPage:TweenPosition(UDim2.new(0.361979187, 0, 0.34183538, 0), Enum.EasingDirection.InOut)  --0.361979187, 0, 0.34183538, 0 
end
end
VersionText.MouseButton1Down:Connect(function()
      print("Version 1.4.1")
      print("+ Added update log")
      print("~ Fixed bug at RainbowButton (No more Epilepsy)")
      print("~ Fixed WalkSpeed bug")
      print("~ Fixed another WalkSpeed bug")
      print("~ Fixed Nobody's rage audio")
      print("--------------------------------------------------")
      print("Version 1.4.2")
      print("+ Added SHIFT to toggle WalkSpeed & JumpPower")
      print("+ Added INSERT to toggle the Menu")
      print("+ Added teleport to ITZ(copil prost) button")
      print("+ Added teleport to SalutDaniCeFaci(foarte destept pe langa ITZ) button")
      print("~ Bug fixes")
      print("--------------------------------------------------")
      print("Version 1.5")
      print("+ NEW GLORIOUS, INCREDIBLE, AWESOME and INSANE new menu")
      print("+ Added bugs to fix later")
      print("~ Bug Fixes")

end)

CloseButton.MouseButton1Down:Connect(function()
      BaseMenu:Destroy()
end)


Copylinkdiscord.MouseButton1Down:Connect(function()
      s:play()
      local pl = game.Players.LocalPlayer.Character.HumanoidRootPart 
      local pl2 = "SalutDaniCeFaci"
      local humanoid = game.Players.LocalPlayer.Character.Humanoid
      Copylinkdiscord.Text = "Teleporting"
      wait(1)
      Copylinkdiscord.Text = "TP to SalutDaniCeFaci"
  
      pl.CFrame = game.Players[pl2].Character.HumanoidRootPart.CFrame
end)

uis.InputBegan:connect(function(key)
      local hum = game.Players.LocalPlayer.Character.Humanoid
      if key.KeyCode==Enum.KeyCode.LeftShift then
            if isSpeed==false then
                  isSpeed = true
                  hum.WalkSpeed = 100
                  hum.JumpPower = 120
            else if isSpeed==true then
                  isSpeed = false
                  hum.WalkSpeed = 26
                  hum.JumpPower = 54
            end
            end
      end
  end)

TeleportTo32fdba.MouseButton1Down:Connect(function()
    s:play()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart 
    local pl2 = "32fdba"
    local humanoid = game.Players.LocalPlayer.Character.Humanoid
    TeleportTo32fdba.Text = "Teleporting"
    wait(1)
    TeleportTo32fdba.Text = "TP to 32fdba"

    pl.CFrame = game.Players[pl2].Character.HumanoidRootPart.CFrame
end)

TeleportToSalutDaniCeFaci.MouseButton1Down:Connect(function()
    s:play()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart 
    local pl2 = "iTz_662639"
    local humanoid = game.Players.LocalPlayer.Character.Humanoid
    TeleportToSalutDaniCeFaci.Text = "Teleporting"
    wait(1)
    TeleportToSalutDaniCeFaci.Text = "TP to ITZ"

    pl.CFrame = game.Players[pl2].Character.HumanoidRootPart.CFrame
end)

RainbowButton.MouseButton1Down:Connect(function()
      if isRainbow == false then
            isRainbow = true
            nobodi:play()
            wait(3)
            nobodi:stop()
            while true do
                  for i = 1,255 do
                        GameText.TextColor3 =  Color3.fromHSV(i/255,1,1)
                        VersionText.TextColor3 = Color3.fromHSV(i/255,1,1)
                        HomeButton.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        FarmingButton.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        WaypointsButton.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        ExtrasButton.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        SettingButton.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        RainbowButton.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        Copylinkdiscord.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        TeleportTo32fdba.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        TeleportToKillerTorchi.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        SunflowerButton.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        MushroomButton.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        SpiderButton.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        BambooButton.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        RoseButton.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        PineTreeButton.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        CactusButton.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        PumpkinButton.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        PineappleButton.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        StumpButton.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        MountainTopButton.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        CoconutButton.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        PepperButton.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        StawberryButton.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        BlueflowerButton.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        DanrButton.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        DanrButton_2.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        FieldText.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        FieldSelectPage.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        StartButton.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        PollenToHoney.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        TeleportToSalutDaniCeFaci.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        DiscordButton.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        CreditText.TextColor3 = Color3.fromHSV(i/255,1,1)
                        CancelPollenToHoney.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        Destroy.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        Close.TextColor3 = Color3.fromHSV(i/255,1,1)
                        Destroy.TextColor3 = Color3.fromHSV(i/255,1,1)
                        FarmingOptions.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        Button1Minute.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        Button2Minute.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        Button3Minute.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        Button4Minute.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        Button5Minute.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        _Button1_5Minute.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        _Button2Minute.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        _Button3Minute.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        _Button5Minute.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        _Button4Minute.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        FarmingOptionsLogo.TextColor3 = Color3.fromHSV(i/255,1,1)
                        FarmingOptionsConvertTime.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        FarmingOptionsFarmingTime.BackgroundColor3 = Color3.fromHSV(i/255,1,1)
                        FarmingOptionsFarmingText.TextColor3 = Color3.fromHSV(i/255,1,1)
                        FarmingOptionsConvertText.TextColor3 = Color3.fromHSV(i/255,1,1)
                        wait(0.1)
                  end
            end
      else
            if isRainbow == true then
                  print("Rainbow is already activated. (Anti Epilepsy!)")
            end
      end
end)    




TeleportToKillerTorchi.MouseButton1Down:Connect(function()
    s:play()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart 
    local pl2 = "killertorchi"
    local humanoid = game.Players.LocalPlayer.Character.Humanoid
    TeleportToKillerTorchi.Text = "Teleporting"
    wait(1)
    
    TeleportToKillerTorchi.Text = "TP to killertorchi"
    pl.CFrame = game.Players[pl2].Character.HumanoidRootPart.CFrame
end)


HomeButton.MouseButton1Down:Connect(function()
s:play()
HomePage.Visible = true
FarmingPage.Visible = false
WaypointPage.Visible = false
ExtraPage.Visible = false
SettingPage.Visible = false
end)


Button1Minute.MouseButton1Down:Connect(function()
s:play()
    convertTime = 60
    FarmingOptionsConvertTime.Text = "Convert Time: "..convertTime
end)

Button2Minute.MouseButton1Down:Connect(function()
s:play()
    convertTime = 120
    FarmingOptionsConvertTime.Text = "Convert Time: "..convertTime
end)

Button3Minute.MouseButton1Down:Connect(function()
s:play()
    convertTime = 180
    FarmingOptionsConvertTime.Text = "Convert Time: "..convertTime
end)

Button4Minute.MouseButton1Down:Connect(function()
      s:play()
          convertTime = 240
          FarmingOptionsConvertTime.Text = "Convert Time: "..convertTime
end)

Button5Minute.MouseButton1Down:Connect(function()
      s:play()
          convertTime = 300
          FarmingOptionsConvertTime.Text = "Convert Time: "..convertTime
end)

_Button1_5Minute.MouseButton1Down:Connect(function()
s:play()
    inputMinutes = 1
    inputSeconds = 0
    farmTime = 60
    FarmingOptionsFarmingTime.Text = "Farm Time: "..farmTime
end)

_Button2Minute.MouseButton1Down:Connect(function()
      s:play()
          inputMinutes = 2
          inputSeconds = 0
          farmTime = 120
          FarmingOptionsFarmingTime.Text = "Farm Time: "..farmTime
end)

_Button4Minute.MouseButton1Down:Connect(function()
      s:play()
          inputMinutes = 4
          inputSeconds = 0
          farmTime = 240
          FarmingOptionsFarmingTime.Text = "Farm Time: "..farmTime
end)

_Button3Minute.MouseButton1Down:Connect(function()
s:play()
    inputMinutes = 3
    farmTime = 180
    inputSeconds = 0
    FarmingOptionsFarmingTime.Text = "Farm Time: "..farmTime
end)

_Button5Minute.MouseButton1Down:Connect(function()
s:play()
    inputMinutes = 5
    inputSeconds = 0
    farmTime = 300
    FarmingOptionsFarmingTime.Text = "Farm Time: "..farmTime
end)

FarmingButton.MouseButton1Down:Connect(function()
s:play()
HomePage.Visible = false
FarmingPage.Visible = true
WaypointPage.Visible = false
ExtraPage.Visible = false
SettingPage.Visible = false
end)

WaypointsButton.MouseButton1Down:Connect(function()
s:play()
HomePage.Visible = false
FarmingPage.Visible = false
WaypointPage.Visible = true
ExtraPage.Visible = false
SettingPage.Visible = false
end)

DiscordButton.MouseButton1Down:Connect(function()
s:play()
    setclipboard("discord.gg/JyUXGVs")
    GameText.Text = "DOUBLE CLICK TO COPY LINK"
    wait(2)
    GameText.Text = "Kebab"
    
end)


local UserInputService = game:GetService("UserInputService")
 
local function onInputEnded(inputObject, gameProcessedEvent)
    -- First check if the 'gameProcessedEvent' is true
    -- This indicates that another script had already processed the input, so this one can be ignored
    if gameProcessedEvent then return end
    -- Next, check that the input was a keyboard event
    if inputObject.UserInputType == Enum.UserInputType.Keyboard then
        if inputObject.KeyCode == Enum.KeyCode.Insert then
            if Close.Text == "-" then
                  MainPage.Visible = false 
                  MiniPage.Size = UDim2.new(0, 240, 0, 25)
                  Destroy.Position = UDim2.new(0.850854659, 4, 0, 0)
                  Close.Text ="+"
                  s:play()
            else
                  MainPage.Visible = true
                  MiniPage.Size = UDim2.new(0, 540, 0, 25)
                  Destroy.Position = UDim2.new(0.950854659, 4, 0, 0)
                  Close.Text = "-"
                  s:play()
            end
      end
end
end
UserInputService.InputEnded:Connect(onInputEnded)


ExtrasButton.MouseButton1Down:Connect(function()
s:play()
HomePage.Visible = false
FarmingPage.Visible = false
WaypointPage.Visible = false
ExtraPage.Visible = true
SettingPage.Visible = false
end)

SettingButton.MouseButton1Down:Connect(function()
s:play()
HomePage.Visible = false
FarmingPage.Visible = false
WaypointPage.Visible = false
ExtraPage.Visible = false
SettingPage.Visible = true
end)

Destroy.MouseButton1Down:Connect(function()
s:play()
MiniPage:TweenPosition(UDim2.new(0.361979187, 0, -0.7, 0))
wait(1)
DarkCyberMainGUI:Destroy()
end)

Destroy.MouseEnter:Connect(function()
Destroy.TextColor3 = Color3.new(255,0,0)
end)

Destroy.MouseLeave:Connect(function()
Destroy.TextColor3 = Color3.new(255,255,255)
end)

Close.MouseButton1Down:Connect(function()
if Close.Text == "-" then
      MainPage.Visible = false 
      MiniPage.Size = UDim2.new(0, 240, 0, 25)
      Destroy.Position = UDim2.new(0.850854659, 4, 0, 0)
      Close.Text ="+"
      s:play()
else
      MainPage.Visible = true
      MiniPage.Size = UDim2.new(0, 540, 0, 25)
      Destroy.Position = UDim2.new(0.950854659, 4, 0, 0)
      Close.Text = "-"
      s:play()
end
end)

local Waypoints = {

["Tunnel Bear"] = CFrame.new(507.3, 5.7, -45.7),
["Redfield Boost"] = CFrame.new(-332, 20, 244),
["Bluefield Boost"] = CFrame.new(319, 58, 103),
["MountainTop Boost"] = CFrame.new(-40, 176, -191.7),
["Bee Shop"] = CFrame.new(-136.8, 4.6, 243.4),
["Tool Shop"] = CFrame.new(86, 4.6, 294),
["Tool Shop 2"] = CFrame.new(165, 69, -161),
["MountainTop Shop"] = CFrame.new(-18, 176, -137),
["Red Clubhouse"] = CFrame.new(-334, 21, 216),
["Blue Clubhouse"] = CFrame.new(292, 4, 98),
["Ticket Shop"] = CFrame.new(-12.8, 184, -222.2),
["Club Honey"] = CFrame.new(44.8, 5, 319.6),
["RoyalJelly Shop"] = CFrame.new(-297, 53, 68),
["Ticket RoyalJelly Shop"] = CFrame.new(81, 18, 240),
["Honeystorm Dispensor"] = CFrame.new(238.4, 33.3, 165.6),
["Blueberry Dispenser"] = CFrame.new(313.3, 58, 86.9),
["Strawberry Dispenser"] = CFrame.new(-320.5, 46, 272.5),
["Sprout Dispenser"] = CFrame.new(-269.26, 26.56, 267.31),
["Instant Honey Convertor"] = CFrame.new(282, 68, -62),
["King Beetles Lair"] = CFrame.new(218, 3, 140),
["Clover Field"] = CFrame.new(174, 34, 189),
["Mushroom Field"] = CFrame.new(-258.1, 5, 299.7),
["Spider Field"] = CFrame.new(-57.2, 20, -5.3),
["Blue Field"] = CFrame.new(113.7, 4, 101.5),
["Sunflower Field"] = CFrame.new(-208, 4, 185),
["StrawBerry Field"] = CFrame.new(-169.3, 20, -3.2),
["Red Field"] = CFrame.new(-258.1, 5, 299.7),
["Dandelion Field"] = CFrame.new(-30, 4, 225),
["BamBoo Field"] = CFrame.new(93, 20, -25),
["Rose Field"] = CFrame.new(-322, 20, 124),
["Mushroom Field"] = CFrame.new(-94, 5, 116),
["Cactus Field"] = CFrame.new(-194, 68, -107),
["Pumpkin Field"] = CFrame.new(-194, 68, -182),
["MountainTop Field"] = CFrame.new(76, 176, -181),
["PineTree Field"] = CFrame.new(-318, 68, -150),
["Pineapple Field"] = CFrame.new(262, 68, -201),
["Onett"] = CFrame.new(-8.4, 234, -517.9),
["Gumdrop Dispenser"] = CFrame.new(63, 20.7, 38.7),
["Treat Dispenser"] = CFrame.new(193.9, 68, -123),
["Treat Shop"] = CFrame.new(-228.2, 5, 89.4),
["Star Hut"] = CFrame.new(135.9, 64.6, 322.1),
["Wealth Clock"] = CFrame.new(310.5, 47.6, 190),
["Coconut Field"] = CFrame.new(-255,72,459),
["Pepper Patch"] = CFrame.new(-486,124,517),
["CCN"] = CFrame.new(-176,71,534),
["Nuoc"] = CFrame.new(-426,70,38),
["Moon"] = CFrame.new(21,88,-54),
["Kill Snail"] = CFrame.new(420,117,-178),
["CC"] = CFrame.new(270,25260,-718),
["CC1"] = CFrame.new(-147,5,195),
["CC2"] = CFrame.new(-431,70,-53),
["CC3"] = CFrame.new(-23,318,-270),
["CC4"] = CFrame.new(-405,110,545),
["CC5"] = CFrame.new(136,66,322),
["CC6"] = CFrame.new(-270,28,267),
["CC7"] = CFrame.new(312,49,189),
["CC8"] = CFrame.new(218,5,140),
["Ant"] = CFrame.new(112,32,477),
["CC9"] = CFrame.new(592,7,-46),
["CC12"] = CFrame.new(-500,52,458),
["CC13"] = CFrame.new(291,28,271),
["CC14"] = CFrame.new(272,25268,-773),
["CC15"] = CFrame.new(-336,133,-387),
["CC16"] = CFrame.new(218,5,140),
["CC17"] = CFrame.new(218,5,140),
["CC19"] = CFrame.new(-486,142,410),
["CC18"] = CFrame.new(218,5,140)
}

local nightbell = false
Autokillmonster.MouseButton1Down:connect(function()
    
if nightbell == false then
      Autokillmonster.BackgroundColor3 = red 
      nightbell = true
      while nightbell do
            wait(5)
             local A = {

            ["Name"] = "Night Bell"
      }
      local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
      Event:FireServer(A)
      end
else 
      nightbell = false 
       Autokillmonster.BackgroundColor3 = blue
end
      
end)
WindyBeetp.MouseButton1Down:connect(function()
      local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = Waypoints["CC19"]
       
      
end)
Diamondmasktp.MouseButton1Down:connect(function()
      local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = Waypoints["CC15"]
       
      
end)
Demonmasktp.MouseButton1Down:connect(function()
      local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = Waypoints["CC13"]
       
      
end)

TunelBeartp.MouseButton1Down:connect(function()
      local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = Waypoints["Tunnel Bear"]
       
      
end)
GummyMask.MouseButton1Down:connect(function()
      local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = Waypoints["CC14"]
       
      
end)
Coconutshoptp.MouseButton1Down:connect(function()
      local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = Waypoints["CCN"]
       
      
end)
Petaltp.MouseButton1Down:connect(function()
      local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = Waypoints["CC12"]
       
      
end)
Stumptp.MouseButton1Down:connect(function()
      local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = Waypoints["Kill Snail"]
       
      
end)
Suntp.MouseButton1Down:connect(function()
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = Waypoints["Sunflower Field"]
       
      
end)
Dantp.MouseButton1Down:connect(function()
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = Waypoints["Dandelion Field"]
       
      
end)
Clovertp.MouseButton1Down:connect(function()
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = Waypoints["Clover Field"]
       
      
end)
Bambootp.MouseButton1Down:connect(function()
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = Waypoints["BamBoo Field"]
       
      
end)
Blueftp.MouseButton1Down:connect(function()
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = Waypoints["Blue Field"]
       
      
end)
Mushtp.MouseButton1Down:connect(function()
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = Waypoints["Mushroom Field"]
       
      
end)
Spidertp.MouseButton1Down:connect(function()
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = Waypoints["Spider Field"]
       
      
end)
Strawtp.MouseButton1Down:connect(function()
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = Waypoints["StrawBerry Field"]
       
      
end)
Pineappletp.MouseButton1Down:connect(function()
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = Waypoints["Pineapple Field"]
       
      
end)
Rosetp.MouseButton1Down:connect(function()
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = Waypoints["Rose Field"]
       
      
end)
Castustp.MouseButton1Down:connect(function()
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = Waypoints["Cactus Field"]
       
      
end)
Pumtp.MouseButton1Down:connect(function()
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = Waypoints["Pumpkin Field"]
       
      
end)
Pintreetp.MouseButton1Down:connect(function()
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = Waypoints["PineTree Field"]
       
      
end)
Toptp.MouseButton1Down:connect(function()
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = Waypoints["MountainTop Field"]
       
      
end)
Coconuttp.MouseButton1Down:connect(function()
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = Waypoints["Coconut Field"]
       
      
end)
Peppertp.MouseButton1Down:connect(function()
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = Waypoints["Pepper Patch"]
       
      
end)


Autored.MouseButton1Down:connect(function()
      local a = "Red Field Booster"
local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(a)
      while wait(10) do
local a = "Red Field Booster"
local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(a)
end
end)
Autoblue.MouseButton1Down:connect(function()
      local a = "Blue Field Booster"
local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(a)
      while wait(10) do
local a = "Blue Field Booster"
local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(a)
      end
end)

AutoDispenser_2.MouseButton1Down:connect(function()
      
local a = "Field Booster"
local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(a)
      while wait(10) do 
local a = "Field Booster"
local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
Event:FireServer(a)
      end
      
end)

local afksnail = false
Afkstumptp.MouseButton1Down:connect(function(l)
if afksnail == false then 
      afksnail = true 
      Afkstumptp.BackgroundColor3 = red 
      noclip = true
      while afksnail do
            wait()
            
            local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = Waypoints["Kill Snail"]
      end
else 
      afksnail = false 
      Afkstumptp.BackgroundColor3 = blue 
end
end)

      
      

Shopbasictp.MouseButton1Down:connect(function()
      
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = Waypoints["Tool Shop"]
      
      
end)
Shopproctp.MouseButton1Down:connect(function()
      
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = Waypoints["Tool Shop 2"]
      
      
end)
Shoptoptp.MouseButton1Down:connect(function()
      
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = Waypoints["MountainTop Shop"]
      
      
end)
Shopsprinklertp.MouseButton1Down:connect(function()
      
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = Waypoints["Nuoc"]
      
      
end)
Shopmoontp.MouseButton1Down:connect(function()
      
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = Waypoints["Moon"]
      
      
end)


InstantConversiontp.MouseButton1Down:connect(function()
      
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = Waypoints["CC1"]
      
      
end)
MegaMemorytp.MouseButton1Down:connect(function()
      
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = Waypoints["CC2"]
      
      
end)
NightMemorytp.MouseButton1Down:connect(function()
      
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = Waypoints["CC3"]
      
      
end)
ExtremeMemorytp.MouseButton1Down:connect(function()
      
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = Waypoints["CC4"]
      
      
end)
StartHalltp.MouseButton1Down:connect(function()
      
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = Waypoints["CC5"]
      
      
end)
SummonSprouttp.MouseButton1Down:connect(function()
      
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = Waypoints["CC6"]
      
      
end)
Anttp.MouseButton1Down:connect(function()
      
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = Waypoints["Ant"]
      
      
end)
Kingamulettp.MouseButton1Down:connect(function()
      
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = Waypoints["CC8"]
      
      
end)

--auto


local dispenser = false
AutoDispenser.MouseButton1Down:connect(function()
if dispenser == false then 
      dispenser = true 
      AutoDispenser.BackgroundColor3 = red 
      while dispenser do
            wait(5)
      
      local A_1 = "Glue Dispenser"
                  local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  local A_1 = "Wealth Clock"
                  local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  local A_1 = "Coconut Dispenser"
                  local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  local A_1 = "Strawberry Dispenser"
                  local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  local A_1 = "Treat Dispenser"
                  local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  local A_1 = "Free Ant Pass Dispenser"
                  local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  local A_1 = "Blueberry Dispenser"
                  local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  local A_1 = "Honey Dispenser"
                  local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  local A_1 = "Free Royal Jelly Dispenser"
                  local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
                  Event:FireServer(A_1)
                  end
else 
      dispenser = false 
      AutoDispenser.BackgroundColor3 = blue 
end
end)







Dropweapon.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.Humanoid.Name = 1
local l = game.Players.LocalPlayer.Character["1"]:Clone()
l.Parent = game.Players.LocalPlayer.Character
l.Name = "Humanoid"
wait(0.1)
game.Players.LocalPlayer.Character["1"]:Destroy()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = true
wait(0.1)
game.Players.LocalPlayer.Character.Animate.Disabled = false
game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
end)




local killtunell = false
KillTunnel.MouseButton1Down:connect(function(j)
      if killtunell == false then
      local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = Waypoints["Tunnel Bear"]
      killtunell = true 
      KillTunnel.BackgroundColor3 = red 
      noclip = true
      for _,v in pairs(game.workspace.Decorations.TrapTunnel:GetChildren()) do 
      if string.find(v.Name,"") then 
            v:Destroy()

      end
      end
      wait(6)
      while killtunell do
            wait()
      for _,v in pairs(game.Workspace.Monsters:GetChildren()) do
      if string.find(v.Name,"Tunnel") then
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,20.5,0)

      end
      end
      end
      else 
      noclip = false    
      killtunell = false 
      KillTunnel.BackgroundColor3 = blue 
end
end)





noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)
if key == "o" then
noclip = not noclip
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)





local killcoconut = false
Killcoconutcrab.MouseButton1Down:connect(function()
      if killcoconut == false then 
      Killcoconutcrab.BackgroundColor3 = red
      killcoconut = true 
      noclip = true
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-256.375092, 112.547897, 500.457794, 0.998952866, -0.0450557806, 0.00794458669, -8.64538929e-09, 0.173648775, 0.98480767, -0.0457508452, -0.98377645, 0.173466951)
else 
      killcoconut = false 
      noclip = false
      Killcoconutcrab.BackgroundColor3 = blue
end
end)


local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
  vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
  wait(1)
  vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
print ("Afk 15m")
end)




local stinger = false
Autostinger.MouseButton1Down:connect(function(b)
if stinger == false then
      stinger = true 
      Autostinger.BackgroundColor3 = red
      local A = {

            ["Name"] = "Stinger"
      }
      local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
      Event:FireServer(A)
      while stinger do
            wait(30)
      
            local A = {

            ["Name"] = "Stinger"
      }
      local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
      Event:FireServer(A)
      end 
else 
      stinger = false 
      Autostinger.BackgroundColor3 = blue
end

end)



local item = false
Autobuffitem.MouseButton1Down:connect(function(c)
if item == false then 
      item = true 
      Autobuffitem.BackgroundColor3 = red
      local A = {

            ["Name"] = "Blue Extract"
      }
      local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
      Event:FireServer(A)
      local A = {

            ["Name"] = "Red Extract"
      }
      local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
      Event:FireServer(A)
      local A = {

            ["Name"] = "Oil"
      }
      local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
      Event:FireServer(A)
      local A = {

            ["Name"] = "Enzymes"
      }
      local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
      Event:FireServer(A)
      local A = {

            ["Name"] = "Glue"
      }
      local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
      Event:FireServer(A)
      local A = {

            ["Name"] = "Glitter"
      }
      local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
      Event:FireServer(A)
      local A = {

            ["Name"] = "Tropical Drink"
      }
      local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
      Event:FireServer(A)
      while item do
            wait(600)
      
            local A = {

            ["Name"] = "Blue Extract"
      }
      local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
      Event:FireServer(A)
      local A = {

            ["Name"] = "Red Extract"
      }
      local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
      Event:FireServer(A)
      local A = {

            ["Name"] = "Oil"
      }
      local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
      Event:FireServer(A)
      local A = {

            ["Name"] = "Enzymes"
      }
      local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
      Event:FireServer(A)
      local A = {

            ["Name"] = "Glue"
      }
      local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
      Event:FireServer(A)
      local A = {

            ["Name"] = "Glitter"
      }
      local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
      Event:FireServer(A)
      local A = {

            ["Name"] = "Tropical Drink"
      }
      local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
      Event:FireServer(A)
      
      end
      
else 
      item = false 
      Autobuffitem.BackgroundColor3 = blue
end
end)



local gliter = false
Autogliter.MouseButton1Down:connect(function(d)
if gliter == false then
      gliter = true 
      Autogliter.BackgroundColor3 = red
      local A = {

            ["Name"] = "Glitter"
      }
      local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
      Event:FireServer(A)
      while gliter do
            wait(920)
      
            local A = {

            ["Name"] = "Glitter"
      }
      local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
      Event:FireServer(A)
      
      
            end
else 
      gliter = false 
      Autogliter.BackgroundColor3 = blue
end
end)



local coconut = false
Autococonut.MouseButton1Down:connect(function(e)
if coconut == false then 
      coconut = true 
      Autococonut.BackgroundColor3 = red
      local A = {

            ["Name"] = "Coconut"
      }
      local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
      Event:FireServer(A)
      while coconut do
            wait(11)
      
            local A = {

            ["Name"] = "Coconut"
      }
      local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
      Event:FireServer(A)
      
      end
else 
      coconut = false
      Autococonut.BackgroundColor3 = blue
end
end)

local AutoDig = false
Autodig.MouseButton1Down:connect(function()
      if AutoDig == false then
      AutoDig = true 
      Autodig.BackgroundColor3 = red
      while AutoDig do
            wait(0.5)
            
 for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
      if v:IsA("Tool") then 
            v.ClickEvent:FireServer()
      
      end
            end
            end
else 
      AutoDig = false
      Autodig.BackgroundColor3 = blue
end
end)


local Sparkles = false
Useglitter.MouseButton1Down:connect(function()

if Sparkles == false then
      Sparkles = true 
      Useglitter.BackgroundColor3 = red
local test = "C"
local tweenservice = game:GetService("TweenService")
local plr = game.Players.LocalPlayer
local info = TweenInfo.new(0.1) -- change to how long it takes to get to the item (in seconds)
local item = {}
while Sparkles do
wait(0.5)
for _,v in pairs(game.workspace.Flowers:GetDescendants()) do
if string.find(v.Name,"Sparkles") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
end
end
for k,v in pairs(workspace.Collectibles:GetChildren()) do
 if tostring(v) == tostring(game.Players.LocalPlayer.Name) or tostring(v) == test then
						if (v.Position-plr.Character.HumanoidRootPart.Position).magnitude <= 60 then
item.CFrame = CFrame.new(v.Position.x,plr.Character.HumanoidRootPart.Position.y,v.Position.z)
local Tween = tweenservice:Create(plr.Character.HumanoidRootPart, info, item)
Tween:Play()
end
end
end
end

else 
      Sparkles = false
      Useglitter.BackgroundColor3 = blue
end
end)

local gumdrop = false
Autogumdrop.MouseButton1Down:connect(function(h)
      if gumdrop == false then 
      gumdrop = true 
      Autogumdrop.BackgroundColor3 = red
      while gumdrop do
            wait(2)
            
            local A = {

            ["Name"] = "Gumdrops"
      }
      local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
      Event:FireServer(A)
      
            end
else 
      gumdrop = false
      Autogumdrop.BackgroundColor3 = blue
end
end)

Equipgummymask.MouseButton1Down:connect(function()
      local A_1 = "Equip"
local A_2 = 
{
      ["Mute"] = true, 
      ["Type"] = "Gummy Mask", 
      ["Category"] = "Accessory"
}
local Event = game:GetService("ReplicatedStorage").Events.ItemPackageEvent
Event:InvokeServer(A_1, A_2)
end)

local tpwindy = false
Autokillwindy.MouseButton1Down:connect(function(o)
      
      if tpwindy == false then 
      tpwindy = true 
      Autokillwindy.BackgroundColor3 =red
      noclip = true
	local player = game.Players.LocalPlayer
	local sanghuman = player.Character.HumanoidRootPart

      while tpwindy do
            wait()
            
     for _,v in pairs(game.workspace.Monsters:GetChildren()) do 
      if string.find(v.Name,"Windy") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Torso.CFrame * CFrame.new(0,25,0)
end
end
 for k,r in pairs(workspace.Collectibles:GetChildren()) do
            if tostring(r) == tostring(game.Players.LocalPlayer.Name) or tostring(r) == "C" then
						if (r.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 25 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = r.CFrame
                local intvalue = Instance.new("IntValue",r)
                intvalue.Name = "Void"
end
end
end
      end
else 
      tpwindy = false
      noclip = false
      Autokillwindy.BackgroundColor3 =blue
end
end)

      
local tornado = false
Bringtornado.MouseButton1Down:connect(function()
if tornado == false then 
      tornado = true 
      Bringtornado.BackgroundColor3 = red
while tornado do
wait(0.3)
local test = "Root"
local test2 = "Plane"
local tweenservice = game:GetService("TweenService")
local plr = game.Players.LocalPlayer
local info = TweenInfo.new(0.3) -- change to how long it takes to get to the item (in seconds)
local item = {}

for i,v in pairs(game.workspace.Particles:GetDescendants()) do
if v.Name == test or v.Name == test2 then
for _,i in pairs(game.workspace.Collectibles:GetChildren()) do
if tostring(i) == tostring(game.Players.LocalPlayer.Name) or tostring(i) == "C" then
if (i.Position-plr.Character.HumanoidRootPart.Position).magnitude <= 60 then

item.CFrame = CFrame.new(i.Position.x,plr.Character.HumanoidRootPart.Position.y,i.Position.z)

local Tween = tweenservice:Create(v, info, item)
Tween:Play()
end
end
end
end
end
end
else
      tornado = false 
      Bringtornado.BackgroundColor3 = blue
end
end)

Equipdemonmask.MouseButton1Down:connect(function()
      local A_1 = "Equip"
local A_2 = 
{
      ["Mute"] = true, 
      ["Type"] = "Demon Mask", 
      ["Category"] = "Accessory"
}
local Event = game:GetService("ReplicatedStorage").Events.ItemPackageEvent
Event:InvokeServer(A_1, A_2)
end)
Eqipdemonmask.MouseButton1Down:connect(function()
      local A_1 = "Equip"
local A_2 = 
{
      ["Mute"] = true, 
      ["Type"] = "Diamond Mask", 
      ["Category"] = "Accessory"
}
local Event = game:GetService("ReplicatedStorage").Events.ItemPackageEvent
Event:InvokeServer(A_1, A_2)
end)

local Drop = false
Automagicbean.MouseButton1Down:connect(function(a)
if Drop == false then 
      Drop = true 
      Automagicbean.BackgroundColor3 =red
      while Drop do
            wait(0.3)
      
            local A = {

            ["Name"] = "Magic Bean"
      }
      local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
      Event:FireServer(A)
            end
else 
      Drop = false
      Automagicbean.BackgroundColor3 =blue
end
end)

Noclip.MouseButton1Down:Connect(function()
if noclip == false then 
      noclip = true
      Noclip.BackgroundColor3 = red
else 
      noclip = false
      Noclip.BackgroundColor3 = blue
end
end)

local Windy = false
FindWindBee.MouseButton1Down:connect(function(w)
      if Windy == false then
      Windy = true 
      FindWindBee.BackgroundColor3 =red
      noclip = true
while Windy do
wait()
for _,v in pairs(game.workspace.NPCBees:GetChildren()) do
      if v.Name == "Windy" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
end
end
end
else 
      Windy = false
      noclip = false
      FindWindBee.BackgroundColor3 =blue
      end
end)

Usenightbell.MouseButton1Down:connect(function()
      local A = {

            ["Name"] = "Night Bell"
      }
      local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
      Event:FireServer(A)
end)

Usefielddice.MouseButton1Down:connect(function()
      local A = {

            ["Name"] = "Field Dice"
      }
      local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
      Event:FireServer(A)
end)

local killvici = false
Autokillvicious.MouseButton1Down:connect(function(q)
      if killvici == false then
      killvici = true 
      Autokillvicious.BackgroundColor3 =red
      noclip = true
      while killvici do
            wait()
            
            
      for _,i in pairs(game.workspace.Particles:GetChildren()) do 
      if string.find(i.Name,"Waiti") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = i.CFrame
      end
      end
for _,v in pairs(game.workspace.Monsters:GetChildren()) do 
      if string.find(v.Name,"Vici") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Torso.CFrame * CFrame.new(0,13,0)
            
      end
end
for _,r in pairs(game.workspace.Monsters:GetChildren()) do 
      if string.find(r.Name,"Gifted") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = r.Torso.CFrame * CFrame.new(0,13,0)
      
            end
            
      end
      end
else 
      killvici = false
      noclip = false
      Autokillvicious.BackgroundColor3 =blue
      end
end)

SunflowerButton.MouseButton1Down:connect(function()
      tuoidz = "Sunflower Field"
      FieldText.Text = "Selected: "..tuoidz
end)
MushroomButton.MouseButton1Down:connect(function()
      tuoidz = "Mushroom Field"
      FieldText.Text = "Selected: "..tuoidz
end)
DanrButton.MouseButton1Down:connect(function()
      tuoidz = "Dandelion Field"
      FieldText.Text = "Selected: "..tuoidz
end)
DanrButton_2.MouseButton1Down:connect(function()
      tuoidz = "Clover Field"
      FieldText.Text = "Selected: "..tuoidz
end)
BlueflowerButton.MouseButton1Down:connect(function()
      tuoidz = "Blue Flower Field"
      FieldText.Text = "Selected: "..tuoidz
end)
BambooButton.MouseButton1Down:connect(function()
      tuoidz = "Bamboo Field"
      FieldText.Text = "Selected: "..tuoidz
end)
BambooButton.MouseButton1Down:connect(function()
      tuoidz = "Bamboo Field"
      FieldText.Text = "Selected: "..tuoidz
end)
SpiderButton.MouseButton1Down:connect(function()
      tuoidz = "Spider Field"
      FieldText.Text = "Selected: "..tuoidz
end)
StawberryButton.MouseButton1Down:connect(function()
      tuoidz = "Strawberry Field"
      FieldText.Text = "Selected: "..tuoidz
end)
StawberryButton.MouseButton1Down:connect(function()
      tuoidz = "Strawberry Field"
      FieldText.Text = "Selected: "..tuoidz
end)
PineappleButton.MouseButton1Down:connect(function()
      tuoidz = "Pineapple Patch"
      FieldText.Text = "Selected: "..tuoidz
end)
StumpButton.MouseButton1Down:connect(function()
      tuoidz = "Stump Field"
      FieldText.Text = "Selected: "..tuoidz
end)
RoseButton.MouseButton1Down:connect(function()
      tuoidz = "Rose Field"
      FieldText.Text = "Selected: "..tuoidz
end)
CactusButton.MouseButton1Down:connect(function()
      tuoidz = "Cactus Field"
      FieldText.Text = "Selected: "..tuoidz
end)
PumpkinButton.MouseButton1Down:connect(function()
      tuoidz = "Pumpkin Patch"
      FieldText.Text = "Selected: "..tuoidz
end)
PineTreeButton.MouseButton1Down:connect(function()
      tuoidz = "Pine Tree Forest"
      FieldText.Text = "Selected: "..tuoidz
end)
MountainTopButton.MouseButton1Down:connect(function()
      tuoidz = "Mountain Top Field"
      FieldText.Text = "Selected: "..tuoidz
end)
CoconutButton.MouseButton1Down:connect(function()
      tuoidz = "Coconut Field"
      FieldText.Text = "Selected: "..tuoidz
end)
PepperButton.MouseButton1Down:connect(function()
      tuoidz = "Pepper Patch"
      FieldText.Text = "Selected: "..tuoidz
end)
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local gui = Instance.new("ScreenGui",player.PlayerGui)
local frame = Instance.new("Frame",gui)
local act6 = false
local act6temp = false
local act5 = false
local function Voiddz(sanghuman,sangzboi)
local jimmy = coroutine.wrap(function()
        repeat
            local sanghuman = player.Character.HumanoidRootPart
            local hotboi = sanghuman.CFrame
            local sangzboi = workspace.FlowerZones[tuoidz].CFrame
            
        for k,v in pairs(workspace.Collectibles:GetChildren()) do
            if tostring(v) == tostring(game.Players.LocalPlayer.Name) or tostring(v) == "C" then
						if (v.Position-sanghuman.Position).magnitude <= 60 then
                sanghuman.CFrame = CFrame.new(v.Position.x, sanghuman.Position.y, v.Position.z)
                local intvalue = Instance.new("IntValue",v)
                intvalue.Name = "Void"
 wait(.05)
end
end
end
wait(.05)
sanghuman.CFrame = sangzboi * CFrame.new(0,0,0)
wait(.05)
until not act6 or act6temp
end)
local jimmy2 = coroutine.wrap(function()
for k,v in pairs(workspace[player.Name]:GetChildren()) do
if v.ClassName == "Tool" then
repeat
v.ClickEvent:FireServer()
wait(.1)
until not act6 or act6temp
end
end
end)
jimmy()
jimmy2()
end
StartButton.MouseButton1Down:connect(function()
if act6 == true then
act6 = false
StartButton.BackgroundColor3 = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)
StartButton.Text = "START FARMING"
else
act6 = true
StartButton.BackgroundColor3 = red

StartButton.Text = "STOP FARMING"
local jimmy3 = coroutine.wrap(function()
repeat
wait()
for k,v in pairs(workspace[player.Name]:GetChildren()) do
if v:FindFirstChild("Display") then
if v.Display.Gui.ProgressBar.Size == v.Display.Gui.RedBar.Size or v.Display.Gui.ProgressLabel == player.CoreStats.Pollen.Value.."/"..player.CoreStats.Pollen.Value then
act6temp = true
wait(3)
local sanghuman = player.Character.HumanoidRootPart
local hotboi = sanghuman.CFrame
local sangzboi = workspace.FlowerZones[tuoidz].CFrame
game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Players").LocalPlayer.SpawnPos.Value.p)
wait(3)
game:GetService("ReplicatedStorage").Events.PlayerHiveCommand:FireServer("ToggleHoneyMaking")
repeat wait(.1) until player.CoreStats.Pollen.Value <= 1
wait(7)                       
sanghuman.CFrame = sangzboi * CFrame.new(0,0,0)
wait(1)
local A = {
["Name"] = "Sprinkler Builder"
}
local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
Event:FireServer(A)
wait(1)
Voiddz(sanghuman,sangzboi)
act6temp = false
end
end
wait()
end
wait(1)
until not act6
end)
Voiddz(sanghuman,sangzboi)
jimmy3()	
end
end)

RemoteQuest.MouseButton1Down:connect(function()
if act5 == true then
act5 = false
RemoteQuest.BackgroundColor3 = blue
RemoteQuest.Text = "Auto Quest"
else
act5 = true
RemoteQuest.BackgroundColor3 = red
RemoteQuest.Text = "Auto Quest"
repeat
wait(5)
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Pepper")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Coconut")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Playtime")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Honey")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Quest")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Battle")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Ability")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Goo")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Sunflower")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Dandelion")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Mushroom")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Blue Flower")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Clover")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Spider")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Bamboo")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Strawberry")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Pineapple")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Pumpkin")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Cactus")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Rose")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Pine Tree")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Stump")
game.ReplicatedStorage.Events.ToyEvent:FireServer("Glue Dispenser")
game.ReplicatedStorage.Events.ToyEvent:FireServer("Free Royal Jelly Dispenser")
game.ReplicatedStorage.Events.ToyEvent:FireServer("Blueberry Dispenser")
game.ReplicatedStorage.Events.ToyEvent:FireServer("Strawberry Dispenser")
game.ReplicatedStorage.Events.ToyEvent:FireServer("Treat Dispenser")
game.ReplicatedStorage.Events.ToyEvent:FireServer("Wealth Clock")
game.ReplicatedStorage.Events.CompleteQuestFromPool:FireServer("Brown Bear")
game.ReplicatedStorage.Events.CompleteQuestFromPool:FireServer("Polar Bear")
game.ReplicatedStorage.Events.CompleteQuestFromPool:FireServer("Honey Bee")
game.ReplicatedStorage.Events.CompleteQuestFromPool:FireServer("Black Bear")
game.ReplicatedStorage.Events.CompleteQuestFromPool:FireServer("Bucko Bee")
game.ReplicatedStorage.Events.CompleteQuestFromPool:FireServer("Riley Bee")
game.ReplicatedStorage.Events.GiveQuestFromPool:FireServer("Brown Bear")
game.ReplicatedStorage.Events.GiveQuestFromPool:FireServer("Polar Bear")
game.ReplicatedStorage.Events.GiveQuestFromPool:FireServer("Honey Bee")
game.ReplicatedStorage.Events.GiveQuestFromPool:FireServer("Black Bear")
game.ReplicatedStorage.Events.GiveQuestFromPool:FireServer("Bucko Bee")
game.ReplicatedStorage.Events.GiveQuestFromPool:FireServer("Riley Bee")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Treat Tutorial")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Treat Tutorial")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Bonding With Bees")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Bonding With Bees")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Search For A Sunflower Seed")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Search For A Sunflower Seed")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("The Gist Of Jellies")
game.ReplicatedStorage.Events.GiveQuest:FireServer("The Gist Of Jellies")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Search For Strawberries")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Search For Strawberries")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Binging On Blueberries")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Binging On Blueberries")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Royal Jelly Jamboree")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Royal Jelly Jamboree")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Search For Sunflower Seeds")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Search For Sunflower Seeds")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Picking Out Pineapples")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Picking Out Pineapples")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Seven To Seven")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Seven To Seven")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Mother Bears Midterm")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Mother Bears Midterm")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Eight To Eight")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Eight To Eight")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Sights On The Stars")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Sights On The Stars")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("The Family Final")
game.ReplicatedStorage.Events.GiveQuest:FireServer("The Family Final")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Preliminary Research")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Preliminary Research")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Biology Study")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Biology Study")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Proving The Hypothesis")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Proving The Hypothesis")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Bear Botany")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Bear Botany")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Kingdom Collection")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Kingdom Collection")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Defensive Adaptions")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Devensive Adaptions")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Benefits Of Technology")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Benefits Of Technology")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Spider Study")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Spider Study")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Roses And Weeds")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Roses And Weeds")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Blue Review")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Blue Review")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Ongoing Progress")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Ongoing Progress")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Red / Blue Duality")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Red / Blue Duality")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Costs Of Computation")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Costs Of Computation")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Pollination Practice")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Pollination Practice")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Optimizing Abilities")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Optimizing Abilities")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Ready For Infrared")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Ready For Infrared")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Breaking Down Badges")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Breaking Down Badges")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Subsidized Agriculture")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Subsidized Agriculture")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Meticulously Crafted")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Meticulously Crafted")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Smart, Not Hard")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Smart, Not Hard")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Limits of Language")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Limits of Language")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Patterns and Probability")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Patterns and Probability")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Chemical Analysis")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Chemical Analysis")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Mark Mechanics")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Mark Mechanics")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Meditating On Phenomenon")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Meditating On Phenomenon")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Beesperanto")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Beesperanto")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Hive Minded Bias")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Hive Minded Bias")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Mushroom Measurement Monotony")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Mushroom Measurement Monotony")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("The Power Of Information")
game.ReplicatedStorage.Events.GiveQuest:FireServer("The Power Of Information")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Testing Teamwork")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Testing Teamwork")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Epistemological Endeavor")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Epistemological Endeavor")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Egg Hunt: Panda Bear")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Egg Hunt: Panda Bear")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Lesson On Ladybugs")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Lesson On Ladybugs")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Rhino Rumble")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Rhino Rumble")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Beetle Battle")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Beetle Battle")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Spider Slayer")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Spider Slayer")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Ladybug Bonker")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Ladybug Bonker")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Spider Slayer 2")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Spider Slayer 2")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Rhino Wrecking")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Rhino Wrecking")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Final Showdown")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Final Showdown")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Werewolf Hunter")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Werewolf Hunter")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Skirmish with Scorpions")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Skirmish with Scorpions")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Mantis Massacre")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Mantis Massacre")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("The REAL Final Showdown")
game.ReplicatedStorage.Events.GiveQuest:FireServer("The REAL Final Showdown")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Ant Arrival")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Ant Arrival")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Winged Wack Attack")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Winged Wack Attack")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Fire Fighter")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Fire Fighter")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Army Ant Assault")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Army Ant Assault")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Colossal Combat")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Colossal Combat")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Eager Exterminator")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Eager Exterminator")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Leaper Lickin'")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Leaper Lickin'")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Colossal Combat 2")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Colossal Combat 2")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Outrageous Onslaught")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Outrageous Onslaught")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Royal Rumble")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Royal Rumble")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Ultimate Ant Annihilation 1")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Ultimate Ant Annihilation 1")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Ultimate Ant Annihilation 2")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Ultimate Ant Annihilation 2")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Ultimate Ant Annihilation 3")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Ultimate Ant Annihilation 3")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Ultimate Ant Annihilation 4")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Ultimate Ant Annihilation 4")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Ultimate Ant Annihilation 5")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Ultimate Ant Annihilation 5")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Star Journey 1")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Star Journey 1")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Star Journey 2")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Star Journey 2")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Star Journey 3")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Star Journey 3")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Star Journey 4")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Star Journey 4")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Star Journey 5")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Star Journey 5")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Egg Hunt: Riley Bee")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Egg Hunt: Riley Bee")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Egg Hunt: Bucko Bee")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Egg Hunt: Bucko Bee")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Sunflower Start")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Sunflower Start")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Dandelion Deed")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Dandelion Deed")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Pollen Fetcher")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Pollen Fetcher")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Red Request")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Red Request")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Into The Blue")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Into The Blue")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Variety Fetcher")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Variety Fetcher")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Bamboo Boogie")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Bamboo Boogie")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Red Request 2")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Red Request 2")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Cobweb Sweeper")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Cobweb Sweeper")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Leisure Loot")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Leisure Loot")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("White Pollen Wrangler")
game.ReplicatedStorage.Events.GiveQuest:FireServer("White Pollen Wrangler")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Pineapple Picking")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Pineapple Picking")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Pollen Fetcher 2")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Pollen Fetcher 2")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Weed Wacker")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Weed Wacker")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Red + Blue = Gold")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Red + Blue = Gold")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Colorless Collection")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Colorless Collection")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Spirit of Springtime")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Spirit of Springtime")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Weed Wacker 2")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Weed Wacker 2")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Pollen Fetcher 3")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Pollen Fetcher 3")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Lucky Landscaping")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Lucky Landscaping")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Azure Adventure")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Azure Adventure")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Pink Pineapples")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Pink Pineapples")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Blue Mushrooms")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Blue Mushrooms")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Cobweb Sweeper 2")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Cobweb Sweeper 2")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Rojo-A-Go-Go")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Rojo-A-Go-Go")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Pumpkin Plower")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Pumpkin Plower")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Pollen Fetcher 4")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Pollen Fetcher 4")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Bouncing Around Biomes")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Bouncing Around Biomes")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Blue Pineapples")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Blue Pineapples")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Rose Request")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Rose Request")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Search For The White Clover")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Search For The White Clover")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Stomping Grounds")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Stomping Grounds")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Collecting Cliffside")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Collecting Cliffside")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Mountain Meandering")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Mountain Meandering")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Quest Of Legends")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Quest Of Legends")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("High Altitude")
game.ReplicatedStorage.Events.GiveQuest:FireServer("High Altitude")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Blissfully Blue")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Blissfully Blue")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Rouge Round-up")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Rouge Round-up")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("White As Snow")
game.ReplicatedStorage.Events.GiveQuest:FireServer("White As Snow")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Solo On The Stump")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Solo On The Stump")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Colorful Craving")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Colorful Craving")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Pumpkins, Please!")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Pumpkins, Please!")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Smorgasbord")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Smorgasbord")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Pollen Fetcher 5")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Pollen Fetcher 5")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("White Clover Redux")
game.ReplicatedStorage.Events.GiveQuest:FireServer("White Clover Redux")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Strawberry Field Forever")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Strawberry Field Forever")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Tasting The Sky")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Tasting The Sky")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Whispy and Crispy")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Whispy and Crispy")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Walk Through The Woods")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Walk Through The Woods")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Get Red-y")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Get Red-y")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("One Stop On The Tip Top")
game.ReplicatedStorage.Events.GiveQuest:FireServer("One Stop On The Tip Top")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Blue Mushrooms 2")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Blue Mushrooms 2")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Pretty Pumpkins")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Pretty Pumpkins")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Black Bear, Why?")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Black Bear, Why?")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Bee A Star")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Bee A Star")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Spirit's Starter")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Spirit's Starter")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("The First Offering")
game.ReplicatedStorage.Events.GiveQuest:FireServer("The First Offering")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Rules of The Road")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Rules of The Road")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("QR Quest")
game.ReplicatedStorage.Events.GiveQuest:FireServer("QR Quest")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Pleasant Pastimes")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Pleasant Pastimes")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Nature's Lessons")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Nature's Lessons")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("The Gifts Of Life")
game.ReplicatedStorage.Events.GiveQuest:FireServer("The Gifts Of Life")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Out-Questing Questions")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Out-Questing Questions")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Forcefully Friendly")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Forcefully Friendly")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Sway Away")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Sway Away")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Memories of Memories")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Memories of Memories")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Beans Becoming")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Beans Becoming")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Do You Bee-lieve In Magic?")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Do You Bee-lieve In Magic?")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("The Ways Of The Winds / The Wind And Its Way")
game.ReplicatedStorage.Events.GiveQuest:FireServer("The Ways Of The Winds / The Wind And Its Way")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Beauty Duty")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Beauty Duty")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Witness Grandeur")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Witness Grandeur")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Beeternity")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Beeternity")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("A Breath Of Blue")
game.ReplicatedStorage.Events.GiveQuest:FireServer("A Breath Of Blue")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Glory Of Goo")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Glory Of Goo")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Tickle The Wind")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Tickle The Wind")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Rhubarb That Could Have Been")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Rhubarb That Could Have Been")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Dreams Of Being A Bee")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Dreams Of Being A Bee")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("The Sky Over The Stump")
game.ReplicatedStorage.Events.GiveQuest:FireServer("The Sky Over The Stump")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Space Oblivion")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Space Oblivion")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Pollenpalooza")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Pollenpalooza")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Dancing With Stick Bug")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Dancing With Stick Bug")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Bean Bug Busser")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Bean Bug Busser")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Bombs, Blueberries, and Bean Bugs")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Bombs, Blueberries, and Bean Bugs")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Bean Bugs And Boosts")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Bean Bugs And Boosts")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Make It Hasty")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Make It Hasty")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Total Focus")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Total Focus")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("On Your Marks")
game.ReplicatedStorage.Events.GiveQuest:FireServer("On Your Marks")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Look In The Leaves")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Look In The Leaves")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("What About Sprouts")
game.ReplicatedStorage.Events.GiveQuest:FireServer("What About Sprouts")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Bean Bug Beatdown")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Bean Bug Beatdown")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Bear Without Despair")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Bear Without Despair")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Spirit Spree")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Spirit Spree")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Echoing Call")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Echoing Call")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Spring Out Of The Mountain")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Spring Out Of The Mountain")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Riley Bee: Goo")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Riley Bee: Goo")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Riley Bee: Medley")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Riley Bee: Medley")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Riley Bee: Mushrooms")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Riley Bee: Mushrooms")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Riley Bee: Picnic")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Riley Bee: Picnic")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Riley Bee: Pollen")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Riley Bee: Pollen")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Riley Bee: Rampage")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Riley Bee: Rampage")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Riley Bee: Roses")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Riley Bee: Roses")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Riley Bee: Scavenge")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Riley Bee: Scavenge")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Riley Bee: Skirmish")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Riley Bee: Skirmish")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Riley Bee: Strawberries")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Riley Bee: Strawberries")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Riley Bee: Tango")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Riley Bee: Tango")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Riley Bee: Tour")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Riley Bee: Tour")
RemoteQuest.Text = "Done"
wait(1)
RemoteQuest.Text = "Auto Quest"
until not act5
end
end)
spawn(function()
while wait() do
local truonghopdacbiet = 675056229
local truonghopdacbiet2 = "quocvietht456"
if game.Players.LocalPlayer.UserId == truonghopdacbiet or game.Players.LocalPlayer.Name == truonghopdacbiet2 then
	if act6 == true or act5 == true or afksnail == true or killvici == true or Sparkles == true or tornado == true or dispenser == true or killtunell == true or killcoconut == true or item == true or tpwindy == true or Windy == true then
		game.Players.LocalPlayer:Kick("Xai xai cdmm")
end
end	
end
end)

Killstumnail.MouseButton1Down:connect(function()
if afksnail == false then 
afksnail = true 
Killstumnail.BackgroundColor3 = red 
MainPage.Visible = false 
Close.Text ="+"
local test = "C"
local tweenservice = game:GetService("TweenService")
local plr = game.Players.LocalPlayer
local info = TweenInfo.new(0.1) -- change to how long it takes to get to the item (in seconds)
local item = {}
while afksnail do
wait(1)    
for _,v in pairs(game.workspace:GetDescendants()) do
if string.find(v.Name,"LeafBurst") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame * CFrame.new(0,0,0)
end
end
for k,v in pairs(workspace.Collectibles:GetChildren()) do
 if tostring(v) == tostring(game.Players.LocalPlayer.Name) or tostring(v) == test then
						if (v.Position-plr.Character.HumanoidRootPart.Position).magnitude <= 60 then
item.CFrame = CFrame.new(v.Position.x,plr.Character.HumanoidRootPart.Position.y,v.Position.z)
local Tween = tweenservice:Create(plr.Character.HumanoidRootPart, info, item)
Tween:Play()
end
end
end
end
else 
afksnail = false 
Killstumnail.BackgroundColor3 = blue 
end
end)

PollenToHoney.MouseButton1Down:Connect(function()
    if TPTimeToggle == false then
        TPTimeToggle = true
            repeat
                local seconds = inputSeconds
                local minutes = inputMinutes
                    repeat
            	if seconds <= 0 then
            		minutes = minutes - 1
            		seconds = 59
            	else
            		seconds = seconds - 1
            	end
            	if seconds <= 9  then
            		GameText.Text = tostring(minutes)..":0"..tostring(seconds)
            	else
            		GameText.Text = tostring(minutes)..":"..tostring(seconds)
            	end
            	wait(1)
                    until minutes <= 0 and seconds <= 0
                
                
                local minutes = inputMinutes
                local seconds = inputSeconds
                
                act6temp = true
                wait(2)
                game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Players").LocalPlayer.SpawnPos.Value.p)
                wait(3)
                game:GetService("ReplicatedStorage").Events.PlayerHiveCommand:FireServer("ToggleHoneyMaking")
                GameText.Text = "Waiting "..convertTime
                wait(convertTime)
                GameText.Text = "Kebab"
                wait(1)
                local A = {
                ["Name"] = "Sprinkler Builder"
                }
                local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
                Event:FireServer(A)
                wait(1)
                Voiddz(sanghuman,sangzboi)
                act6temp = false
                
            until TPTimeToggle == false
            
    else if TPTimeToggle == true then
        PollenToHoney.Text = "Already ON!"
        wait(.5)
        PollenToHoney.Text = "Auto Honey Making"
        
    end
    end
end)

CancelPollenToHoney.MouseButton1Down:Connect(function()
    
    TPTimeToggle = false
    act6temp = true
    local minutes = inputMinutes
    local seconds = inputSeconds
    
end)
