-- Credits: 
-- 
-- sal#4798
-- Gui to Lua PLUGIN
-- Instances:

local CheatVersion = "1.0.2"

for _, v in pairs(game.workspace.Collectibles:GetChildren()) do
    if string.find(v.Name, "") then v:Destroy() end
end

local uis = game:GetService("UserInputService")
local nobodi = Instance.new("Sound")
local inputMinutes, inputSeconds, convertTime, farmTime, minutes, seconds = 1,
                                                                            1,
                                                                            60,
                                                                            90,
                                                                            inputMinutes,
                                                                            inputSeconds
local TPTime = 600
local TPTimeToggle = false
local red = Color3.fromRGB(255, 80, 80)
local blue = Color3.new(0.96078431372, 0.61568627451, 0.16470588235)

-- NOCLIP
noclip = false
game:GetService('RunService').Stepped:connect(function()
    if noclip then
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
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
    ["Coconut Field"] = CFrame.new(-255, 72, 459),
    ["Pepper Patch"] = CFrame.new(-486, 124, 517),
    ["CCN"] = CFrame.new(-176, 71, 534),
    ["Nuoc"] = CFrame.new(-426, 70, 38),
    ["Moon"] = CFrame.new(21, 88, -54),
    ["Kill Snail"] = CFrame.new(420, 117, -178),
    ["CC"] = CFrame.new(270, 25260, -718),
    ["CC1"] = CFrame.new(-147, 5, 195),
    ["CC2"] = CFrame.new(-431, 70, -53),
    ["CC3"] = CFrame.new(-23, 318, -270),
    ["CC4"] = CFrame.new(-405, 110, 545),
    ["CC5"] = CFrame.new(136, 66, 322),
    ["CC6"] = CFrame.new(-270, 28, 267),
    ["CC7"] = CFrame.new(312, 49, 189),
    ["CC8"] = CFrame.new(218, 5, 140),
    ["Ant"] = CFrame.new(112, 32, 477),
    ["CC9"] = CFrame.new(592, 7, -46),
    ["CC12"] = CFrame.new(-500, 52, 458),
    ["CC13"] = CFrame.new(291, 28, 271),
    ["CC14"] = CFrame.new(272, 25268, -773),
    ["CC15"] = CFrame.new(-336, 133, -387),
    ["CC16"] = CFrame.new(218, 5, 140),
    ["CC17"] = CFrame.new(218, 5, 140),
    ["CC19"] = CFrame.new(-486, 142, 410),
    ["CC18"] = CFrame.new(218, 5, 140)
}

do
    s = Instance.new("Sound")
    nobodi = Instance.new("Sound")
    nobodikunfu = Instance.new("Sound")
    PepperField = Instance.new("TextButton")
    tuoidz = "Sunflower Field"
    ScreenGui = Instance.new("ScreenGui")
    MainFrameCore = Instance.new("Frame")
    Gradient = Instance.new("ImageLabel")
    UICorner = Instance.new("UICorner")
    ExitButton = Instance.new("TextButton")
    InformationsFrame = Instance.new("Frame")
    UICorner_2 = Instance.new("UICorner")
    VersionButton = Instance.new("TextButton")
    Credits = Instance.new("TextLabel")
    InformationsBugFix = Instance.new("Frame")
    HomeButton = Instance.new("TextButton")
    UICorner_3 = Instance.new("UICorner")
    FarmingButton = Instance.new("TextButton")
    UICorner_4 = Instance.new("UICorner")
    TeleportsButton = Instance.new("TextButton")
    UICorner_5 = Instance.new("UICorner")
    FeaturesButton = Instance.new("TextButton")
    UICorner_6 = Instance.new("UICorner")
    DiscordButton = Instance.new("TextButton")
    UICorner_7 = Instance.new("UICorner")
    UICorner_8 = Instance.new("UICorner")
    HomePage = Instance.new("Frame")
    MusicPlay = Instance.new("TextButton")
    UICorner_9 = Instance.new("UICorner")
    ScrollingFrame = Instance.new("ScrollingFrame")
    SULEYMAN499315619 = Instance.new("TextButton")
    SULEYMAN = Instance.new("Sound")
    CURA4743160925 = Instance.new("TextButton")
    CURA = Instance.new("Sound")
    RegiiRomaniei5734523419 = Instance.new("TextButton")
    RegiiRomaniei = Instance.new("Sound")
    Ambanidemaenerveaza1302369025 = Instance.new("TextButton")
    Ambanidemaenerveaza = Instance.new("Sound")
    NicolaeGutaGIGOLO1724302175 = Instance.new("TextButton")
    NicolaeGutaGIGOLO = Instance.new("Sound")
    NicolaeGutaLamamaia716838826 = Instance.new("TextButton")
    NicolaeGutaLamamaia = Instance.new("Sound")
    NicolaeGutaLoculunu1659703481 = Instance.new("TextButton")
    NicolaeGutaLoculunu = Instance.new("Sound")
    NicolaeGutaDiamantele1515452005 = Instance.new("TextButton")
    NicolaeGutaDiamantele = Instance.new("Sound")
    NicolaeGutaBaterie2653680851 = Instance.new("TextButton")
    NicolaeGutaBaterie = Instance.new("Sound")
    DaniNicolaeChampionsLeague990030171 = Instance.new("TextButton")
    DaniNicolaeChampionsLeague = Instance.new("Sound")
    JadorIndiferenta3874473514 = Instance.new("TextButton")
    JadorIndiferenta = Instance.new("Sound")
    JadorMireasa3786562923 = Instance.new("TextButton")
    JadorMireasa = Instance.new("Sound")
    JadorLasatiosabea5346226607 = Instance.new("TextButton")
    JadorLasatiosabea = Instance.new("Sound")
    LinoJadorDaumoda4821551570 = Instance.new("TextButton")
    LinoJadorDaumoda = Instance.new("Sound")
    JadorNuamsomn5825254018 = Instance.new("TextButton")
    JadorNuamsomn = Instance.new("Sound")
    TextLabel = Instance.new("TextLabel")
    TeleportToSalutDaniCeFaci = Instance.new("TextButton")
    TeleportTo32fdba = Instance.new("TextButton")
    Teleporttokillertorchi = Instance.new("TextButton")
    RainbowMode = Instance.new("TextButton")
    FarmingPage = Instance.new("Frame")
    ScrollingFrame_2 = Instance.new("ScrollingFrame")
    SunflowerField = Instance.new("TextButton")
    MushroomField = Instance.new("TextButton")
    BlueFlowerField = Instance.new("TextButton")
    DandelionField = Instance.new("TextButton")
    CloverField = Instance.new("TextButton")
    StrawberryField = Instance.new("TextButton")
    BambooField = Instance.new("TextButton")
    SpiderField = Instance.new("TextButton")
    PineTreeField = Instance.new("TextButton")
    RoseField = Instance.new("TextButton")
    CactusFIeld = Instance.new("TextButton")
    PumpkinField = Instance.new("TextButton")
    PineappleField = Instance.new("TextButton")
    StumpField = Instance.new("TextButton")
    MountainField = Instance.new("TextButton")
    FieldSelect = Instance.new("TextLabel")
    StartFarming = Instance.new("TextButton")
    UICorner_10 = Instance.new("UICorner")
    FieldSelected = Instance.new("TextLabel")
    AutoHoneyMaking = Instance.new("TextButton")
    UICorner_11 = Instance.new("UICorner")
    CancelHoneyMaking = Instance.new("TextButton")
    UICorner_12 = Instance.new("UICorner")
    FarmingOptions = Instance.new("Frame")
    FarmingOptionsText = Instance.new("TextLabel")
    ConvertTime = Instance.new("TextLabel")
    FarmingTime = Instance.new("TextLabel")
    ConvertTimeText = Instance.new("TextLabel")
    FarmingTimeText = Instance.new("TextLabel")
    _1MinuteButton = Instance.new("TextButton")
    _2MinuteButton = Instance.new("TextButton")
    _3MinuteButton = Instance.new("TextButton")
    _4MinuteButton = Instance.new("TextButton")
end

local _5MinuteButton = Instance.new("TextButton")
local _1MinuteButton_ = Instance.new("TextButton")
local _2MinuteButton_ = Instance.new("TextButton")
local _3MinuteButton_ = Instance.new("TextButton")
local _4MinuteButton_ = Instance.new("TextButton")
local _5MinuteButton_ = Instance.new("TextButton")
local TeleportsPage = Instance.new("Frame")
local TeleportPageText = Instance.new("TextLabel")
local TeleportSprout = Instance.new("TextButton")
local UICorner_13 = Instance.new("UICorner")
local Notice = Instance.new("TextLabel")
local TeleportCoconutShop = Instance.new("TextButton")
local UICorner_14 = Instance.new("UICorner")
local TeleportPetalShop = Instance.new("TextButton")
local UICorner_15 = Instance.new("UICorner")
local TeleportNoobShop = Instance.new("TextButton")
local UICorner_16 = Instance.new("UICorner")
local TeleportProShop = Instance.new("TextButton")
local UICorner_17 = Instance.new("UICorner")
local TeleportMasterShop = Instance.new("TextButton")
local UICorner_18 = Instance.new("UICorner")
local TeleportMoonCharm = Instance.new("TextButton")
local UICorner_19 = Instance.new("UICorner")
local TeleportSprinkleShop = Instance.new("TextButton")
local UICorner_20 = Instance.new("UICorner")
local TeleportInstantSell = Instance.new("TextButton")
local UICorner_21 = Instance.new("UICorner")
local TeleportMegaMemory = Instance.new("TextButton")
local UICorner_22 = Instance.new("UICorner")
local TeleportNightMemory = Instance.new("TextButton")
local UICorner_23 = Instance.new("UICorner")
local TeleportExtremeMemory = Instance.new("TextButton")
local UICorner_24 = Instance.new("UICorner")
local TeleportStarHall = Instance.new("TextButton")
local UICorner_25 = Instance.new("UICorner")
local TeleportAnt = Instance.new("TextButton")
local UICorner_26 = Instance.new("UICorner")
local TeleportKingAmulet = Instance.new("TextButton")
local UICorner_27 = Instance.new("UICorner")
local TeleportDiamondMask = Instance.new("TextButton")
local UICorner_28 = Instance.new("UICorner")
local TeleportGummyMask = Instance.new("TextButton")
local UICorner_29 = Instance.new("UICorner")
local TeleportDemonMask = Instance.new("TextButton")
local UICorner_30 = Instance.new("UICorner")
local FeaturesPage = Instance.new("Frame")
local TeleportPageText_2 = Instance.new("TextLabel")
local AutoDig = Instance.new("TextButton")
local UICorner_31 = Instance.new("UICorner")
local KIllCoconutCrab = Instance.new("TextButton")
local UICorner_32 = Instance.new("UICorner")
local KillTunnelBear = Instance.new("TextButton")
local UICorner_33 = Instance.new("UICorner")
local KillVicious = Instance.new("TextButton")
local UICorner_34 = Instance.new("UICorner")
local KillWindy = Instance.new("TextButton")
local UICorner_35 = Instance.new("UICorner")
local AutoQuest = Instance.new("TextButton")
local UICorner_36 = Instance.new("UICorner")
local UICorner_37 = Instance.new("UICorner")
local EquipGummyMask = Instance.new("TextButton")
local UICorner_38 = Instance.new("UICorner")
local AutoFarmLeaves = Instance.new("TextButton")
local UICorner_39 = Instance.new("UICorner")
local NoclipFeature = Instance.new("TextButton")
local UICorner_40 = Instance.new("UICorner")
local EquipDiamondMask = Instance.new("TextButton")
local UICorner_41 = Instance.new("UICorner")
local EquipDemonMask = Instance.new("TextButton")
local UICorner_42 = Instance.new("UICorner")
local AutoRedBooster = Instance.new("TextButton")
local UICorner_43 = Instance.new("UICorner")
local BringTornado = Instance.new("TextButton")
local UICorner_44 = Instance.new("UICorner")
local AutoDispenser = Instance.new("TextButton")
local UICorner_45 = Instance.new("UICorner")
local AutoTopBooster = Instance.new("TextButton")
local UICorner_46 = Instance.new("UICorner")
local AutoBlueBooster = Instance.new("TextButton")
local UICorner_47 = Instance.new("UICorner")

-- Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrameCore.Name = "MainFrameCore"
MainFrameCore.Parent = ScreenGui
MainFrameCore.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
MainFrameCore.BorderSizePixel = 0
MainFrameCore.Position = UDim2.new(0.220560744, 0, 0.177734375, 0)
MainFrameCore.Size = UDim2.new(0, 630, 0, 256)

Gradient.Name = "Gradient"
Gradient.Parent = MainFrameCore
Gradient.BackgroundColor3 = Color3.fromRGB(255, 162, 0)
Gradient.BorderSizePixel = 0
Gradient.Position = UDim2.new(0, 0, -0.00393798947, 0)
Gradient.Size = UDim2.new(0, 630, 0, 44)

UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Gradient

ExitButton.Name = "ExitButton"
ExitButton.Parent = Gradient
ExitButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ExitButton.BackgroundTransparency = 0.880
ExitButton.BorderSizePixel = 0
ExitButton.Position = UDim2.new(0.930158854, 0, 0.204730123, 0)
ExitButton.Size = UDim2.new(0, 35, 0, 24)
ExitButton.Font = Enum.Font.SciFi
ExitButton.Text = "X"
ExitButton.TextColor3 = Color3.fromRGB(255, 0, 0)
ExitButton.TextScaled = true
ExitButton.TextSize = 14.000
ExitButton.TextWrapped = true

InformationsFrame.Name = "InformationsFrame"
InformationsFrame.Parent = MainFrameCore
InformationsFrame.BackgroundColor3 = Color3.fromRGB(255, 149, 0)
InformationsFrame.BorderSizePixel = 0
InformationsFrame.Position = UDim2.new(-0.000624980603, 0, 0.918956399, 0)
InformationsFrame.Size = UDim2.new(0, 630, 0, 25)

UICorner_2.CornerRadius = UDim.new(0, 4)
UICorner_2.Parent = InformationsFrame

VersionButton.Name = "VersionButton"
VersionButton.Parent = InformationsFrame
VersionButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VersionButton.BackgroundTransparency = 1.000
VersionButton.BorderSizePixel = 0
VersionButton.Position = UDim2.new(0.870466232, 0, 0.319999993, 0)
VersionButton.Size = UDim2.new(0, 81, 0, 17)
VersionButton.Font = Enum.Font.SourceSans
VersionButton.Text = "Version: "..CheatVersion
VersionButton.TextColor3 = Color3.fromRGB(0, 0, 0)
VersionButton.TextSize = 14.000

Credits.Name = "Credits"
Credits.Parent = InformationsFrame
Credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Credits.BackgroundTransparency = 1.000
Credits.BorderSizePixel = 0
Credits.Position = UDim2.new(0.0142857144, 0, 0.239999995, 0)
Credits.Size = UDim2.new(0, 101, 0, 20)
Credits.Font = Enum.Font.SourceSans
Credits.Text = "Credits to: sal#4798"
Credits.TextColor3 = Color3.fromRGB(0, 0, 0)
Credits.TextScaled = true
Credits.TextSize = 14.000
Credits.TextWrapped = true

Notice.Name = "Notice"
Notice.Parent = HomePage
Notice.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Notice.BackgroundTransparency = 1.000
Notice.BorderSizePixel = 0
Notice.Position = UDim2.new(0.0142857144, 0, 0.239999995, 0)
Notice.Size = UDim2.new(0, 300, 0, 20)
Notice.Font = Enum.Font.SourceSans
Notice.Text = "(!) Read the console for more informations! [F9]"
Notice.TextColor3 = Color3.fromRGB(255, 255, 255)
Notice.TextSize = 18.000
Notice.TextWrapped = true

InformationsBugFix.Name = "InformationsBugFix"
InformationsBugFix.Parent = MainFrameCore
InformationsBugFix.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
InformationsBugFix.BorderSizePixel = 0
InformationsBugFix.Position = UDim2.new(0, 0, 0.918956399, 0)
InformationsBugFix.Size = UDim2.new(0, 630, 0, 8)

HomeButton.Name = "HomeButton"
HomeButton.Parent = MainFrameCore
HomeButton.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
HomeButton.BackgroundTransparency = 0.700
HomeButton.Position = UDim2.new(0.084126994, 0, 0.03125, 0)
HomeButton.Size = UDim2.new(0, 80, 0, 28)
HomeButton.Font = Enum.Font.Oswald
HomeButton.Text = "HOME"
HomeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
HomeButton.TextScaled = true
HomeButton.TextSize = 14.000
HomeButton.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0, 2)
UICorner_3.Parent = HomeButton

FarmingButton.Name = "FarmingButton"
FarmingButton.Parent = MainFrameCore
FarmingButton.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
FarmingButton.BackgroundTransparency = 0.700
FarmingButton.Position = UDim2.new(0.260317475, 0, 0.03125, 0)
FarmingButton.Size = UDim2.new(0, 80, 0, 28)
FarmingButton.Font = Enum.Font.Oswald
FarmingButton.Text = "FARMING"
FarmingButton.TextColor3 = Color3.fromRGB(255, 255, 255)
FarmingButton.TextScaled = true
FarmingButton.TextSize = 14.000
FarmingButton.TextWrapped = true

UICorner_4.CornerRadius = UDim.new(0, 2)
UICorner_4.Parent = FarmingButton

TeleportsButton.Name = "TeleportsButton"
TeleportsButton.Parent = MainFrameCore
TeleportsButton.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
TeleportsButton.BackgroundTransparency = 0.700
TeleportsButton.Position = UDim2.new(0.43650794, 0, 0.03125, 0)
TeleportsButton.Size = UDim2.new(0, 80, 0, 28)
TeleportsButton.Font = Enum.Font.Oswald
TeleportsButton.Text = "TELEPORTS"
TeleportsButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TeleportsButton.TextSize = 26.000
TeleportsButton.TextWrapped = true

UICorner_5.CornerRadius = UDim.new(0, 2)
UICorner_5.Parent = TeleportsButton

FeaturesButton.Name = "FeaturesButton"
FeaturesButton.Parent = MainFrameCore
FeaturesButton.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
FeaturesButton.BackgroundTransparency = 0.700
FeaturesButton.Position = UDim2.new(0.611111224, 0, 0.03125, 0)
FeaturesButton.Size = UDim2.new(0, 80, 0, 28)
FeaturesButton.Font = Enum.Font.Oswald
FeaturesButton.Text = "FEATURES"
FeaturesButton.TextColor3 = Color3.fromRGB(255, 255, 255)
FeaturesButton.TextScaled = true
FeaturesButton.TextSize = 14.000
FeaturesButton.TextWrapped = true

UICorner_6.CornerRadius = UDim.new(0, 2)
UICorner_6.Parent = FeaturesButton

DiscordButton.Name = "DiscordButton"
DiscordButton.Parent = MainFrameCore
DiscordButton.BackgroundColor3 = Color3.fromRGB(114, 137, 213)
DiscordButton.Position = UDim2.new(0.7873016, 0, 0.03125, 0)
DiscordButton.Size = UDim2.new(0, 80, 0, 28)
DiscordButton.Font = Enum.Font.Oswald
DiscordButton.Text = "DISCORD"
DiscordButton.TextColor3 = Color3.fromRGB(255, 255, 255)
DiscordButton.TextScaled = true
DiscordButton.TextSize = 14.000
DiscordButton.TextWrapped = true

UICorner_7.CornerRadius = UDim.new(0, 4)
UICorner_7.Parent = DiscordButton

UICorner_8.CornerRadius = UDim.new(0, 4)
UICorner_8.Parent = MainFrameCore

HomePage.Name = "HomePage"
HomePage.Parent = MainFrameCore
HomePage.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
HomePage.BorderSizePixel = 0
HomePage.Position = UDim2.new(0.0285714287, 0, 0.23828125, 0)
HomePage.Size = UDim2.new(0, 593, 0, 180)

MusicPlay.Name = "MusicPlay"
MusicPlay.Parent = HomePage
MusicPlay.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MusicPlay.BackgroundTransparency = 0.700
MusicPlay.BorderSizePixel = 0
MusicPlay.Position = UDim2.new(0.753794372, 0, 0.811111033, 0)
MusicPlay.Size = UDim2.new(0, 128, 0, 28)
MusicPlay.Font = Enum.Font.SourceSans
MusicPlay.Text = "Stop"
MusicPlay.TextColor3 = Color3.fromRGB(255, 255, 255)
MusicPlay.TextScaled = true
MusicPlay.TextSize = 14.000
MusicPlay.TextWrapped = true

UICorner_9.CornerRadius = UDim.new(0, 4)
UICorner_9.Parent = MusicPlay

ScrollingFrame.Parent = HomePage
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BackgroundTransparency = 0.800
ScrollingFrame.BorderColor3 = Color3.fromRGB(255, 149, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.70489037, 0, -0.0111562097, 0)
ScrollingFrame.Size = UDim2.new(0, 186, 0, 138)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 5, 0)
ScrollingFrame.ScrollBarThickness = 4

PepperField.Name = "PepperField"
PepperField.Parent = ScrollingFrame_2
PepperField.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
PepperField.BackgroundTransparency = 0.950
PepperField.BorderSizePixel = 0
PepperField.Position = UDim2.new(0.0570637956, 0, 0.640740931, 0)
PepperField.Size = UDim2.new(0, 180, 0, 23)
PepperField.Font = Enum.Font.SourceSans
PepperField.Text = "Pepper Field"
PepperField.TextColor3 = Color3.fromRGB(255, 255, 255)
PepperField.TextSize = 18.000
PepperField.TextWrapped = true

SULEYMAN499315619.Name = "SULEYMAN - 499315619"
SULEYMAN499315619.Parent = ScrollingFrame
SULEYMAN499315619.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SULEYMAN499315619.BackgroundTransparency = 0.950
SULEYMAN499315619.BorderSizePixel = 0
SULEYMAN499315619.Position = UDim2.new(0.0384615399, 0, 0.0198456235, 0)
SULEYMAN499315619.Size = UDim2.new(0, 167, 0, 23)
SULEYMAN499315619.Font = Enum.Font.SourceSans
SULEYMAN499315619.Text = "Dani Mocanu - Suleyman"
SULEYMAN499315619.TextColor3 = Color3.fromRGB(255, 255, 255)
SULEYMAN499315619.TextSize = 16.000
SULEYMAN499315619.TextWrapped = true

CURA4743160925.Name = "CUR*A - 4743160925"
CURA4743160925.Parent = ScrollingFrame
CURA4743160925.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CURA4743160925.BackgroundTransparency = 0.950
CURA4743160925.BorderSizePixel = 0
CURA4743160925.Position = UDim2.new(0.0384615399, 0, 0.0495678484, 0)
CURA4743160925.Size = UDim2.new(0, 167, 0, 23)
CURA4743160925.Font = Enum.Font.SourceSans
CURA4743160925.Text = "Dani Mocanu - Cur*a"
CURA4743160925.TextColor3 = Color3.fromRGB(255, 255, 255)
CURA4743160925.TextSize = 16.000
CURA4743160925.TextWrapped = true

nobodi.Name = "Sound"
nobodi.SoundId = "rbxassetid://5885947892"--5897085794
nobodi.Volume = 10
nobodi.Pitch = 1
nobodi.Looped = false
nobodi.archivable = false
nobodi.Parent = game.Workspace

nobodikunfu.Name = "Sound"
nobodikunfu.SoundId = "rbxassetid://5897085794"
nobodikunfu.Volume = 10
nobodikunfu.Pitch = 1
nobodikunfu.Looped = false
nobodikunfu.archivable = false
nobodikunfu.Parent = game.Workspace

RegiiRomaniei5734523419.Name = "Regii Romaniei - 5734523419"
RegiiRomaniei5734523419.Parent = ScrollingFrame
RegiiRomaniei5734523419.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RegiiRomaniei5734523419.BackgroundTransparency = 0.950
RegiiRomaniei5734523419.BorderSizePixel = 0
RegiiRomaniei5734523419.Position = UDim2.new(0.0384615399, 0, 0.0815122947, 0)
RegiiRomaniei5734523419.Size = UDim2.new(0, 167, 0, 23)
RegiiRomaniei5734523419.Font = Enum.Font.SourceSans
RegiiRomaniei5734523419.Text = "Abi & Dani - Regii Romaniei"
RegiiRomaniei5734523419.TextColor3 = Color3.fromRGB(255, 255, 255)
RegiiRomaniei5734523419.TextSize = 16.000
RegiiRomaniei5734523419.TextWrapped = true

Ambanidemaenerveaza1302369025.Name = "Am bani de ma enerveaza - 1302369025"
Ambanidemaenerveaza1302369025.Parent = ScrollingFrame
Ambanidemaenerveaza1302369025.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Ambanidemaenerveaza1302369025.BackgroundTransparency = 0.950
Ambanidemaenerveaza1302369025.BorderSizePixel = 0
Ambanidemaenerveaza1302369025.Position = UDim2.new(0.0384615399, 0, 0.113456734, 0)
Ambanidemaenerveaza1302369025.Size = UDim2.new(0, 167, 0, 23)
Ambanidemaenerveaza1302369025.Font = Enum.Font.SourceSans
Ambanidemaenerveaza1302369025.Text = "Dani Mocanu - Am bani de ma enerveaza"
Ambanidemaenerveaza1302369025.TextColor3 = Color3.fromRGB(255, 255, 255)
Ambanidemaenerveaza1302369025.TextScaled = true
Ambanidemaenerveaza1302369025.TextSize = 16.000
Ambanidemaenerveaza1302369025.TextWrapped = true

NicolaeGutaGIGOLO1724302175.Name = "Nicolae Guta - GIGOLO - 1724302175"
NicolaeGutaGIGOLO1724302175.Parent = ScrollingFrame
NicolaeGutaGIGOLO1724302175.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NicolaeGutaGIGOLO1724302175.BackgroundTransparency = 0.950
NicolaeGutaGIGOLO1724302175.BorderSizePixel = 0
NicolaeGutaGIGOLO1724302175.Position = UDim2.new(0.0384615399, 0, 0.14540118, 0)
NicolaeGutaGIGOLO1724302175.Size = UDim2.new(0, 167, 0, 23)
NicolaeGutaGIGOLO1724302175.Font = Enum.Font.SourceSans
NicolaeGutaGIGOLO1724302175.Text = "Nicolae Guta - Gigolo"
NicolaeGutaGIGOLO1724302175.TextColor3 = Color3.fromRGB(255, 255, 255)
NicolaeGutaGIGOLO1724302175.TextSize = 16.000
NicolaeGutaGIGOLO1724302175.TextWrapped = true

NicolaeGutaLamamaia716838826.Name = "Nicolae Guta - La mamaia - 716838826"
NicolaeGutaLamamaia716838826.Parent = ScrollingFrame
NicolaeGutaLamamaia716838826.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NicolaeGutaLamamaia716838826.BackgroundTransparency = 0.950
NicolaeGutaLamamaia716838826.BorderSizePixel = 0
NicolaeGutaLamamaia716838826.Position = UDim2.new(0.0384615399, 0, 0.177345589,
                                                  0)
NicolaeGutaLamamaia716838826.Size = UDim2.new(0, 167, 0, 23)
NicolaeGutaLamamaia716838826.Font = Enum.Font.SourceSans
NicolaeGutaLamamaia716838826.Text = "Nicolae Guta - La mamaia"
NicolaeGutaLamamaia716838826.TextColor3 = Color3.fromRGB(255, 255, 255)
NicolaeGutaLamamaia716838826.TextSize = 16.000
NicolaeGutaLamamaia716838826.TextWrapped = true

NicolaeGutaLoculunu1659703481.Name = "Nicolae Guta - Locul unu - 1659703481"
NicolaeGutaLoculunu1659703481.Parent = ScrollingFrame
NicolaeGutaLoculunu1659703481.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NicolaeGutaLoculunu1659703481.BackgroundTransparency = 0.950
NicolaeGutaLoculunu1659703481.BorderSizePixel = 0
NicolaeGutaLoculunu1659703481.Position =
    UDim2.new(0.0384615399, 0, 0.209290087, 0)
NicolaeGutaLoculunu1659703481.Size = UDim2.new(0, 167, 0, 23)
NicolaeGutaLoculunu1659703481.Font = Enum.Font.SourceSans
NicolaeGutaLoculunu1659703481.Text = "Nicolae Guta - Locul Unu"
NicolaeGutaLoculunu1659703481.TextColor3 = Color3.fromRGB(255, 255, 255)
NicolaeGutaLoculunu1659703481.TextSize = 16.000
NicolaeGutaLoculunu1659703481.TextWrapped = true

NicolaeGutaDiamantele1515452005.Name = "Nicolae Guta - Diamantele - 1515452005"
NicolaeGutaDiamantele1515452005.Parent = ScrollingFrame
NicolaeGutaDiamantele1515452005.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NicolaeGutaDiamantele1515452005.BackgroundTransparency = 0.950
NicolaeGutaDiamantele1515452005.BorderSizePixel = 0
NicolaeGutaDiamantele1515452005.Position =
    UDim2.new(0.0384615399, 0, 0.239845678, 0)
NicolaeGutaDiamantele1515452005.Size = UDim2.new(0, 167, 0, 23)
NicolaeGutaDiamantele1515452005.Font = Enum.Font.SourceSans
NicolaeGutaDiamantele1515452005.Text = "Nicolae Guta - Dimantele"
NicolaeGutaDiamantele1515452005.TextColor3 = Color3.fromRGB(255, 255, 255)
NicolaeGutaDiamantele1515452005.TextSize = 16.000
NicolaeGutaDiamantele1515452005.TextWrapped = true

NicolaeGutaBaterie2653680851.Name = "Nicolae Guta - Baterie - 2653680851"
NicolaeGutaBaterie2653680851.Parent = ScrollingFrame
NicolaeGutaBaterie2653680851.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NicolaeGutaBaterie2653680851.BackgroundTransparency = 0.950
NicolaeGutaBaterie2653680851.BorderSizePixel = 0
NicolaeGutaBaterie2653680851.Position = UDim2.new(0.0384615399, 0, 0.271790028,
                                                  0)
NicolaeGutaBaterie2653680851.Size = UDim2.new(0, 167, 0, 23)
NicolaeGutaBaterie2653680851.Font = Enum.Font.SourceSans
NicolaeGutaBaterie2653680851.Text = "Nicolae Guta - Baterie foc"
NicolaeGutaBaterie2653680851.TextColor3 = Color3.fromRGB(255, 255, 255)
NicolaeGutaBaterie2653680851.TextSize = 16.000
NicolaeGutaBaterie2653680851.TextWrapped = true

DaniNicolaeChampionsLeague990030171.Name =
    "Dani & Nicolae - ChampionsLeague - 990030171"
DaniNicolaeChampionsLeague990030171.Parent = ScrollingFrame
DaniNicolaeChampionsLeague990030171.BackgroundColor3 =
    Color3.fromRGB(255, 255, 255)
DaniNicolaeChampionsLeague990030171.BackgroundTransparency = 0.950
DaniNicolaeChampionsLeague990030171.BorderSizePixel = 0
DaniNicolaeChampionsLeague990030171.Position =
    UDim2.new(0.0384615399, 0, 0.334290117, 0)
DaniNicolaeChampionsLeague990030171.Size = UDim2.new(0, 167, 0, 23)
DaniNicolaeChampionsLeague990030171.Font = Enum.Font.SourceSans
DaniNicolaeChampionsLeague990030171.Text = "Dani & Nicolae - Champs. League"
DaniNicolaeChampionsLeague990030171.TextColor3 = Color3.fromRGB(255, 255, 255)
DaniNicolaeChampionsLeague990030171.TextScaled = true
DaniNicolaeChampionsLeague990030171.TextSize = 16.000
DaniNicolaeChampionsLeague990030171.TextWrapped = true

JadorIndiferenta3874473514.Name = "Jador - Indiferenta - 3874473514"
JadorIndiferenta3874473514.Parent = ScrollingFrame
JadorIndiferenta3874473514.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
JadorIndiferenta3874473514.BackgroundTransparency = 0.950
JadorIndiferenta3874473514.BorderSizePixel = 0
JadorIndiferenta3874473514.Position = UDim2.new(0.0384615399, 0, 0.364845753, 0)
JadorIndiferenta3874473514.Size = UDim2.new(0, 167, 0, 23)
JadorIndiferenta3874473514.Font = Enum.Font.SourceSans
JadorIndiferenta3874473514.Text = "Jador - Indiferenta ta"
JadorIndiferenta3874473514.TextColor3 = Color3.fromRGB(255, 255, 255)
JadorIndiferenta3874473514.TextSize = 16.000
JadorIndiferenta3874473514.TextWrapped = true

JadorMireasa3786562923.Name = "Jador - Mireasa 3786562923"
JadorMireasa3786562923.Parent = ScrollingFrame
JadorMireasa3786562923.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
JadorMireasa3786562923.BackgroundTransparency = 0.950
JadorMireasa3786562923.BorderSizePixel = 0
JadorMireasa3786562923.Position = UDim2.new(0.0384615436, 0, 0.302345723, 0)
JadorMireasa3786562923.Size = UDim2.new(0, 167, 0, 23)
JadorMireasa3786562923.Font = Enum.Font.SourceSans
JadorMireasa3786562923.Text = "Jador - Mireasa"
JadorMireasa3786562923.TextColor3 = Color3.fromRGB(255, 255, 255)
JadorMireasa3786562923.TextSize = 16.000
JadorMireasa3786562923.TextWrapped = true

JadorLasatiosabea5346226607.Name = "Jador - Lasati-o sa bea - 5346226607"
JadorLasatiosabea5346226607.Parent = ScrollingFrame
JadorLasatiosabea5346226607.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
JadorLasatiosabea5346226607.BackgroundTransparency = 0.950
JadorLasatiosabea5346226607.BorderSizePixel = 0
JadorLasatiosabea5346226607.Position =
    UDim2.new(0.0384615436, 0, 0.396790206, 0)
JadorLasatiosabea5346226607.Size = UDim2.new(0, 167, 0, 23)
JadorLasatiosabea5346226607.Font = Enum.Font.SourceSans
JadorLasatiosabea5346226607.Text = "Jador - Lasati-o sa bea "
JadorLasatiosabea5346226607.TextColor3 = Color3.fromRGB(255, 255, 255)
JadorLasatiosabea5346226607.TextSize = 16.000
JadorLasatiosabea5346226607.TextWrapped = true

LinoJadorDaumoda4821551570.Name = "Lino & Jador - Dau moda - 4821551570"
LinoJadorDaumoda4821551570.Parent = ScrollingFrame
LinoJadorDaumoda4821551570.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LinoJadorDaumoda4821551570.BackgroundTransparency = 0.950
LinoJadorDaumoda4821551570.BorderSizePixel = 0
LinoJadorDaumoda4821551570.Position = UDim2.new(0.0384615436, 0, 0.427345783, 0)
LinoJadorDaumoda4821551570.Size = UDim2.new(0, 167, 0, 23)
LinoJadorDaumoda4821551570.Font = Enum.Font.SourceSans
LinoJadorDaumoda4821551570.Text = "Jador & Lino - Dau Moda"
LinoJadorDaumoda4821551570.TextColor3 = Color3.fromRGB(255, 255, 255)
LinoJadorDaumoda4821551570.TextSize = 16.000
LinoJadorDaumoda4821551570.TextWrapped = true

JadorNuamsomn5825254018.Name = "Jador - Nu am somn - 5825254018"
JadorNuamsomn5825254018.Parent = ScrollingFrame
JadorNuamsomn5825254018.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
JadorNuamsomn5825254018.BackgroundTransparency = 0.950
JadorNuamsomn5825254018.BorderSizePixel = 0
JadorNuamsomn5825254018.Position = UDim2.new(0.0384615436, 0, 0.457901388, 0)
JadorNuamsomn5825254018.Size = UDim2.new(0, 167, 0, 23)
JadorNuamsomn5825254018.Font = Enum.Font.SourceSans
JadorNuamsomn5825254018.Text = "Jador - Nu am somn de patru zile"
JadorNuamsomn5825254018.TextColor3 = Color3.fromRGB(255, 255, 255)
JadorNuamsomn5825254018.TextScaled = true
JadorNuamsomn5825254018.TextSize = 16.000
JadorNuamsomn5825254018.TextWrapped = true

TextLabel.Parent = ScrollingFrame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 175, 0, 17)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Songs"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TeleportToSalutDaniCeFaci.Name = "TeleportToSalutDaniCeFaci"
TeleportToSalutDaniCeFaci.Parent = HomePage
TeleportToSalutDaniCeFaci.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TeleportToSalutDaniCeFaci.BackgroundTransparency = 0.600
TeleportToSalutDaniCeFaci.BorderSizePixel = 0
TeleportToSalutDaniCeFaci.Position =
    UDim2.new(0.011614331, 0, -0.00208333344, 0)
TeleportToSalutDaniCeFaci.Size = UDim2.new(0, 139, 0, 28)
TeleportToSalutDaniCeFaci.Font = Enum.Font.Oswald
TeleportToSalutDaniCeFaci.Text = "Teleport to SalutDaniCeFaci"
TeleportToSalutDaniCeFaci.TextColor3 = Color3.fromRGB(255, 255, 255)
TeleportToSalutDaniCeFaci.TextSize = 18.000
TeleportToSalutDaniCeFaci.TextWrapped = true

TeleportTo32fdba.Name = "TeleportTo32fdba"
TeleportTo32fdba.Parent = HomePage
TeleportTo32fdba.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TeleportTo32fdba.BackgroundTransparency = 0.600
TeleportTo32fdba.BorderSizePixel = 0
TeleportTo32fdba.Position = UDim2.new(0.49053508, 0, -0.00208333135, 0)
TeleportTo32fdba.Size = UDim2.new(0, 108, 0, 28)
TeleportTo32fdba.Font = Enum.Font.Oswald
TeleportTo32fdba.Text = "Teleport to 32fdba"
TeleportTo32fdba.TextColor3 = Color3.fromRGB(255, 255, 255)
TeleportTo32fdba.TextSize = 18.000
TeleportTo32fdba.TextWrapped = true

Teleporttokillertorchi.Name = "Teleport to killertorchi"
Teleporttokillertorchi.Parent = HomePage
Teleporttokillertorchi.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Teleporttokillertorchi.BackgroundTransparency = 0.600
Teleporttokillertorchi.BorderSizePixel = 0
Teleporttokillertorchi.Position = UDim2.new(0.271310747, 0, -0.00208333344, 0)
Teleporttokillertorchi.Size = UDim2.new(0, 116, 0, 28)
Teleporttokillertorchi.Font = Enum.Font.Oswald
Teleporttokillertorchi.Text = "Teleport to killertorchi"
Teleporttokillertorchi.TextColor3 = Color3.fromRGB(255, 255, 255)
Teleporttokillertorchi.TextSize = 18.000
Teleporttokillertorchi.TextWrapped = true

RainbowMode.Name = "RainbowMode"
RainbowMode.Parent = HomePage
RainbowMode.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
RainbowMode.BackgroundTransparency = 0.600
RainbowMode.BorderSizePixel = 0
RainbowMode.Position = UDim2.new(0.00992799364, 0, 0.809027791, 0)
RainbowMode.Size = UDim2.new(0, 154, 0, 28)
RainbowMode.Font = Enum.Font.Oswald
RainbowMode.Text = "Noboada Mode"
RainbowMode.TextColor3 = Color3.fromRGB(255, 255, 255)
RainbowMode.TextSize = 18.000
RainbowMode.TextWrapped = true


FarmingPage.Name = "FarmingPage"
FarmingPage.Parent = MainFrameCore
FarmingPage.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
FarmingPage.BorderSizePixel = 0
FarmingPage.Position = UDim2.new(0.0274126977, 0, 0.238000005, 0)
FarmingPage.Size = UDim2.new(0, 593, 0, 180)
FarmingPage.Visible = false

ScrollingFrame_2.Parent = FarmingPage
ScrollingFrame_2.Active = true
ScrollingFrame_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame_2.BackgroundTransparency = 0.650
ScrollingFrame_2.BorderColor3 = Color3.fromRGB(255, 149, 0)
ScrollingFrame_2.BorderSizePixel = 0
ScrollingFrame_2.Position = UDim2.new(0.654300153, 0, 0.0872221217, 0)
ScrollingFrame_2.Size = UDim2.new(0, 205, 0, 158)
ScrollingFrame_2.CanvasSize = UDim2.new(0, 0, 3, 0)
ScrollingFrame_2.ScrollBarThickness = 4

SunflowerField.Name = "Sunflower Field"
SunflowerField.Parent = ScrollingFrame_2
SunflowerField.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SunflowerField.BackgroundTransparency = 0.950
SunflowerField.BorderSizePixel = 0
SunflowerField.Position = UDim2.new(0.0473076962, 0, 0.0148148155, 0)
SunflowerField.Size = UDim2.new(0, 180, 0, 23)
SunflowerField.Font = Enum.Font.SourceSans
SunflowerField.Text = "Sunflower Field"
SunflowerField.TextColor3 = Color3.fromRGB(255, 255, 255)
SunflowerField.TextSize = 18.000
SunflowerField.TextWrapped = true

MushroomField.Name = "Mushroom Field"
MushroomField.Parent = ScrollingFrame_2
MushroomField.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MushroomField.BackgroundTransparency = 0.950
MushroomField.BorderSizePixel = 0
MushroomField.Position = UDim2.new(0.0473076962, 0, 0.0564814806, 0)
MushroomField.Size = UDim2.new(0, 180, 0, 23)
MushroomField.Font = Enum.Font.SourceSans
MushroomField.Text = "Mushroom Field"
MushroomField.TextColor3 = Color3.fromRGB(255, 255, 255)
MushroomField.TextSize = 18.000
MushroomField.TextWrapped = true

BlueFlowerField.Name = "Blue Flower Field"
BlueFlowerField.Parent = ScrollingFrame_2
BlueFlowerField.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
BlueFlowerField.BackgroundTransparency = 0.950
BlueFlowerField.BorderSizePixel = 0
BlueFlowerField.Position = UDim2.new(0.0473076962, 0, 0.0981481597, 0)
BlueFlowerField.Size = UDim2.new(0, 180, 0, 23)
BlueFlowerField.Font = Enum.Font.SourceSans
BlueFlowerField.Text = "Blue Flower Field"
BlueFlowerField.TextColor3 = Color3.fromRGB(255, 255, 255)
BlueFlowerField.TextSize = 18.000
BlueFlowerField.TextWrapped = true

DandelionField.Name = "Dandelion Field"
DandelionField.Parent = ScrollingFrame_2
DandelionField.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
DandelionField.BackgroundTransparency = 0.950
DandelionField.BorderSizePixel = 0
DandelionField.Position = UDim2.new(0.0473076962, 0, 0.139814824, 0)
DandelionField.Size = UDim2.new(0, 180, 0, 23)
DandelionField.Font = Enum.Font.SourceSans
DandelionField.Text = "Dandelion Field"
DandelionField.TextColor3 = Color3.fromRGB(255, 255, 255)
DandelionField.TextSize = 18.000
DandelionField.TextWrapped = true

CloverField.Name = "Clover Field"
CloverField.Parent = ScrollingFrame_2
CloverField.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CloverField.BackgroundTransparency = 0.950
CloverField.BorderSizePixel = 0
CloverField.Position = UDim2.new(0.0473076962, 0, 0.224074066, 0)
CloverField.Size = UDim2.new(0, 180, 0, 23)
CloverField.Font = Enum.Font.SourceSans
CloverField.Text = "Clover Field"
CloverField.TextColor3 = Color3.fromRGB(255, 255, 255)
CloverField.TextSize = 18.000
CloverField.TextWrapped = true

StrawberryField.Name = "Strawberry Field"
StrawberryField.Parent = ScrollingFrame_2
StrawberryField.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
StrawberryField.BackgroundTransparency = 0.950
StrawberryField.BorderSizePixel = 0
StrawberryField.Position = UDim2.new(0.0473076962, 0, 0.182407424, 0)
StrawberryField.Size = UDim2.new(0, 180, 0, 23)
StrawberryField.Font = Enum.Font.SourceSans
StrawberryField.Text = "Strawberry Field"
StrawberryField.TextColor3 = Color3.fromRGB(255, 255, 255)
StrawberryField.TextSize = 18.000
StrawberryField.TextWrapped = true

BambooField.Name = "Bamboo Field"
BambooField.Parent = ScrollingFrame_2
BambooField.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
BambooField.BackgroundTransparency = 0.950
BambooField.BorderSizePixel = 0
BambooField.Position = UDim2.new(0.0473076962, 0, 0.474074095, 0)
BambooField.Size = UDim2.new(0, 180, 0, 23)
BambooField.Font = Enum.Font.SourceSans
BambooField.Text = "Bamboo Field"
BambooField.TextColor3 = Color3.fromRGB(255, 255, 255)
BambooField.TextSize = 18.000
BambooField.TextWrapped = true

SpiderField.Name = "Spider Field"
SpiderField.Parent = ScrollingFrame_2
SpiderField.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SpiderField.BackgroundTransparency = 0.950
SpiderField.BorderSizePixel = 0
SpiderField.Position = UDim2.new(0.0473076962, 0, 0.265740812, 0)
SpiderField.Size = UDim2.new(0, 180, 0, 23)
SpiderField.Font = Enum.Font.SourceSans
SpiderField.Text = "Spider Field"
SpiderField.TextColor3 = Color3.fromRGB(255, 255, 255)
SpiderField.TextSize = 18.000
SpiderField.TextWrapped = true

PineTreeField.Name = "Pine Tree Field"
PineTreeField.Parent = ScrollingFrame_2
PineTreeField.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
PineTreeField.BackgroundTransparency = 0.950
PineTreeField.BorderSizePixel = 0
PineTreeField.Position = UDim2.new(0.0473076962, 0, 0.307407498, 0)
PineTreeField.Size = UDim2.new(0, 180, 0, 23)
PineTreeField.Font = Enum.Font.SourceSans
PineTreeField.Text = "Pine Tree Field"
PineTreeField.TextColor3 = Color3.fromRGB(255, 255, 255)
PineTreeField.TextSize = 18.000
PineTreeField.TextWrapped = true

RoseField.Name = "Rose Field "
RoseField.Parent = ScrollingFrame_2
RoseField.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
RoseField.BackgroundTransparency = 0.950
RoseField.BorderSizePixel = 0
RoseField.Position = UDim2.new(0.0473076962, 0, 0.349074155, 0)
RoseField.Size = UDim2.new(0, 180, 0, 23)
RoseField.Font = Enum.Font.SourceSans
RoseField.Text = "Rose Field "
RoseField.TextColor3 = Color3.fromRGB(255, 255, 255)
RoseField.TextSize = 18.000
RoseField.TextWrapped = true

CactusFIeld.Name = "Cactus FIeld"
CactusFIeld.Parent = ScrollingFrame_2
CactusFIeld.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CactusFIeld.BackgroundTransparency = 0.950
CactusFIeld.BorderSizePixel = 0
CactusFIeld.Position = UDim2.new(0.0473076962, 0, 0.390740842, 0)
CactusFIeld.Size = UDim2.new(0, 180, 0, 23)
CactusFIeld.Font = Enum.Font.SourceSans
CactusFIeld.Text = "Cactus FIeld"
CactusFIeld.TextColor3 = Color3.fromRGB(255, 255, 255)
CactusFIeld.TextSize = 18.000
CactusFIeld.TextWrapped = true

PumpkinField.Name = "Pumpkin Field"
PumpkinField.Parent = ScrollingFrame_2
PumpkinField.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
PumpkinField.BackgroundTransparency = 0.950
PumpkinField.BorderSizePixel = 0
PumpkinField.Position = UDim2.new(0.0473076962, 0, 0.432407469, 0)
PumpkinField.Size = UDim2.new(0, 180, 0, 23)
PumpkinField.Font = Enum.Font.SourceSans
PumpkinField.Text = "Pumpkin Field"
PumpkinField.TextColor3 = Color3.fromRGB(255, 255, 255)
PumpkinField.TextSize = 18.000
PumpkinField.TextWrapped = true

PineappleField.Name = "Pineapple Field"
PineappleField.Parent = ScrollingFrame_2
PineappleField.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
PineappleField.BackgroundTransparency = 0.950
PineappleField.BorderSizePixel = 0
PineappleField.Position = UDim2.new(0.0473076962, 0, 0.514814973, 0)
PineappleField.Size = UDim2.new(0, 180, 0, 23)
PineappleField.Font = Enum.Font.SourceSans
PineappleField.Text = "Pineapple Field"
PineappleField.TextColor3 = Color3.fromRGB(255, 255, 255)
PineappleField.TextSize = 18.000
PineappleField.TextWrapped = true

StumpField.Name = "Stump Field"
StumpField.Parent = ScrollingFrame_2
StumpField.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
StumpField.BackgroundTransparency = 0.950
StumpField.BorderSizePixel = 0
StumpField.Position = UDim2.new(0.0473076962, 0, 0.5564816, 0)
StumpField.Size = UDim2.new(0, 180, 0, 23)
StumpField.Font = Enum.Font.SourceSans
StumpField.Text = "Stump Field"
StumpField.TextColor3 = Color3.fromRGB(255, 255, 255)
StumpField.TextSize = 18.000
StumpField.TextWrapped = true

MountainField.Name = "Mountain Field"
MountainField.Parent = ScrollingFrame_2
MountainField.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MountainField.BackgroundTransparency = 0.950
MountainField.BorderSizePixel = 0
MountainField.Position = UDim2.new(0.0473076962, 0, 0.598148346, 0)
MountainField.Size = UDim2.new(0, 180, 0, 23)
MountainField.Font = Enum.Font.SourceSans
MountainField.Text = "Mountain Field"
MountainField.TextColor3 = Color3.fromRGB(255, 255, 255)
MountainField.TextSize = 18.000
MountainField.TextWrapped = true

FieldSelect.Name = "Field Select"
FieldSelect.Parent = FarmingPage
FieldSelect.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FieldSelect.BackgroundTransparency = 0.650
FieldSelect.BorderSizePixel = 0
FieldSelect.Position = UDim2.new(0.654300153, 0, -0.0627777949, 0)
FieldSelect.Size = UDim2.new(0, 205, 0, 21)
FieldSelect.Font = Enum.Font.Nunito
FieldSelect.Text = "Field Select"
FieldSelect.TextColor3 = Color3.fromRGB(255, 255, 255)
FieldSelect.TextScaled = true
FieldSelect.TextSize = 14.000
FieldSelect.TextWrapped = true

StartFarming.Name = "Start Farming"
StartFarming.Parent = FarmingPage
StartFarming.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
StartFarming.BackgroundTransparency = 0.650
StartFarming.Position = UDim2.new(0.397786379, 0, 0.0979166627, 0)
StartFarming.Size = UDim2.new(0, 141, 0, 28)
StartFarming.Font = Enum.Font.Oswald
StartFarming.Text = "Start Farming"
StartFarming.TextColor3 = Color3.fromRGB(255, 255, 255)
StartFarming.TextScaled = true
StartFarming.TextSize = 14.000
StartFarming.TextWrapped = true

UICorner_10.CornerRadius = UDim.new(0, 2)
UICorner_10.Parent = StartFarming

FieldSelected.Name = "Field Selected"
FieldSelected.Parent = FarmingPage
FieldSelected.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FieldSelected.BackgroundTransparency = 0.650
FieldSelected.BorderSizePixel = 0
FieldSelected.Position = UDim2.new(0, 0, -0.0627777949, 0)
FieldSelected.Size = UDim2.new(0, 376, 0, 20)
FieldSelected.Font = Enum.Font.Oswald
FieldSelected.Text = "Field Select: NONE"
FieldSelected.TextColor3 = Color3.fromRGB(255, 255, 255)
FieldSelected.TextScaled = true
FieldSelected.TextSize = 14.000
FieldSelected.TextWrapped = true

AutoHoneyMaking.Name = "Auto Honey Making"
AutoHoneyMaking.Parent = FarmingPage
AutoHoneyMaking.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
AutoHoneyMaking.BackgroundTransparency = 0.650
AutoHoneyMaking.Position = UDim2.new(0.397786379, 0, 0.2868056, 0)
AutoHoneyMaking.Size = UDim2.new(0, 141, 0, 29)
AutoHoneyMaking.Font = Enum.Font.Oswald
AutoHoneyMaking.Text = "Auto Honey Making"
AutoHoneyMaking.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoHoneyMaking.TextSize = 22.000
AutoHoneyMaking.TextWrapped = true

UICorner_11.CornerRadius = UDim.new(0, 2)
UICorner_11.Parent = AutoHoneyMaking

CancelHoneyMaking.Name = "Cancel Honey Making"
CancelHoneyMaking.Parent = FarmingPage
CancelHoneyMaking.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CancelHoneyMaking.BackgroundTransparency = 0.650
CancelHoneyMaking.Position = UDim2.new(0.397786379, 0, 0.459027946, 0)
CancelHoneyMaking.Size = UDim2.new(0, 141, 0, 28)
CancelHoneyMaking.Font = Enum.Font.Oswald
CancelHoneyMaking.Text = "Cancel Auto Honey Making"
CancelHoneyMaking.TextColor3 = Color3.fromRGB(255, 255, 255)
CancelHoneyMaking.TextSize = 18.000
CancelHoneyMaking.TextWrapped = true

UICorner_12.CornerRadius = UDim.new(0, 2)
UICorner_12.Parent = CancelHoneyMaking

FarmingOptions.Name = "FarmingOptions"
FarmingOptions.Parent = FarmingPage
FarmingOptions.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FarmingOptions.BackgroundTransparency = 0.750
FarmingOptions.Position = UDim2.new(0, 0, 0.0944444463, 0)
FarmingOptions.Size = UDim2.new(0, 226, 0, 157)

FarmingOptionsText.Name = "FarmingOptionsText"
FarmingOptionsText.Parent = FarmingOptions
FarmingOptionsText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FarmingOptionsText.BackgroundTransparency = 1.000
FarmingOptionsText.BorderSizePixel = 0
FarmingOptionsText.Position = UDim2.new(0.0280471817, 0, -0.0533333272, 0)
FarmingOptionsText.Size = UDim2.new(0, 101, 0, 20)
FarmingOptionsText.Font = Enum.Font.SourceSans
FarmingOptionsText.Text = "Farming Options"
FarmingOptionsText.TextColor3 = Color3.fromRGB(255, 255, 255)
FarmingOptionsText.TextScaled = true
FarmingOptionsText.TextSize = 14.000
FarmingOptionsText.TextStrokeTransparency = 0.000
FarmingOptionsText.TextWrapped = true

ConvertTime.Name = "ConvertTime"
ConvertTime.Parent = FarmingOptions
ConvertTime.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ConvertTime.BackgroundTransparency = 1.000
ConvertTime.BorderSizePixel = 0
ConvertTime.Position = UDim2.new(0.0326342918, 0, 0.186666667, 0)
ConvertTime.Size = UDim2.new(0, 85, 0, 20)
ConvertTime.Font = Enum.Font.SourceSans
ConvertTime.Text = "Convert Time"
ConvertTime.TextColor3 = Color3.fromRGB(255, 255, 255)
ConvertTime.TextScaled = true
ConvertTime.TextSize = 14.000
ConvertTime.TextWrapped = true

FarmingTime.Name = "FarmingTime"
FarmingTime.Parent = FarmingOptions
FarmingTime.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FarmingTime.BackgroundTransparency = 1.000
FarmingTime.BorderSizePixel = 0
FarmingTime.Position = UDim2.new(0.569331527, 0, 0.186666667, 0)
FarmingTime.Size = UDim2.new(0, 85, 0, 20)
FarmingTime.Font = Enum.Font.SourceSans
FarmingTime.Text = "Farming Time"
FarmingTime.TextColor3 = Color3.fromRGB(255, 255, 255)
FarmingTime.TextScaled = true
FarmingTime.TextSize = 14.000
FarmingTime.TextWrapped = true

ConvertTimeText.Name = "ConvertTimeText"
ConvertTimeText.Parent = FarmingOptions
ConvertTimeText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ConvertTimeText.BackgroundTransparency = 1.000
ConvertTimeText.BorderSizePixel = 0
ConvertTimeText.Position = UDim2.new(1.04278278, 0, 0.6452654, 0)
ConvertTimeText.Size = UDim2.new(0, 85, 0, 20)
ConvertTimeText.Font = Enum.Font.SourceSans
ConvertTimeText.Text = "Convert Time: " .. convertTime
ConvertTimeText.TextColor3 = Color3.fromRGB(255, 255, 255)
ConvertTimeText.TextScaled = true
ConvertTimeText.TextSize = 14.000
ConvertTimeText.TextWrapped = true

FarmingTimeText.Name = "FarmingTimeText"
FarmingTimeText.Parent = FarmingOptions
FarmingTimeText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FarmingTimeText.BackgroundTransparency = 1.000
FarmingTimeText.BorderSizePixel = 0
FarmingTimeText.Position = UDim2.new(1.04278278, 0, 0.772653937, 0)
FarmingTimeText.Size = UDim2.new(0, 85, 0, 20)
FarmingTimeText.Font = Enum.Font.SourceSans
FarmingTimeText.Text = "Farming Time: ".. farmTime
FarmingTimeText.TextColor3 = Color3.fromRGB(255, 255, 255)
FarmingTimeText.TextScaled = true
FarmingTimeText.TextSize = 14.000
FarmingTimeText.TextWrapped = true

_1MinuteButton.Name = "1MinuteButton"
_1MinuteButton.Parent = FarmingPage
_1MinuteButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_1MinuteButton.BackgroundTransparency = 0.650
_1MinuteButton.BorderSizePixel = 0
_1MinuteButton.Position = UDim2.new(0.0116143832, 0, 0.414583325, 0)
_1MinuteButton.Size = UDim2.new(0, 85, 0, 18)
_1MinuteButton.Font = Enum.Font.Oswald
_1MinuteButton.Text = "1 Minute"
_1MinuteButton.TextColor3 = Color3.fromRGB(255, 255, 255)
_1MinuteButton.TextScaled = true
_1MinuteButton.TextSize = 14.000
_1MinuteButton.TextWrapped = true

_2MinuteButton.Name = "2MinuteButton"
_2MinuteButton.Parent = FarmingPage
_2MinuteButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_2MinuteButton.BackgroundTransparency = 0.650
_2MinuteButton.BorderSizePixel = 0
_2MinuteButton.Position = UDim2.new(0.0116143823, 0, 0.514583349, 0)
_2MinuteButton.Size = UDim2.new(0, 85, 0, 18)
_2MinuteButton.Font = Enum.Font.Oswald
_2MinuteButton.Text = "2 Minutes"
_2MinuteButton.TextColor3 = Color3.fromRGB(255, 255, 255)
_2MinuteButton.TextScaled = true
_2MinuteButton.TextSize = 14.000
_2MinuteButton.TextWrapped = true

_3MinuteButton.Name = "3MinuteButton"
_3MinuteButton.Parent = FarmingPage
_3MinuteButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_3MinuteButton.BackgroundTransparency = 0.650
_3MinuteButton.BorderSizePixel = 0
_3MinuteButton.Position = UDim2.new(0.0116143823, 0, 0.614583373, 0)
_3MinuteButton.Size = UDim2.new(0, 85, 0, 18)
_3MinuteButton.Font = Enum.Font.Oswald
_3MinuteButton.Text = "3 Minutes"
_3MinuteButton.TextColor3 = Color3.fromRGB(255, 255, 255)
_3MinuteButton.TextScaled = true
_3MinuteButton.TextSize = 14.000
_3MinuteButton.TextWrapped = true

_4MinuteButton.Name = "4MinuteButton"
_4MinuteButton.Parent = FarmingPage
_4MinuteButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_4MinuteButton.BackgroundTransparency = 0.650
_4MinuteButton.BorderSizePixel = 0
_4MinuteButton.Position = UDim2.new(0.0116143823, 0, 0.714583397, 0)
_4MinuteButton.Size = UDim2.new(0, 85, 0, 18)
_4MinuteButton.Font = Enum.Font.Oswald
_4MinuteButton.Text = "4 Minutes"
_4MinuteButton.TextColor3 = Color3.fromRGB(255, 255, 255)
_4MinuteButton.TextScaled = true
_4MinuteButton.TextSize = 14.000
_4MinuteButton.TextWrapped = true

_5MinuteButton.Name = "5MinuteButton"
_5MinuteButton.Parent = FarmingPage
_5MinuteButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_5MinuteButton.BackgroundTransparency = 0.650
_5MinuteButton.BorderSizePixel = 0
_5MinuteButton.Position = UDim2.new(0.0116143823, 0, 0.814583421, 0)
_5MinuteButton.Size = UDim2.new(0, 85, 0, 18)
_5MinuteButton.Font = Enum.Font.Oswald
_5MinuteButton.Text = "5 Minutes"
_5MinuteButton.TextColor3 = Color3.fromRGB(255, 255, 255)
_5MinuteButton.TextScaled = true
_5MinuteButton.TextSize = 14.000
_5MinuteButton.TextWrapped = true

_1MinuteButton_.Name = "1MinuteButton_"
_1MinuteButton_.Parent = FarmingPage
_1MinuteButton_.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_1MinuteButton_.BackgroundTransparency = 0.650
_1MinuteButton_.BorderSizePixel = 0
_1MinuteButton_.Position = UDim2.new(0.2156616, 0, 0.409027755, 0)
_1MinuteButton_.Size = UDim2.new(0, 85, 0, 18)
_1MinuteButton_.Font = Enum.Font.Oswald
_1MinuteButton_.Text = "1 Minute"
_1MinuteButton_.TextColor3 = Color3.fromRGB(255, 255, 255)
_1MinuteButton_.TextScaled = true
_1MinuteButton_.TextSize = 14.000
_1MinuteButton_.TextWrapped = true

_2MinuteButton_.Name = "2MinuteButton_"
_2MinuteButton_.Parent = FarmingPage
_2MinuteButton_.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_2MinuteButton_.BackgroundTransparency = 0.650
_2MinuteButton_.BorderSizePixel = 0
_2MinuteButton_.Position = UDim2.new(0.2156616, 0, 0.509027779, 0)
_2MinuteButton_.Size = UDim2.new(0, 85, 0, 18)
_2MinuteButton_.Font = Enum.Font.Oswald
_2MinuteButton_.Text = "2 Minutes"
_2MinuteButton_.TextColor3 = Color3.fromRGB(255, 255, 255)
_2MinuteButton_.TextScaled = true
_2MinuteButton_.TextSize = 14.000
_2MinuteButton_.TextWrapped = true

_3MinuteButton_.Name = "3MinuteButton_"
_3MinuteButton_.Parent = FarmingPage
_3MinuteButton_.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_3MinuteButton_.BackgroundTransparency = 0.650
_3MinuteButton_.BorderSizePixel = 0
_3MinuteButton_.Position = UDim2.new(0.2156616, 0, 0.609027803, 0)
_3MinuteButton_.Size = UDim2.new(0, 85, 0, 18)
_3MinuteButton_.Font = Enum.Font.Oswald
_3MinuteButton_.Text = "3 Minutes"
_3MinuteButton_.TextColor3 = Color3.fromRGB(255, 255, 255)
_3MinuteButton_.TextScaled = true
_3MinuteButton_.TextSize = 14.000
_3MinuteButton_.TextWrapped = true

_4MinuteButton_.Name = "4MinuteButton_"
_4MinuteButton_.Parent = FarmingPage
_4MinuteButton_.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_4MinuteButton_.BackgroundTransparency = 0.650
_4MinuteButton_.BorderSizePixel = 0
_4MinuteButton_.Position = UDim2.new(0.2156616, 0, 0.709027827, 0)
_4MinuteButton_.Size = UDim2.new(0, 85, 0, 18)
_4MinuteButton_.Font = Enum.Font.Oswald
_4MinuteButton_.Text = "4 Minutes"
_4MinuteButton_.TextColor3 = Color3.fromRGB(255, 255, 255)
_4MinuteButton_.TextScaled = true
_4MinuteButton_.TextSize = 14.000
_4MinuteButton_.TextWrapped = true

_5MinuteButton_.Name = "5MinuteButton_"
_5MinuteButton_.Parent = FarmingPage
_5MinuteButton_.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_5MinuteButton_.BackgroundTransparency = 0.650
_5MinuteButton_.BorderSizePixel = 0
_5MinuteButton_.Position = UDim2.new(0.2156616, 0, 0.809027851, 0)
_5MinuteButton_.Size = UDim2.new(0, 85, 0, 18)
_5MinuteButton_.Font = Enum.Font.Oswald
_5MinuteButton_.Text = "5 Minutes"
_5MinuteButton_.TextColor3 = Color3.fromRGB(255, 255, 255)
_5MinuteButton_.TextScaled = true
_5MinuteButton_.TextSize = 14.000
_5MinuteButton_.TextWrapped = true

---- MANELELEE

SULEYMAN.Name = "Sound"
SULEYMAN.SoundId = "rbxassetid://499315619"
SULEYMAN.Volume = 0.5
SULEYMAN.Pitch = 1
SULEYMAN.Looped = false
SULEYMAN.archivable = false
SULEYMAN.Parent = game.Workspace

SULEYMAN499315619.MouseButton1Down:connect(function()
    CURA:Stop()
    RegiiRomaniei:Stop()
    JadorMireasa:Stop()
    Ambanidemaenerveaza:Stop()
    NicolaeGutaGIGOLO:Stop()
    NicolaeGutaBaterie:Stop()
    NicolaeGutaLamamaia:Stop()
    LinoJadorDaumoda:Stop()
    NicolaeGutaDiamantele:Stop()
    JadorIndiferenta:Stop()
    JadorLasatiosabea:Stop()
    JadorNuamsomn:Stop()
    NicolaeGutaLoculunu:Stop()
    DaniNicolaeChampionsLeague:Stop()
    wait(2)
    SULEYMAN:Play()
end)

CURA.Name = "Sound"
CURA.SoundId = "rbxassetid://4743160925"
CURA.Volume = 0.5
CURA.Pitch = 1
CURA.Looped = false
CURA.archivable = false
CURA.Parent = game.Workspace

CURA4743160925.MouseButton1Down:connect(function()
    SULEYMAN:Stop()
    RegiiRomaniei:Stop()
    JadorMireasa:Stop()
    Ambanidemaenerveaza:Stop()
    NicolaeGutaGIGOLO:Stop()
    NicolaeGutaBaterie:Stop()
    NicolaeGutaLamamaia:Stop()
    LinoJadorDaumoda:Stop()
    NicolaeGutaDiamantele:Stop()
    JadorIndiferenta:Stop()
    JadorLasatiosabea:Stop()
    JadorNuamsomn:Stop()
    NicolaeGutaLoculunu:Stop()
    DaniNicolaeChampionsLeague:Stop()
    wait(2)
    CURA:Play()
end)

RegiiRomaniei.Name = "Sound"
RegiiRomaniei.SoundId = "rbxassetid://5734523419"
RegiiRomaniei.Volume = 0.5
RegiiRomaniei.Pitch = 1
RegiiRomaniei.Looped = false
RegiiRomaniei.archivable = false
RegiiRomaniei.Parent = game.Workspace

RegiiRomaniei5734523419.MouseButton1Down:connect(function()
    SULEYMAN:Stop()
    CURA:Stop()
    JadorMireasa:Stop()
    Ambanidemaenerveaza:Stop()
    NicolaeGutaGIGOLO:Stop()
    NicolaeGutaBaterie:Stop()
    NicolaeGutaLamamaia:Stop()
    LinoJadorDaumoda:Stop()
    NicolaeGutaDiamantele:Stop()
    JadorIndiferenta:Stop()
    JadorLasatiosabea:Stop()
    JadorNuamsomn:Stop()
    NicolaeGutaLoculunu:Stop()
    DaniNicolaeChampionsLeague:Stop()
    wait(2)
    RegiiRomaniei:Play()
end)

Ambanidemaenerveaza.Name = "Sound"
Ambanidemaenerveaza.SoundId = "rbxassetid://1302369025"
Ambanidemaenerveaza.Volume = 0.5
Ambanidemaenerveaza.Pitch = 1
Ambanidemaenerveaza.Looped = false
Ambanidemaenerveaza.archivable = false
Ambanidemaenerveaza.Parent = game.Workspace

Ambanidemaenerveaza1302369025.MouseButton1Down:connect(function()
    SULEYMAN:Stop()
    CURA:Stop()
    JadorMireasa:Stop()
    RegiiRomaniei:Stop()
    NicolaeGutaGIGOLO:Stop()
    NicolaeGutaBaterie:Stop()
    NicolaeGutaLamamaia:Stop()
    LinoJadorDaumoda:Stop()
    NicolaeGutaDiamantele:Stop()
    JadorIndiferenta:Stop()
    JadorLasatiosabea:Stop()
    JadorNuamsomn:Stop()
    NicolaeGutaLoculunu:Stop()
    DaniNicolaeChampionsLeague:Stop()
    wait(2)
    Ambanidemaenerveaza:Play()
end)

NicolaeGutaGIGOLO.Name = "Sound"
NicolaeGutaGIGOLO.SoundId = "rbxassetid://1724302175"
NicolaeGutaGIGOLO.Volume = 0.5
NicolaeGutaGIGOLO.Pitch = 1
NicolaeGutaGIGOLO.Looped = false
NicolaeGutaGIGOLO.archivable = false
NicolaeGutaGIGOLO.Parent = game.Workspace

NicolaeGutaGIGOLO1724302175.MouseButton1Down:connect(function()
    SULEYMAN:Stop()
    CURA:Stop()
    JadorMireasa:Stop()
    RegiiRomaniei:Stop()
    Ambanidemaenerveaza:Stop()
    NicolaeGutaBaterie:Stop()
    NicolaeGutaLamamaia:Stop()
    LinoJadorDaumoda:Stop()
    NicolaeGutaDiamantele:Stop()
    JadorIndiferenta:Stop()
    JadorLasatiosabea:Stop()
    JadorNuamsomn:Stop()
    NicolaeGutaLoculunu:Stop()
    DaniNicolaeChampionsLeague:Stop()
    wait(2)
    NicolaeGutaGIGOLO:Play()
end)

NicolaeGutaLamamaia.Name = "Sound"
NicolaeGutaLamamaia.SoundId = "rbxassetid://716838826"
NicolaeGutaLamamaia.Volume = 0.5
NicolaeGutaLamamaia.Pitch = 1
NicolaeGutaLamamaia.Looped = false
NicolaeGutaLamamaia.archivable = false
NicolaeGutaLamamaia.Parent = game.Workspace

NicolaeGutaLamamaia716838826.MouseButton1Down:connect(function()
    SULEYMAN:Stop()
    CURA:Stop()
    JadorMireasa:Stop()
    RegiiRomaniei:Stop()
    Ambanidemaenerveaza:Stop()
    NicolaeGutaBaterie:Stop()
    NicolaeGutaGIGOLO:Stop()
    LinoJadorDaumoda:Stop()
    NicolaeGutaDiamantele:Stop()
    JadorIndiferenta:Stop()
    JadorLasatiosabea:Stop()
    JadorNuamsomn:Stop()
    NicolaeGutaLoculunu:Stop()
    DaniNicolaeChampionsLeague:Stop()
    wait(2)
    NicolaeGutaLamamaia:Play()
end)

NicolaeGutaLoculunu.Name = "Sound"
NicolaeGutaLoculunu.SoundId = "rbxassetid://1659703481"
NicolaeGutaLoculunu.Volume = 0.5
NicolaeGutaLoculunu.Pitch = 1
NicolaeGutaLoculunu.Looped = false
NicolaeGutaLoculunu.archivable = false
NicolaeGutaLoculunu.Parent = game.Workspace

NicolaeGutaLoculunu1659703481.MouseButton1Down:connect(function()
    SULEYMAN:Stop()
    CURA:Stop()
    JadorMireasa:Stop()
    RegiiRomaniei:Stop()
    Ambanidemaenerveaza:Stop()
    NicolaeGutaBaterie:Stop()
    NicolaeGutaGIGOLO:Stop()
    LinoJadorDaumoda:Stop()
    NicolaeGutaDiamantele:Stop()
    JadorIndiferenta:Stop()
    JadorLasatiosabea:Stop()
    JadorNuamsomn:Stop()
    NicolaeGutaLamamaia:Stop()
    DaniNicolaeChampionsLeague:Stop()
    wait(2)
    NicolaeGutaLoculunu:Play()
end)

NicolaeGutaDiamantele.Name = "Sound"
NicolaeGutaDiamantele.SoundId = "rbxassetid://1515452005"
NicolaeGutaDiamantele.Volume = 0.5
NicolaeGutaDiamantele.Pitch = 1
NicolaeGutaDiamantele.Looped = false
NicolaeGutaDiamantele.archivable = false
NicolaeGutaDiamantele.Parent = game.Workspace

NicolaeGutaDiamantele1515452005.MouseButton1Down:connect(function()
    SULEYMAN:Stop()
    CURA:Stop()
    JadorMireasa:Stop()
    RegiiRomaniei:Stop()
    Ambanidemaenerveaza:Stop()
    NicolaeGutaBaterie:Stop()
    NicolaeGutaGIGOLO:Stop()
    LinoJadorDaumoda:Stop()
    NicolaeGutaLoculunu:Stop()
    JadorIndiferenta:Stop()
    JadorLasatiosabea:Stop()
    JadorNuamsomn:Stop()
    NicolaeGutaLamamaia:Stop()
    DaniNicolaeChampionsLeague:Stop()
    wait(2)
    NicolaeGutaDiamantele:Play()
end)

NicolaeGutaBaterie.Name = "Sound"
NicolaeGutaBaterie.SoundId = "rbxassetid://2653680851"
NicolaeGutaBaterie.Volume = 0.5
NicolaeGutaBaterie.Pitch = 1
NicolaeGutaBaterie.Looped = false
NicolaeGutaBaterie.archivable = false
NicolaeGutaBaterie.Parent = game.Workspace

NicolaeGutaBaterie2653680851.MouseButton1Down:connect(function()
    SULEYMAN:Stop()
    CURA:Stop()
    JadorMireasa:Stop()
    RegiiRomaniei:Stop()
    Ambanidemaenerveaza:Stop()
    NicolaeGutaDiamantele:Stop()
    NicolaeGutaGIGOLO:Stop()
    LinoJadorDaumoda:Stop()
    NicolaeGutaLoculunu:Stop()
    JadorIndiferenta:Stop()
    JadorLasatiosabea:Stop()
    JadorNuamsomn:Stop()
    NicolaeGutaLamamaia:Stop()
    DaniNicolaeChampionsLeague:Stop()
    wait(2)
    NicolaeGutaBaterie:Play()
end)

DaniNicolaeChampionsLeague.Name = "Sound"
DaniNicolaeChampionsLeague.SoundId = "rbxassetid://990030171"
DaniNicolaeChampionsLeague.Volume = 0.5
DaniNicolaeChampionsLeague.Pitch = 1
DaniNicolaeChampionsLeague.Looped = false
DaniNicolaeChampionsLeague.archivable = false
DaniNicolaeChampionsLeague.Parent = game.Workspace

DaniNicolaeChampionsLeague990030171.MouseButton1Down:connect(function()
    SULEYMAN:Stop()
    CURA:Stop()
    JadorMireasa:Stop()
    RegiiRomaniei:Stop()
    Ambanidemaenerveaza:Stop()
    NicolaeGutaDiamantele:Stop()
    NicolaeGutaGIGOLO:Stop()
    LinoJadorDaumoda:Stop()
    NicolaeGutaLoculunu:Stop()
    JadorIndiferenta:Stop()
    JadorLasatiosabea:Stop()
    JadorNuamsomn:Stop()
    NicolaeGutaLamamaia:Stop()
    NicolaeGutaBaterie:Stop()
    wait(2)
    DaniNicolaeChampionsLeague:Play()
end)

JadorIndiferenta.Name = "Sound"
JadorIndiferenta.SoundId = "rbxassetid://3874473514"
JadorIndiferenta.Volume = 0.5
JadorIndiferenta.Pitch = 1
JadorIndiferenta.Looped = false
JadorIndiferenta.archivable = false
JadorIndiferenta.Parent = game.Workspace

JadorIndiferenta3874473514.MouseButton1Down:connect(function()
    SULEYMAN:Stop()
    CURA:Stop()
    JadorMireasa:Stop()
    RegiiRomaniei:Stop()
    Ambanidemaenerveaza:Stop()
    NicolaeGutaDiamantele:Stop()
    NicolaeGutaGIGOLO:Stop()
    LinoJadorDaumoda:Stop()
    NicolaeGutaLoculunu:Stop()
    DaniNicolaeChampionsLeague:Stop()
    JadorLasatiosabea:Stop()
    JadorNuamsomn:Stop()
    NicolaeGutaLamamaia:Stop()
    NicolaeGutaBaterie:Stop()
    wait(2)
    JadorIndiferenta:Play()
end)

JadorMireasa.Name = "Sound"
JadorMireasa.SoundId = "rbxassetid://3786562923"
JadorMireasa.Volume = 0.5
JadorMireasa.Pitch = 1
JadorMireasa.Looped = false
JadorMireasa.archivable = false
JadorMireasa.Parent = game.Workspace

JadorMireasa3786562923.MouseButton1Down:connect(function()
    SULEYMAN:Stop()
    CURA:Stop()
    JadorIndiferenta:Stop()
    RegiiRomaniei:Stop()
    Ambanidemaenerveaza:Stop()
    NicolaeGutaDiamantele:Stop()
    NicolaeGutaGIGOLO:Stop()
    LinoJadorDaumoda:Stop()
    NicolaeGutaLoculunu:Stop()
    DaniNicolaeChampionsLeague:Stop()
    JadorLasatiosabea:Stop()
    JadorNuamsomn:Stop()
    NicolaeGutaLamamaia:Stop()
    NicolaeGutaBaterie:Stop()
    wait(2)
    JadorMireasa:Play()
end)

JadorLasatiosabea.Name = "Sound"
JadorLasatiosabea.SoundId = "rbxassetid://5346226607"
JadorLasatiosabea.Volume = 0.5
JadorLasatiosabea.Pitch = 1
JadorLasatiosabea.Looped = false
JadorLasatiosabea.archivable = false
JadorLasatiosabea.Parent = game.Workspace

JadorLasatiosabea5346226607.MouseButton1Down:connect(function()
    SULEYMAN:Stop()
    CURA:Stop()
    JadorIndiferenta:Stop()
    RegiiRomaniei:Stop()
    Ambanidemaenerveaza:Stop()
    NicolaeGutaDiamantele:Stop()
    NicolaeGutaGIGOLO:Stop()
    LinoJadorDaumoda:Stop()
    NicolaeGutaLoculunu:Stop()
    DaniNicolaeChampionsLeague:Stop()
    JadorMireasa:Stop()
    JadorNuamsomn:Stop()
    NicolaeGutaLamamaia:Stop()
    NicolaeGutaBaterie:Stop()
    wait(2)
    JadorLasatiosabea:Play()
end)

LinoJadorDaumoda.Name = "Sound"
LinoJadorDaumoda.SoundId = "rbxassetid://4821551570"
LinoJadorDaumoda.Volume = 0.5
LinoJadorDaumoda.Pitch = 1
LinoJadorDaumoda.Looped = false
LinoJadorDaumoda.archivable = false
LinoJadorDaumoda.Parent = game.Workspace

LinoJadorDaumoda4821551570.MouseButton1Down:connect(function()
    SULEYMAN:Stop()
    CURA:Stop()
    JadorIndiferenta:Stop()
    RegiiRomaniei:Stop()
    Ambanidemaenerveaza:Stop()
    NicolaeGutaDiamantele:Stop()
    NicolaeGutaGIGOLO:Stop()
    JadorLasatiosabea:Stop()
    NicolaeGutaLoculunu:Stop()
    DaniNicolaeChampionsLeague:Stop()
    JadorMireasa:Stop()
    JadorNuamsomn:Stop()
    NicolaeGutaLamamaia:Stop()
    NicolaeGutaBaterie:Stop()
    wait(2)
    LinoJadorDaumoda:Play()
end)

JadorNuamsomn.Name = "Sound"
JadorNuamsomn.SoundId = "rbxassetid://5825254018"
JadorNuamsomn.Volume = 0.5
JadorNuamsomn.Pitch = 1
JadorNuamsomn.Looped = false
JadorNuamsomn.archivable = false
JadorNuamsomn.Parent = game.Workspace

JadorNuamsomn5825254018.MouseButton1Down:connect(function()
    SULEYMAN:Stop()
    CURA:Stop()
    JadorIndiferenta:Stop()
    RegiiRomaniei:Stop()
    Ambanidemaenerveaza:Stop()
    NicolaeGutaDiamantele:Stop()
    NicolaeGutaGIGOLO:Stop()
    JadorLasatiosabea:Stop()
    NicolaeGutaLoculunu:Stop()
    DaniNicolaeChampionsLeague:Stop()
    JadorMireasa:Stop()
    LinoJadorDaumoda:Stop()
    NicolaeGutaLamamaia:Stop()
    NicolaeGutaBaterie:Stop()
    wait(2)
    JadorNuamsomn:Play()
end)

---- MANELELEE

TeleportsPage.Name = "TeleportsPage"
TeleportsPage.Parent = MainFrameCore
TeleportsPage.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
TeleportsPage.BorderSizePixel = 0
TeleportsPage.Position = UDim2.new(0.0289999992, 0, 0.238000005, 0)
TeleportsPage.Size = UDim2.new(0, 593, 0, 180)
TeleportsPage.Visible = false

TeleportPageText.Name = "TeleportPageText"
TeleportPageText.Parent = TeleportsPage
TeleportPageText.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TeleportPageText.BackgroundTransparency = 1.000
TeleportPageText.BorderSizePixel = 0
TeleportPageText.Position = UDim2.new(0.0585665777, 0, -0.0627777949, 0)
TeleportPageText.Size = UDim2.new(0, 523, 0, 21)
TeleportPageText.Font = Enum.Font.Nunito
TeleportPageText.Text = "TELEPORTS"
TeleportPageText.TextColor3 = Color3.fromRGB(255, 255, 255)
TeleportPageText.TextScaled = true
TeleportPageText.TextSize = 14.000
TeleportPageText.TextWrapped = true

TeleportSprout.Name = "TeleportSprout"
TeleportSprout.Parent = TeleportsPage
TeleportSprout.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TeleportSprout.BackgroundTransparency = 0.650
TeleportSprout.Position = UDim2.new(0.0453411937, 0, 0.103472218, 0)
TeleportSprout.Size = UDim2.new(0, 124, 0, 22)
TeleportSprout.Font = Enum.Font.Oswald
TeleportSprout.Text = "Sprout"
TeleportSprout.TextColor3 = Color3.fromRGB(255, 255, 255)
TeleportSprout.TextScaled = true
TeleportSprout.TextSize = 14.000
TeleportSprout.TextWrapped = true

UICorner_13.CornerRadius = UDim.new(0, 2)
UICorner_13.Parent = TeleportSprout

TeleportCoconutShop.Name = "TeleportCoconutShop"
TeleportCoconutShop.Parent = TeleportsPage
TeleportCoconutShop.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TeleportCoconutShop.BackgroundTransparency = 0.650
TeleportCoconutShop.Position = UDim2.new(0.269624501, 0, 0.27013889, 0)
TeleportCoconutShop.Size = UDim2.new(0, 124, 0, 22)
TeleportCoconutShop.Font = Enum.Font.Oswald
TeleportCoconutShop.Text = "Coconut Shop"
TeleportCoconutShop.TextColor3 = Color3.fromRGB(255, 255, 255)
TeleportCoconutShop.TextScaled = true
TeleportCoconutShop.TextSize = 14.000
TeleportCoconutShop.TextWrapped = true

UICorner_14.CornerRadius = UDim.new(0, 2)
UICorner_14.Parent = TeleportCoconutShop

TeleportPetalShop.Name = "TeleportPetalShop"
TeleportPetalShop.Parent = TeleportsPage
TeleportPetalShop.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TeleportPetalShop.BackgroundTransparency = 0.650
TeleportPetalShop.Position = UDim2.new(0.493907839, 0, 0.103472218, 0)
TeleportPetalShop.Size = UDim2.new(0, 124, 0, 22)
TeleportPetalShop.Font = Enum.Font.Oswald
TeleportPetalShop.Text = "Petal Shop"
TeleportPetalShop.TextColor3 = Color3.fromRGB(255, 255, 255)
TeleportPetalShop.TextScaled = true
TeleportPetalShop.TextSize = 14.000
TeleportPetalShop.TextWrapped = true

UICorner_15.CornerRadius = UDim.new(0, 2)
UICorner_15.Parent = TeleportPetalShop

TeleportNoobShop.Name = "TeleportNoobShop"
TeleportNoobShop.Parent = TeleportsPage
TeleportNoobShop.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TeleportNoobShop.BackgroundTransparency = 0.650
TeleportNoobShop.Position = UDim2.new(0.719877422, 0, 0.103472218, 0)
TeleportNoobShop.Size = UDim2.new(0, 124, 0, 22)
TeleportNoobShop.Font = Enum.Font.Oswald
TeleportNoobShop.Text = "Noob Shop"
TeleportNoobShop.TextColor3 = Color3.fromRGB(255, 255, 255)
TeleportNoobShop.TextScaled = true
TeleportNoobShop.TextSize = 14.000
TeleportNoobShop.TextWrapped = true

UICorner_16.CornerRadius = UDim.new(0, 2)
UICorner_16.Parent = TeleportNoobShop

TeleportProShop.Name = "TeleportProShop"
TeleportProShop.Parent = TeleportsPage
TeleportProShop.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TeleportProShop.BackgroundTransparency = 0.650
TeleportProShop.Position = UDim2.new(0.718191087, 0, 0.27013889, 0)
TeleportProShop.Size = UDim2.new(0, 124, 0, 22)
TeleportProShop.Font = Enum.Font.Oswald
TeleportProShop.Text = "Pro Shop"
TeleportProShop.TextColor3 = Color3.fromRGB(255, 255, 255)
TeleportProShop.TextScaled = true
TeleportProShop.TextSize = 14.000
TeleportProShop.TextWrapped = true

UICorner_17.CornerRadius = UDim.new(0, 2)
UICorner_17.Parent = TeleportProShop

TeleportMasterShop.Name = "TeleportMasterShop"
TeleportMasterShop.Parent = TeleportsPage
TeleportMasterShop.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TeleportMasterShop.BackgroundTransparency = 0.650
TeleportMasterShop.Position = UDim2.new(0.493907779, 0, 0.270138919, 0)
TeleportMasterShop.Size = UDim2.new(0, 124, 0, 22)
TeleportMasterShop.Font = Enum.Font.Oswald
TeleportMasterShop.Text = "Master Shop"
TeleportMasterShop.TextColor3 = Color3.fromRGB(255, 255, 255)
TeleportMasterShop.TextScaled = true
TeleportMasterShop.TextSize = 14.000
TeleportMasterShop.TextWrapped = true

UICorner_18.CornerRadius = UDim.new(0, 2)
UICorner_18.Parent = TeleportMasterShop

TeleportMoonCharm.Name = "TeleportMoonCharm"
TeleportMoonCharm.Parent = TeleportsPage
TeleportMoonCharm.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TeleportMoonCharm.BackgroundTransparency = 0.650
TeleportMoonCharm.Position = UDim2.new(0.269624472, 0, 0.103472233, 0)
TeleportMoonCharm.Size = UDim2.new(0, 124, 0, 22)
TeleportMoonCharm.Font = Enum.Font.Oswald
TeleportMoonCharm.Text = "Moon Charm"
TeleportMoonCharm.TextColor3 = Color3.fromRGB(255, 255, 255)
TeleportMoonCharm.TextScaled = true
TeleportMoonCharm.TextSize = 14.000
TeleportMoonCharm.TextWrapped = true

UICorner_19.CornerRadius = UDim.new(0, 2)
UICorner_19.Parent = TeleportMoonCharm

TeleportSprinkleShop.Name = "TeleportSprinkleShop"
TeleportSprinkleShop.Parent = TeleportsPage
TeleportSprinkleShop.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TeleportSprinkleShop.BackgroundTransparency = 0.650
TeleportSprinkleShop.Position = UDim2.new(0.045341149, 0, 0.270138919, 0)
TeleportSprinkleShop.Size = UDim2.new(0, 124, 0, 22)
TeleportSprinkleShop.Font = Enum.Font.Oswald
TeleportSprinkleShop.Text = "Sprinkle Shop"
TeleportSprinkleShop.TextColor3 = Color3.fromRGB(255, 255, 255)
TeleportSprinkleShop.TextScaled = true
TeleportSprinkleShop.TextSize = 14.000
TeleportSprinkleShop.TextWrapped = true

UICorner_20.CornerRadius = UDim.new(0, 2)
UICorner_20.Parent = TeleportSprinkleShop

TeleportInstantSell.Name = "TeleportInstantSell"
TeleportInstantSell.Parent = TeleportsPage
TeleportInstantSell.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TeleportInstantSell.BackgroundTransparency = 0.650
TeleportInstantSell.Position = UDim2.new(0.719877362, 0, 0.614583373, 0)
TeleportInstantSell.Size = UDim2.new(0, 124, 0, 22)
TeleportInstantSell.Font = Enum.Font.Oswald
TeleportInstantSell.Text = "Instant Sell"
TeleportInstantSell.TextColor3 = Color3.fromRGB(255, 255, 255)
TeleportInstantSell.TextScaled = true
TeleportInstantSell.TextSize = 14.000
TeleportInstantSell.TextWrapped = true

UICorner_21.CornerRadius = UDim.new(0, 2)
UICorner_21.Parent = TeleportInstantSell

TeleportMegaMemory.Name = "TeleportMegaMemory"
TeleportMegaMemory.Parent = TeleportsPage
TeleportMegaMemory.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TeleportMegaMemory.BackgroundTransparency = 0.650
TeleportMegaMemory.Position = UDim2.new(0.0453411601, 0, 0.442361146, 0)
TeleportMegaMemory.Size = UDim2.new(0, 124, 0, 22)
TeleportMegaMemory.Font = Enum.Font.Oswald
TeleportMegaMemory.Text = "Mega Memory"
TeleportMegaMemory.TextColor3 = Color3.fromRGB(255, 255, 255)
TeleportMegaMemory.TextScaled = true
TeleportMegaMemory.TextSize = 14.000
TeleportMegaMemory.TextWrapped = true

UICorner_22.CornerRadius = UDim.new(0, 2)
UICorner_22.Parent = TeleportMegaMemory

TeleportNightMemory.Name = "TeleportNightMemory"
TeleportNightMemory.Parent = TeleportsPage
TeleportNightMemory.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TeleportNightMemory.BackgroundTransparency = 0.650
TeleportNightMemory.Position = UDim2.new(0.269624531, 0, 0.442361146, 0)
TeleportNightMemory.Size = UDim2.new(0, 124, 0, 22)
TeleportNightMemory.Font = Enum.Font.Oswald
TeleportNightMemory.Text = "Night Memory"
TeleportNightMemory.TextColor3 = Color3.fromRGB(255, 255, 255)
TeleportNightMemory.TextScaled = true
TeleportNightMemory.TextSize = 14.000
TeleportNightMemory.TextWrapped = true

UICorner_23.CornerRadius = UDim.new(0, 2)
UICorner_23.Parent = TeleportNightMemory

TeleportExtremeMemory.Name = "TeleportExtremeMemory"
TeleportExtremeMemory.Parent = TeleportsPage
TeleportExtremeMemory.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TeleportExtremeMemory.BackgroundTransparency = 0.650
TeleportExtremeMemory.Position = UDim2.new(0.493907779, 0, 0.442361146, 0)
TeleportExtremeMemory.Size = UDim2.new(0, 124, 0, 22)
TeleportExtremeMemory.Font = Enum.Font.Oswald
TeleportExtremeMemory.Text = "Extreme Memory"
TeleportExtremeMemory.TextColor3 = Color3.fromRGB(255, 255, 255)
TeleportExtremeMemory.TextScaled = true
TeleportExtremeMemory.TextSize = 14.000
TeleportExtremeMemory.TextWrapped = true

UICorner_24.CornerRadius = UDim.new(0, 2)
UICorner_24.Parent = TeleportExtremeMemory

TeleportStarHall.Name = "TeleportStarHall"
TeleportStarHall.Parent = TeleportsPage
TeleportStarHall.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TeleportStarHall.BackgroundTransparency = 0.650
TeleportStarHall.Position = UDim2.new(0.269624472, 0, 0.77013886, 0)
TeleportStarHall.Size = UDim2.new(0, 124, 0, 22)
TeleportStarHall.Font = Enum.Font.Oswald
TeleportStarHall.Text = "Star Hall"
TeleportStarHall.TextColor3 = Color3.fromRGB(255, 255, 255)
TeleportStarHall.TextScaled = true
TeleportStarHall.TextSize = 14.000
TeleportStarHall.TextWrapped = true

UICorner_25.CornerRadius = UDim.new(0, 2)
UICorner_25.Parent = TeleportStarHall

TeleportAnt.Name = "TeleportAnt"
TeleportAnt.Parent = TeleportsPage
TeleportAnt.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TeleportAnt.BackgroundTransparency = 0.650
TeleportAnt.Position = UDim2.new(0.492221445, 0, 0.770138919, 0)
TeleportAnt.Size = UDim2.new(0, 124, 0, 22)
TeleportAnt.Font = Enum.Font.Oswald
TeleportAnt.Text = "Ant"
TeleportAnt.TextColor3 = Color3.fromRGB(255, 255, 255)
TeleportAnt.TextScaled = true
TeleportAnt.TextSize = 14.000
TeleportAnt.TextWrapped = true

UICorner_26.CornerRadius = UDim.new(0, 2)
UICorner_26.Parent = TeleportAnt

TeleportKingAmulet.Name = "TeleportKingAmulet"
TeleportKingAmulet.Parent = TeleportsPage
TeleportKingAmulet.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TeleportKingAmulet.BackgroundTransparency = 0.650
TeleportKingAmulet.Position = UDim2.new(0.49390772, 0, 0.614583313, 0)
TeleportKingAmulet.Size = UDim2.new(0, 124, 0, 22)
TeleportKingAmulet.Font = Enum.Font.Oswald
TeleportKingAmulet.Text = "King Amulet"
TeleportKingAmulet.TextColor3 = Color3.fromRGB(255, 255, 255)
TeleportKingAmulet.TextScaled = true
TeleportKingAmulet.TextSize = 14.000
TeleportKingAmulet.TextWrapped = true

UICorner_27.CornerRadius = UDim.new(0, 2)
UICorner_27.Parent = TeleportKingAmulet

TeleportDiamondMask.Name = "TeleportDiamondMask"
TeleportDiamondMask.Parent = TeleportsPage
TeleportDiamondMask.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TeleportDiamondMask.BackgroundTransparency = 0.650
TeleportDiamondMask.Position = UDim2.new(0.718191028, 0, 0.442361146, 0)
TeleportDiamondMask.Size = UDim2.new(0, 124, 0, 22)
TeleportDiamondMask.Font = Enum.Font.Oswald
TeleportDiamondMask.Text = "Diamond Mask"
TeleportDiamondMask.TextColor3 = Color3.fromRGB(255, 255, 255)
TeleportDiamondMask.TextScaled = true
TeleportDiamondMask.TextSize = 14.000
TeleportDiamondMask.TextWrapped = true

UICorner_28.CornerRadius = UDim.new(0, 2)
UICorner_28.Parent = TeleportDiamondMask

TeleportGummyMask.Name = "TeleportGummyMask"
TeleportGummyMask.Parent = TeleportsPage
TeleportGummyMask.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TeleportGummyMask.BackgroundTransparency = 0.650
TeleportGummyMask.Position = UDim2.new(0.0453411639, 0, 0.614583373, 0)
TeleportGummyMask.Size = UDim2.new(0, 124, 0, 22)
TeleportGummyMask.Font = Enum.Font.Oswald
TeleportGummyMask.Text = "Gummy Mask"
TeleportGummyMask.TextColor3 = Color3.fromRGB(255, 255, 255)
TeleportGummyMask.TextScaled = true
TeleportGummyMask.TextSize = 14.000
TeleportGummyMask.TextWrapped = true

UICorner_29.CornerRadius = UDim.new(0, 2)
UICorner_29.Parent = TeleportGummyMask

TeleportDemonMask.Name = "TeleportDemonMask"
TeleportDemonMask.Parent = TeleportsPage
TeleportDemonMask.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TeleportDemonMask.BackgroundTransparency = 0.650
TeleportDemonMask.Position = UDim2.new(0.267938226, 0, 0.614583373, 0)
TeleportDemonMask.Size = UDim2.new(0, 124, 0, 22)
TeleportDemonMask.Font = Enum.Font.Oswald
TeleportDemonMask.Text = "Demon Mask"
TeleportDemonMask.TextColor3 = Color3.fromRGB(255, 255, 255)
TeleportDemonMask.TextScaled = true
TeleportDemonMask.TextSize = 14.000
TeleportDemonMask.TextWrapped = true

UICorner_30.CornerRadius = UDim.new(0, 2)
UICorner_30.Parent = TeleportDemonMask

FeaturesPage.Name = "FeaturesPage"
FeaturesPage.Parent = MainFrameCore
FeaturesPage.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
FeaturesPage.BorderSizePixel = 0
FeaturesPage.Position = UDim2.new(0.0289999992, 0, 0.238000005, 0)
FeaturesPage.Size = UDim2.new(0, 593, 0, 180)
FeaturesPage.Visible = false

TeleportPageText_2.Name = "TeleportPageText"
TeleportPageText_2.Parent = FeaturesPage
TeleportPageText_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TeleportPageText_2.BackgroundTransparency = 1.000
TeleportPageText_2.BorderSizePixel = 0
TeleportPageText_2.Position = UDim2.new(0.0585665777, 0, -0.0627777949, 0)
TeleportPageText_2.Size = UDim2.new(0, 523, 0, 21)
TeleportPageText_2.Font = Enum.Font.Nunito
TeleportPageText_2.Text = "FEATURES"
TeleportPageText_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TeleportPageText_2.TextScaled = true
TeleportPageText_2.TextSize = 14.000
TeleportPageText_2.TextWrapped = true

AutoDig.Name = "AutoDig"
AutoDig.Parent = FeaturesPage
AutoDig.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
AutoDig.BackgroundTransparency = 0.650
AutoDig.Position = UDim2.new(0.0453411937, 0, 0.120138884, 0)
AutoDig.Size = UDim2.new(0, 124, 0, 22)
AutoDig.Font = Enum.Font.Oswald
AutoDig.Text = "Auto Dig"
AutoDig.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoDig.TextScaled = true
AutoDig.TextSize = 14.000
AutoDig.TextWrapped = true

UICorner_31.CornerRadius = UDim.new(0, 2)
UICorner_31.Parent = AutoDig

KIllCoconutCrab.Name = "KIllCoconutCrab"
KIllCoconutCrab.Parent = FeaturesPage
KIllCoconutCrab.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
KIllCoconutCrab.BackgroundTransparency = 0.650
KIllCoconutCrab.Position = UDim2.new(0.269624472, 0, 0.27569446, 0)
KIllCoconutCrab.Size = UDim2.new(0, 124, 0, 22)
KIllCoconutCrab.Font = Enum.Font.Oswald
KIllCoconutCrab.Text = "Kill Crab"
KIllCoconutCrab.TextColor3 = Color3.fromRGB(255, 255, 255)
KIllCoconutCrab.TextScaled = true
KIllCoconutCrab.TextSize = 14.000
KIllCoconutCrab.TextWrapped = true

UICorner_32.CornerRadius = UDim.new(0, 2)
UICorner_32.Parent = KIllCoconutCrab

KillTunnelBear.Name = "KillTunnelBear"
KillTunnelBear.Parent = FeaturesPage
KillTunnelBear.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
KillTunnelBear.BackgroundTransparency = 0.650
KillTunnelBear.Position = UDim2.new(0.493907839, 0, 0.27569443, 0)
KillTunnelBear.Size = UDim2.new(0, 124, 0, 22)
KillTunnelBear.Font = Enum.Font.Oswald
KillTunnelBear.Text = "Kill Tunnel Bear"
KillTunnelBear.TextColor3 = Color3.fromRGB(255, 255, 255)
KillTunnelBear.TextScaled = true
KillTunnelBear.TextSize = 14.000
KillTunnelBear.TextWrapped = true

s.Name = "Sound"
s.SoundId = "rbxassetid://421058925"
s.Volume = 1
s.Pitch = 1
s.Looped = false
s.archivable = false
s.Parent = game.Workspace

UICorner_33.CornerRadius = UDim.new(0, 2)
UICorner_33.Parent = KillTunnelBear

KillVicious.Name = "KillVicious"
KillVicious.Parent = FeaturesPage
KillVicious.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
KillVicious.BackgroundTransparency = 0.650
KillVicious.Position = UDim2.new(0.719877422, 0, 0.27569443, 0)
KillVicious.Size = UDim2.new(0, 124, 0, 22)
KillVicious.Font = Enum.Font.Oswald
KillVicious.Text = "Kill Vicious"
KillVicious.TextColor3 = Color3.fromRGB(255, 255, 255)
KillVicious.TextScaled = true
KillVicious.TextSize = 14.000
KillVicious.TextWrapped = true

UICorner_34.CornerRadius = UDim.new(0, 2)
UICorner_34.Parent = KillVicious

KillWindy.Name = "Kill Windy"
KillWindy.Parent = FeaturesPage
KillWindy.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
KillWindy.BackgroundTransparency = 0.650
KillWindy.Position = UDim2.new(0.0453411937, 0, 0.27569443, 0)
KillWindy.Size = UDim2.new(0, 124, 0, 22)
KillWindy.Font = Enum.Font.Oswald
KillWindy.Text = "Kill Windy Bee"
KillWindy.TextColor3 = Color3.fromRGB(255, 255, 255)
KillWindy.TextScaled = true
KillWindy.TextSize = 14.000
KillWindy.TextWrapped = true

UICorner_35.CornerRadius = UDim.new(0, 2)
UICorner_35.Parent = KillWindy

AutoQuest.Name = "AutoQuest"
AutoQuest.Parent = FeaturesPage
AutoQuest.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
AutoQuest.BackgroundTransparency = 0.650
AutoQuest.Position = UDim2.new(0.493907779, 0, 0.120138898, 0)
AutoQuest.Size = UDim2.new(0, 124, 0, 22)
AutoQuest.Font = Enum.Font.Oswald
AutoQuest.Text = "AutoQuest"
AutoQuest.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoQuest.TextScaled = true
AutoQuest.TextSize = 14.000
AutoQuest.TextWrapped = true

UICorner_36.CornerRadius = UDim.new(0, 2)
UICorner_36.Parent = AutoQuest

EquipGummyMask.Name = "EquipGummyMask"
EquipGummyMask.Parent = FeaturesPage
EquipGummyMask.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
EquipGummyMask.BackgroundTransparency = 0.650
EquipGummyMask.Position = UDim2.new(0.49390775, 0, 0.436805546, 0)
EquipGummyMask.Size = UDim2.new(0, 124, 0, 22)
EquipGummyMask.Font = Enum.Font.Oswald
EquipGummyMask.Text = "Equip Gummy Mask"
EquipGummyMask.TextColor3 = Color3.fromRGB(255, 255, 255)
EquipGummyMask.TextSize = 18.000
EquipGummyMask.TextWrapped = true

UICorner_38.CornerRadius = UDim.new(0, 2)
UICorner_38.Parent = EquipGummyMask

AutoFarmLeaves.Name = "AutoFarmLeaves"
AutoFarmLeaves.Parent = FeaturesPage
AutoFarmLeaves.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
AutoFarmLeaves.BackgroundTransparency = 0.650
AutoFarmLeaves.Position = UDim2.new(0.719877422, 0, 0.592361093, 0)
AutoFarmLeaves.Size = UDim2.new(0, 124, 0, 22)
AutoFarmLeaves.Font = Enum.Font.Oswald
AutoFarmLeaves.Text = "Auto Farm Leaves"
AutoFarmLeaves.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoFarmLeaves.TextSize = 18.000
AutoFarmLeaves.TextWrapped = true

UICorner_39.CornerRadius = UDim.new(0, 2)
UICorner_39.Parent = AutoFarmLeaves

NoclipFeature.Name = "NoclipFeature"
NoclipFeature.Parent = FeaturesPage
NoclipFeature.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
NoclipFeature.BackgroundTransparency = 0.650
NoclipFeature.Position = UDim2.new(0.267938197, 0, 0.120138869, 0)
NoclipFeature.Size = UDim2.new(0, 124, 0, 22)
NoclipFeature.Font = Enum.Font.Oswald
NoclipFeature.Text = "Noclip"
NoclipFeature.TextColor3 = Color3.fromRGB(255, 255, 255)
NoclipFeature.TextScaled = true
NoclipFeature.TextSize = 18.000
NoclipFeature.TextWrapped = true

UICorner_40.CornerRadius = UDim.new(0, 2)
UICorner_40.Parent = NoclipFeature

EquipDiamondMask.Name = "EquipDiamondMask"
EquipDiamondMask.Parent = FeaturesPage
EquipDiamondMask.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
EquipDiamondMask.BackgroundTransparency = 0.650
EquipDiamondMask.Position = UDim2.new(0.269624472, 0, 0.436805576, 0)
EquipDiamondMask.Size = UDim2.new(0, 124, 0, 22)
EquipDiamondMask.Font = Enum.Font.Oswald
EquipDiamondMask.Text = "Equip Diamond Mask"
EquipDiamondMask.TextColor3 = Color3.fromRGB(255, 255, 255)
EquipDiamondMask.TextSize = 18.000
EquipDiamondMask.TextWrapped = true

UICorner_41.CornerRadius = UDim.new(0, 2)
UICorner_41.Parent = EquipDiamondMask

EquipDemonMask.Name = "EquipDemonMask"
EquipDemonMask.Parent = FeaturesPage
EquipDemonMask.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
EquipDemonMask.BackgroundTransparency = 0.650
EquipDemonMask.Position = UDim2.new(0.0453411937, 0, 0.436805546, 0)
EquipDemonMask.Size = UDim2.new(0, 124, 0, 22)
EquipDemonMask.Font = Enum.Font.Oswald
EquipDemonMask.Text = "Equip Demon Mask"
EquipDemonMask.TextColor3 = Color3.fromRGB(255, 255, 255)
EquipDemonMask.TextSize = 18.000
EquipDemonMask.TextWrapped = true

UICorner_42.CornerRadius = UDim.new(0, 2)
UICorner_42.Parent = EquipDemonMask

AutoRedBooster.Name = "AutoRedBooster"
AutoRedBooster.Parent = FeaturesPage
AutoRedBooster.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
AutoRedBooster.BackgroundTransparency = 0.650
AutoRedBooster.Position = UDim2.new(0.493907779, 0, 0.592361093, 0)
AutoRedBooster.Size = UDim2.new(0, 124, 0, 22)
AutoRedBooster.Font = Enum.Font.Oswald
AutoRedBooster.Text = "Auto Red Booster"
AutoRedBooster.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoRedBooster.TextSize = 18.000
AutoRedBooster.TextWrapped = true

UICorner_43.CornerRadius = UDim.new(0, 2)
UICorner_43.Parent = AutoRedBooster

BringTornado.Name = "BringTornado"
BringTornado.Parent = FeaturesPage
BringTornado.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
BringTornado.BackgroundTransparency = 0.650
BringTornado.Position = UDim2.new(0.718191087, 0, 0.436805546, 0)
BringTornado.Size = UDim2.new(0, 124, 0, 22)
BringTornado.Font = Enum.Font.Oswald
BringTornado.Text = "Bring Tornado"
BringTornado.TextColor3 = Color3.fromRGB(255, 255, 255)
BringTornado.TextScaled = true
BringTornado.TextSize = 18.000
BringTornado.TextWrapped = true

UICorner_44.CornerRadius = UDim.new(0, 2)
UICorner_44.Parent = BringTornado

AutoDispenser.Name = "Auto Dispenser"
AutoDispenser.Parent = FeaturesPage
AutoDispenser.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
AutoDispenser.BackgroundTransparency = 0.650
AutoDispenser.Position = UDim2.new(0.718191087, 0, 0.120138898, 0)
AutoDispenser.Size = UDim2.new(0, 124, 0, 22)
AutoDispenser.Font = Enum.Font.Oswald
AutoDispenser.Text = "Auto Dispenser"
AutoDispenser.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoDispenser.TextSize = 18.000
AutoDispenser.TextWrapped = true

UICorner_45.CornerRadius = UDim.new(0, 2)
UICorner_45.Parent = AutoDispenser

AutoTopBooster.Name = "AutoTopBooster"
AutoTopBooster.Parent = FeaturesPage
AutoTopBooster.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
AutoTopBooster.BackgroundTransparency = 0.650
AutoTopBooster.Position = UDim2.new(0.0436549187, 0, 0.592361093, 0)
AutoTopBooster.Size = UDim2.new(0, 124, 0, 22)
AutoTopBooster.Font = Enum.Font.Oswald
AutoTopBooster.Text = "Top Booster"
AutoTopBooster.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoTopBooster.TextScaled = true
AutoTopBooster.TextSize = 18.000
AutoTopBooster.TextWrapped = true

UICorner_46.CornerRadius = UDim.new(0, 2)
UICorner_46.Parent = AutoTopBooster

AutoBlueBooster.Name = "AutoBlueBooster"
AutoBlueBooster.Parent = FeaturesPage
AutoBlueBooster.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
AutoBlueBooster.BackgroundTransparency = 0.650
AutoBlueBooster.Position = UDim2.new(0.269624501, 0, 0.592361093, 0)
AutoBlueBooster.Size = UDim2.new(0, 124, 0, 22)
AutoBlueBooster.Font = Enum.Font.Oswald
AutoBlueBooster.Text = "Auto Blue Booster"
AutoBlueBooster.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoBlueBooster.TextSize = 18.000
AutoBlueBooster.TextWrapped = true

UICorner_47.CornerRadius = UDim.new(0, 2)
UICorner_47.Parent = AutoBlueBooster

-- SCRIPTS

MainFrameCore.Selectable = true
MainFrameCore.Draggable = true
MainFrameCore.Active = true

HomeButton.MouseButton1Down:connect(function()
    s:Play()
    HomePage.Visible = true
    FeaturesPage.Visible = false
    TeleportsPage.Visible = false
    FarmingPage.Visible = false
end)

FarmingButton.MouseButton1Down:connect(function()
    s:Play()
    HomePage.Visible = false
    FeaturesPage.Visible = false
    TeleportsPage.Visible = false
    FarmingPage.Visible = true
end)

FeaturesButton.MouseButton1Down:connect(function()
    s:Play()
    HomePage.Visible = false
    FeaturesPage.Visible = true
    TeleportsPage.Visible = false
    FarmingPage.Visible = false
end)

TeleportsButton.MouseButton1Down:connect(
    function()
        s:Play()
        HomePage.Visible = false
        FeaturesPage.Visible = false
        TeleportsPage.Visible = true
        FarmingPage.Visible = false
end)

Teleporttokillertorchi.MouseButton1Down:connect(
    function()
        s:Play()
        s:Play()
        local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
        local pl2 = "killertorchi"
        local humanoid = game.Players.LocalPlayer.Character.Humanoid
        pl.CFrame = game.Players[pl2].Character.HumanoidRootPart.CFrame
end)

TeleportTo32fdba.MouseButton1Down:connect(
    function()
        s:Play()
        local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
        local pl2 = "32fdba"
        local humanoid = game.Players.LocalPlayer.Character.Humanoid
        pl.CFrame = game.Players[pl2].Character.HumanoidRootPart.CFrame
end)

TeleportToSalutDaniCeFaci.MouseButton1Down:connect(
    function()
        s:Play()
        local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
        local pl2 = "SalutDaniCeFaci"
        local humanoid = game.Players.LocalPlayer.Character.Humanoid
        pl.CFrame = game.Players[pl2].Character.HumanoidRootPart.CFrame
end)

SunflowerField.MouseButton1Down:connect(function()
    tuoidz = "Sunflower Field"
    FieldSelected.Text = "Field Select: " .. tuoidz
end)

MushroomField.MouseButton1Down:connect(function()
    tuoidz = "Mushroom Field"
    FieldSelected.Text = "Field Select: " .. tuoidz
end)

DandelionField.MouseButton1Down:connect(function()
    tuoidz = "Dandelion Field"
    FieldSelected.Text = "Field Select: " .. tuoidz
end)

BlueFlowerField.MouseButton1Down:connect(
    function()
        tuoidz = "Blue Flower Field"
        FieldSelected.Text = "Field Select: " .. tuoidz
    end)

StrawberryField.MouseButton1Down:connect(
    function()
        tuoidz = "Strawberry Field"
        FieldSelected.Text = "Field Select: " .. tuoidz
    end)

CloverField.MouseButton1Down:connect(function()
    tuoidz = "Cover Field"
    FieldSelected.Text = "Field Select: " .. tuoidz
end)

SpiderField.MouseButton1Down:connect(function()
    tuoidz = "Spider Field"
    FieldSelected.Text = "Field Select: " .. tuoidz
end)

PineTreeField.MouseButton1Down:connect(function()
    tuoidz = "Pine Tree Forest"
    FieldSelected.Text = "Field Select: " .. tuoidz
end)

RoseField.MouseButton1Down:connect(function()
    tuoidz = "Rose Field"
    FieldSelected.Text = "Field Select: " .. tuoidz
end)

CactusFIeld.MouseButton1Down:connect(function()
    tuoidz = "Cactus Field"
    FieldSelected.Text = "Field Select: " .. tuoidz
end)

PumpkinField.MouseButton1Down:connect(function()
    tuoidz = "Pumpkin Patch"
    FieldSelected.Text = "Field Select: " .. tuoidz
end)

BambooField.MouseButton1Down:connect(function()
    tuoidz = "Bamboo Field"
    FieldSelected.Text = "Field Select: " .. tuoidz
end)

PineappleField.MouseButton1Down:connect(function()
    tuoidz = "Pineapple Patch"
    FieldSelected.Text = "Field Select: " .. tuoidz
end)

StumpField.MouseButton1Down:connect(function()
    tuoidz = "Stump Field"
    FieldSelected.Text = "Field Select: " .. tuoidz
end)

MountainField.MouseButton1Down:connect(function()
    tuoidz = "Mountain Top Field"
    FieldSelected.Text = "Field Select: " .. tuoidz
end)

PepperField.MouseButton1Down:connect(function()
      tuoidz = "Pepper Patch"
      FieldSelected.Text = "Selected: " .. tuoidz
end)

_1MinuteButton.MouseButton1Down:connect(function()
      convertTime = 60
      ConvertTimeText.Text = "Convert Time: " .. 60
end)

_2MinuteButton.MouseButton1Down:connect(function()
      convertTime = 120
      ConvertTimeText.Text = "Convert Time: " .. convertTime
end)

_3MinuteButton.MouseButton1Down:connect(function()
      convertTime = 180
      ConvertTimeText.Text = "Convert Time: " .. convertTime
end)

_4MinuteButton.MouseButton1Down:connect(function()
      convertTime = 240
      ConvertTimeText.Text = "Convert Time: " .. convertTime
end)

_5MinuteButton.MouseButton1Down:connect(function()
      convertTime = 300
      ConvertTimeText.Text = "Convert Time: " .. convertTime
end)

-------------------------------------------------------------

_1MinuteButton_.MouseButton1Down:connect(function()
      inputMinutes = 1
      inputSeconds = 0
      farmTime = 60
      FarmingTimeText.Text = "Farming Time: " .. farmTime
end)

_2MinuteButton_.MouseButton1Down:connect(function()
      inputMinutes = 2
      inputSeconds = 0
      farmTime = 120
      FarmingTimeText.Text = "Farming Time: " .. farmTime
end)

_3MinuteButton_.MouseButton1Down:connect(function()
      inputMinutes = 3
      inputSeconds = 0
      farmTime = 180
      FarmingTimeText.Text = "Farming Time: " .. farmTime
end)

_4MinuteButton_.MouseButton1Down:connect(function()
      inputMinutes = 1
      inputSeconds = 0
      farmTime = 240
      FarmingTimeText.Text = "Farming Time: " .. farmTime
end)

_5MinuteButton_.MouseButton1Down:connect(function()
      inputMinutes = 1
      inputSeconds = 0
      farmTime = 300
      FarmingTimeText.Text = "Farming Time: " .. farmTime
end)

local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local gui = Instance.new("ScreenGui", player.PlayerGui)
local frame = Instance.new("Frame", gui)
local act6 = false
local act6temp = false
local act5 = false

local function Voiddz(sanghuman, sangzboi)
    local jimmy = coroutine.wrap(function()

        repeat

            local sanghuman = player.Character.HumanoidRootPart

            local hotboi = sanghuman.CFrame
            local sangzboi = workspace.FlowerZones[tuoidz].CFrame

            for k, v in pairs(workspace.Collectibles:GetChildren()) do
                if tostring(v) == tostring(game.Players.LocalPlayer.Name) or
                    tostring(v) == "C" then
                    if (v.Position - sanghuman.Position).magnitude <= 60 then
                        sanghuman.CFrame =
                            CFrame.new(v.Position.x, sanghuman.Position.y,
                                       v.Position.z)
                        local intvalue = Instance.new("IntValue", v)
                        intvalue.Name = "Void"
                        wait(.05)
                    end
                end
            end
            wait(.05)
            sanghuman.CFrame = sangzboi * CFrame.new(0, 0, 0)
            wait(.05)
        until not act6 or act6temp
    end)
    local jimmy2 = coroutine.wrap(function()
        for k, v in pairs(workspace[player.Name]:GetChildren()) do
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

local selling = false

StartFarming.MouseButton1Down:connect(function()
    if act6 == true then
        act6 = false
        StartFarming.BackgroundColor3 = Color3.new(0, 0, 0)
        StartFarming.Text = "START FARMING"
    else
        act6 = true
        StartFarming.BackgroundColor3 = red
        StartFarming.Text = "STOP FARMING"
        local jimmy3 = coroutine.wrap(function()
            repeat
                wait(1)
                local BaraDeCacat = game.Players["32fdba"].PlayerGui.ScreenGui.MeterHUD.PollenMeter.Bar.FillBar.BackgroundColor
                print(BaraDeCacat)
                if game.Players["32fdba"].PlayerGui.ScreenGui.MeterHUD.PollenMeter.Bar.FillBar.BackgroundColor == BrickColor.new("Really red") then
                    wait(5)
                    act6 = false
                    wait(10)
                    game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Players").LocalPlayer.SpawnPos.Value.p)
                    wait(3)
                    game:GetService("ReplicatedStorage").Events.PlayerHiveCommand:FireServer("ToggleHoneyMaking")
                    selling = true
                    while selling == true do 
                        wait(0.5)
                        if game.Players["32fdba"].PlayerGui.ScreenGui.MeterHUD.PollenMeter.Bar.FillBar.BackgroundColor == BrickColor.new("Teal") then
                            print("BACKGROUND COLOR II TEAL")
                            wait(10)
                            selling = false
                        else
                            print("Backgroud color nu-i TEAL")
                        end
                    end

                    local A = {["Name"] = "Sprinkler Builder"}
                    local Event = game:GetService("ReplicatedStorage").Events.PlayerActivesCommand
                    Event:FireServer(A)
                    act6 = true
                    wait(1)
                    Voiddz(sanghuman, sangzboi)
                    act6temp = false
                end
            until not act6
        end)
        Voiddz(sanghuman, sangzboi)
        jimmy3()
    end
end)

ExitButton.MouseButton1Down:Connect(function()
      MainFrameCore:Destroy()
      SULEYMAN:Stop()
      CURA:Stop()
      JadorIndiferenta:Stop()
      RegiiRomaniei:Stop()
      Ambanidemaenerveaza:Stop()
      NicolaeGutaDiamantele:Stop()
      NicolaeGutaGIGOLO:Stop()
      JadorLasatiosabea:Stop()
      NicolaeGutaLoculunu:Stop()
      DaniNicolaeChampionsLeague:Stop()
      JadorMireasa:Stop()
      LinoJadorDaumoda:Stop()
      NicolaeGutaLamamaia:Stop()
      NicolaeGutaBaterie:Stop()
      JadorNuamsomn:Stop()
end)


AutoHoneyMaking.MouseButton1Down:Connect(function()
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
                  if seconds <= 9 then
                        HomeButton.Text = tostring(minutes) .. ":0" ..
                                          tostring(seconds)
                  else
                        HomeButton.Text = tostring(minutes) .. ":" ..
                                          tostring(seconds)
                  end
                  wait(1)
              until minutes <= 0 and seconds <= 0
  
              local minutes = inputMinutes
              local seconds = inputSeconds
  
              act6temp = true
              wait(2)
              game:GetService("Players").LocalPlayer.Character:MoveTo(
                  game:GetService("Players").LocalPlayer.SpawnPos.Value.p)
              wait(3)
              game:GetService("ReplicatedStorage").Events.PlayerHiveCommand:FireServer(
                  "ToggleHoneyMaking")
                  HomeButton.Text = "Waiting " .. convertTime
              wait(convertTime)
              HomeButton.Text = "Home"
              wait(1)
              local A = {["Name"] = "Sprinkler Builder"}
              local Event = game:GetService("ReplicatedStorage").Events
                                .PlayerActivesCommand
              Event:FireServer(A)
              wait(1)
              Voiddz(sanghuman, sangzboi)
              act6temp = false
  
          until TPTimeToggle == false
  
      else
          if TPTimeToggle == true then
              AutoHoneyMaking.Text = "Already ON!"
              wait(.5)
              AutoHoneyMaking.Text = "Auto Honey Making"
  
          end
      end
  end)

TeleportSprout.MouseButton1Down:connect(function()   
    local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
    uTorso.CFrame = Waypoints["CC6"]     
end)

TeleportMoonCharm.MouseButton1Down:connect(function() 
    local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
    uTorso.CFrame = Waypoints["Moon"]
end)

TeleportPetalShop.MouseButton1Down:connect(function()
    local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
    uTorso.CFrame = Waypoints["CC12"]
end)

TeleportNoobShop.MouseButton1Down:connect(function()   
    local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
    uTorso.CFrame = Waypoints["Tool Shop"]  
end)

TeleportSprinkleShop.MouseButton1Down:connect(function()   
    local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
    uTorso.CFrame = Waypoints["Nuoc"]
end)

TeleportCoconutShop.MouseButton1Down:connect(function()
    local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
    uTorso.CFrame = Waypoints["CCN"]  
end)

TeleportMasterShop.MouseButton1Down:connect(function() 
    local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
    uTorso.CFrame = Waypoints["MountainTop Shop"]
end)

TeleportProShop.MouseButton1Down:connect(function()   
    local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
    uTorso.CFrame = Waypoints["Tool Shop 2"]
end)

TeleportMegaMemory.MouseButton1Down:connect(function()  
    local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
    uTorso.CFrame = Waypoints["CC2"]  
end)

TeleportNightMemory.MouseButton1Down:connect(function() 
    local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
    uTorso.CFrame = Waypoints["CC3"]
end)

TeleportExtremeMemory.MouseButton1Down:connect(function()      
    local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
    uTorso.CFrame = Waypoints["CC4"]  
end)

TeleportDiamondMask.MouseButton1Down:connect(function()
    local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
    uTorso.CFrame = Waypoints["CC15"]
end)

TeleportDemonMask.MouseButton1Down:connect(function()
    local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
    uTorso.CFrame = Waypoints["CC13"]
end)

TeleportGummyMask.MouseButton1Down:connect(function()
    local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
    uTorso.CFrame = Waypoints["CC14"]
end)

TeleportKingAmulet.MouseButton1Down:connect(function()
    local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
    uTorso.CFrame = Waypoints["CC8"] 
end)

TeleportInstantSell.MouseButton1Down:connect(function()
    local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
    uTorso.CFrame = Waypoints["CC1"]
end)

TeleportStarHall.MouseButton1Down:connect(function()
    local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
    uTorso.CFrame = Waypoints["CC5"]
end)

TeleportAnt.MouseButton1Down:connect(function()
    local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
    uTorso.CFrame = Waypoints["Ant"]    
end)

local AutoDigToggle = false

AutoDig.MouseButton1Down:connect(function()
      if AutoDigToggle == false then
      AutoDigToggle = true 
      AutoDig.BackgroundColor3 = red
      while AutoDigToggle do
            wait(0.5)
            
 for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
      if v:IsA("Tool") then 
            v.ClickEvent:FireServer()
      
      end
            end
            end
else 
      AutoDigToggle = false
      AutoDig.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
end
end)

NoclipFeature.MouseButton1Down:Connect(function()
    if noclip == false then 
        noclip = true
        NoclipFeature.BackgroundColor3 = red
    else
        noclip = false
        NoclipFeature.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    end
end)

local isSpeed = false
local uis=game:GetService("UserInputService")
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

local tpwindy = false
KillWindy.MouseButton1Down:connect(function(o)
      
      if tpwindy == false then 
      tpwindy = true 
      KillWindy.BackgroundColor3 = red
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
      KillWindy.BackgroundColor3 = Color3.fromRGB(0,0,0)
end
end)

local killcoconut = false
KIllCoconutCrab.MouseButton1Down:connect(function()
      if killcoconut == false then 
        KIllCoconutCrab.BackgroundColor3 = red
      killcoconut = true 
      noclip = true
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-256.375092, 112.547897, 500.457794, 0.998952866, -0.0450557806, 0.00794458669, -8.64538929e-09, 0.173648775, 0.98480767, -0.0457508452, -0.98377645, 0.173466951)
else 
      killcoconut = false 
      noclip = false
      KIllCoconutCrab.BackgroundColor3 = Color3.fromRGB(0,0,0)
end
end)

local killtunell = false
KillTunnelBear.MouseButton1Down:connect(function(j)
      if killtunell == false then
      local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = Waypoints["Tunnel Bear"]
      killtunell = true 
      KillTunnelBear.BackgroundColor3 = red 
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
      KillTunnelBear.BackgroundColor3 = Color3.fromRGB(0,0,0)
end
end)

local killvici = false
KillVicious.MouseButton1Down:connect(function(q)
      if killvici == false then
      killvici = true 
      KillVicious.BackgroundColor3 =red
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
      KillVicious.BackgroundColor3 = Color3.fromRGB(0,0,0)
      end
end)

EquipDemonMask.MouseButton1Down:connect(function()
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
EquipDemonMask.MouseButton1Down:connect(function()
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

DaniNicolaeChampionsLeague990030171.MouseButton1Down:connect(function()
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

EquipGummyMask.MouseButton1Down:connect(function()
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

local tornado = false
BringTornado.MouseButton1Down:connect(function()
if tornado == false then 
tornado = true 
BringTornado.BackgroundColor3 = red
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
      BringTornado.BackgroundColor3 = Color3.fromRGB(0,0,0)
end
end)

AutoTopBooster.MouseButton1Down:connect(function() 
        local a = "Field Booster"
        local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
        Event:FireServer(a)
            while wait(10) do 
        local a = "Field Booster"
        local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
        Event:FireServer(a)
    end    
end)

AutoBlueBooster.MouseButton1Down:connect(function()
        local a = "Blue Field Booster"
        local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
        Event:FireServer(a)
        while wait(10) do
        local a = "Blue Field Booster"
        local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
        Event:FireServer(a)
    end
end)

AutoRedBooster.MouseButton1Down:connect(function()
        local a = "Red Field Booster"
        local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
        Event:FireServer(a)
        while wait(10) do
        local a = "Red Field Booster"
        local Event = game:GetService("ReplicatedStorage").Events.ToyEvent
        Event:FireServer(a)
    end
end)

AutoFarmLeaves.MouseButton1Down:connect(function()
    if afksnail == false then 
    afksnail = true 
    AutoFarmLeaves.BackgroundColor3 = red 
    local test = "C"
    local tweenservice = game:GetService("TweenService")
    local plr = game.Players.LocalPlayer
    local info = TweenInfo.new(0.1) -- change to how long it takes to get to the item (in seconds)
    local item = {}
    while afksnail do
    wait(1)    
    for _,v in pairs(game.workspace:GetDescendants()) do
    if string.find(v.Name,"LeafBurst") then
    wait(0.1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame * CFrame.new(0,0,0)
    wait(0.1)
    end
    end
    for k,v in pairs(workspace.Collectibles:GetChildren()) do
     if tostring(v) == tostring(game.Players.LocalPlayer.Name) or tostring(v) == test then
                            if (v.Position-plr.Character.HumanoidRootPart.Position).magnitude <= 60 then
    item.CFrame = CFrame.new(v.Position.x,plr.Character.HumanoidRootPart.Position.y,v.Position.z)
    local Tween = tweenservice:Create(plr.Character.HumanoidRootPart, info, item)
    wait(0.1)
    Tween:Play()
    end
    end
    end
    end
    else 
    afksnail = false 
    AutoFarmLeaves.BackgroundColor3 = Color3.fromRGB(0,0,0) 
    end
end)

DiscordButton.MouseButton1Down:Connect(function()
    setclipboard("https://discord.gg/Xt4ppEqJY7")
end)

isRainbow = false
RainbowMode.MouseButton1Down:Connect(function()
    if isRainbow == false then
        nobodikunfu:play()
          isRainbow = true
          wait(3)
          while true do
                for i = 1,255 do
                      TeleportTo32fdba.TextColor3 =  Color3.fromHSV(i/255,1,1)
                      TeleportToSalutDaniCeFaci.TextColor3 =  Color3.fromHSV(i/255,1,1)
                      Teleporttokillertorchi.TextColor3 =  Color3.fromHSV(i/255,1,1)
                      RainbowMode.TextColor3 =  Color3.fromHSV(i/255,1,1)
                      VersionButton.TextColor3 =  Color3.fromHSV(i/255,1,1)
                      Credits.TextColor3 =  Color3.fromHSV(i/255,1,1)
                      InformationsFrame.BackgroundColor3 =  Color3.fromHSV(i/255,1,1)
                      Gradient.BackgroundColor3 =  Color3.fromHSV(i/255,1,1)
                      
                      wait(0.1)
                end
          end
    else
          if isRainbow == true then
                print("Rainbow is already activated. (Anti Epilepsy!)")
          end
    end
end)

MusicPlay.MouseButton1Down:connect(function()
    SULEYMAN:Stop()
    CURA:Stop()
    JadorMireasa:Stop()
    RegiiRomaniei:Stop()
    Ambanidemaenerveaza:Stop()
    NicolaeGutaBaterie:Stop()
    NicolaeGutaGIGOLO:Stop()
    LinoJadorDaumoda:Stop()
    NicolaeGutaDiamantele:Stop()
    JadorIndiferenta:Stop()
    JadorLasatiosabea:Stop()
    JadorNuamsomn:Stop()
    NicolaeGutaLamamaia:Stop()
    DaniNicolaeChampionsLeague:Stop()
    NicolaeGutaLoculunu:Stop()
end)

local isMenuON = true
uis.InputBegan:connect(function(key)
    if key.KeyCode==Enum.KeyCode.Insert then
          if isMenuON==true then
                isMenuON = false
                ScreenGui.Enabled = false
          else if isMenuON==false then
                isMenuON = true
                ScreenGui.Enabled = true
          end
          end
    end
end)

CancelHoneyMaking.MouseButton1Down:Connect(
    function()

        TPTimeToggle = false
        act6temp = true
        local minutes = inputMinutes
        local seconds = inputSeconds

    end)


----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
-- long shitass code
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------





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
      AutoDispenser.BackgroundColor3 = Color3.fromRGB(0,0,0) 
end
end)


-- another long shitass code
AutoQuest.MouseButton1Down:connect(function()
    if act5 == true then
    act5 = false
    AutoQuest.BackgroundColor3 = Color3.fromRGB(0,0,1)
    AutoQuest.Text = "Auto Quest"
    else
    act5 = true
    AutoQuest.BackgroundColor3 = red
    AutoQuest.Text = "Auto Quest"
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
    AutoQuest.Text = "Done"
    wait(1)
    AutoQuest.Text = "Auto Quest"
    until not act5
    end
end)

    print("Version Release 1.0.0")
    print("+++ Rewrited whole cheat.")
    print("+ New sexy menu")
    print("+ Added music ScrollingBox (manele)")
    print("+ Improved AutoFarming.")
    print("+ and more")
    print("~ Fixed TONS of bugs.")
    print("--------------------------------------------------")
    print("Version Release 1.0.1")
    print("~ Bugs Fixed")
    print("--------------------------------------------------")
