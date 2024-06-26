local PlayerGui = game:GetService("Players").LocalPlayer.PlayerGui
local ReplicatedStorage = game:GetService("ReplicatedStorage")

ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = PlayerGui
ScreenGui.Name = "scriptPanel"
ScreenGui.ResetOnSpawn = false
ScreenGui.DisplayOrder = 10
ScreenGui.IgnoreGuiInset = true

function TeleportTo(placeCFrame)
	local plyr = game.Players.LocalPlayer
	if plyr.Character then
		plyr.Character.HumanoidRootPart.CFrame = placeCFrame
	end
end

scriptPanel = Instance.new("Frame")
scriptPanel.Parent = ScreenGui
scriptPanel.AnchorPoint = Vector2.new(.5,.5)
scriptPanel.BackgroundColor3 = Color3.new(0,0,0)
scriptPanel.BorderColor3 = Color3.new(.1,.2,.25)
scriptPanel.Position = UDim2.new(.5,0,.5,8)
scriptPanel.Size = UDim2.new(.62,0,.75,0)
scriptPanel.BackgroundTransparency = .25

scriptPanelCorner = Instance.new("UICorner")
scriptPanelCorner.Parent = scriptPanel

scriptPanelConstraint = Instance.new("UISizeConstraint")
scriptPanelConstraint.Parent = scriptPanel
scriptPanelConstraint.MaxSize = Vector2.new(1200,900)
scriptPanelConstraint.MinSize = Vector2.new(482,0)

scriptPanelBackground = Instance.new("ImageButton")
scriptPanelBackground.Name = "Background"
scriptPanelBackground.Parent = scriptPanel
scriptPanelBackground.Image = ""
scriptPanelBackground.BackgroundTransparency = 1
scriptPanelBackground.Position = UDim2.new(0,0,0,0)
scriptPanelBackground.Size = UDim2.new(1,0,1,0)
scriptPanelBackground.ZIndex = -999
scriptPanelBackground.ImageColor3 = scriptPanel.BackgroundColor3

scriptPanelBackgroundGradient = Instance.new("ImageLabel")
scriptPanelBackgroundGradient.Name = "Gradient"
scriptPanelBackgroundGradient.Parent = scriptPanelBackground
scriptPanelBackgroundGradient.BackgroundTransparency = 1
scriptPanelBackgroundGradient.BorderColor3 = scriptPanel.BorderColor3
scriptPanelBackgroundGradient.Position = UDim2.new(0,0,.4,0)
scriptPanelBackgroundGradient.Size = UDim2.new(1,0,.6,0)
scriptPanelBackgroundGradient.Image = "rbxassetid://12320989495"
scriptPanelBackgroundGradient.ImageColor3 = Color3.new(.1,1,0)
scriptPanelBackgroundGradient.ImageTransparency = .75
scriptPanelBackgroundGradient.ScaleType = Enum.ScaleType.Tile
scriptPanelBackgroundGradient.TileSize = UDim2.new(1,0,0,6)

scriptPanelBackgroundGradientCorner = Instance.new("UICorner")
scriptPanelBackgroundGradientCorner.Parent = scriptPanelBackgroundGradient
scriptPanelBackgroundGradientGradient = Instance.new("UIGradient")
scriptPanelBackgroundGradientGradient.Parent = scriptPanelBackgroundGradient
scriptPanelBackgroundGradientGradient.Rotation = -90
scriptPanelBackgroundGradientGradient.Transparency = NumberSequence.new(0,1)

scriptPanelTop = Instance.new("Frame")
scriptPanelTop.Parent = scriptPanel
scriptPanelTop.Name = "Top"
scriptPanelTop.BackgroundColor3 = Color3.new(0,0,0)
scriptPanelTop.BackgroundTransparency = .75
scriptPanelTop.BorderColor3 = Color3.new(.1,.2,.25)
scriptPanelTop.Size = UDim2.new(1,0,0,32)

scriptPanelTopCorner = Instance.new("UICorner")
scriptPanelTopCorner.Parent = scriptPanelTop
scriptPanelTopPadding = Instance.new("UIPadding")
scriptPanelTopPadding.Parent = scriptPanelTop
scriptPanelTopPadding.PaddingLeft = UDim.new(0,8)
scriptPanelTopPadding.PaddingRight = UDim.new(0,4)

scriptPanelTopTitle = Instance.new("TextLabel")
scriptPanelTopTitle.Parent = scriptPanelTop
scriptPanelTopTitle.BackgroundColor3 = Color3.new(0,0,0)
scriptPanelTopTitle.BackgroundTransparency = 1
scriptPanelTopTitle.BorderColor3 = Color3.new(.1,.2,.25)
scriptPanelTopTitle.BorderSizePixel = 0
scriptPanelTopTitle.Size = UDim2.new(0,32,1,0)
scriptPanelTopTitle.Text = "ow script"
scriptPanelTopTitle.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
scriptPanelTopTitle.TextColor3 = Color3.new(1,1,1)
scriptPanelTopTitle.TextSize = 24
scriptPanelTopTitle.TextXAlignment = Enum.TextXAlignment.Left

scriptPanelTopTabs = Instance.new("Frame")
scriptPanelTopTabs.Parent = scriptPanelTop
scriptPanelTopTabs.Name = "Tabs"
scriptPanelTopTabs.AnchorPoint = Vector2.new(1,0)
scriptPanelTopTabs.BackgroundTransparency = 1
scriptPanelTopTabs.BorderColor3 = Color3.new(.1,.2,.25)
scriptPanelTopTabs.BorderSizePixel = 1
scriptPanelTopTabs.Position = UDim2.new(1,0,0,0)
scriptPanelTopTabs.Size = UDim2.new(1,-120,1,0)

scriptPanelTopTabsPadding = Instance.new("UIPadding")
scriptPanelTopTabsPadding.Parent = scriptPanelTopTabs
scriptPanelTopTabsPadding.PaddingBottom = UDim.new(0,4)
scriptPanelTopTabsPadding.PaddingTop = UDim.new(0,4)

scriptPanelTopTabsLayout = Instance.new("UIGridLayout")
scriptPanelTopTabsLayout.Parent = scriptPanelTopTabs
scriptPanelTopTabsLayout.CellPadding = UDim2.new(0,6,0,0)
scriptPanelTopTabsLayout.CellSize = UDim2.new(.15,0,1,0)
scriptPanelTopTabsLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
scriptPanelTopTabsLayout.SortOrder = Enum.SortOrder.LayoutOrder



PlayerTabButton = Instance.new("TextButton")
PlayerTabButton.Parent = scriptPanelTopTabs
PlayerTabButton.Name = "PlayerTab"
PlayerTabButton.LayoutOrder = 1
PlayerTabButton.BackgroundColor3 = Color3.new(.3,1,.3)
PlayerTabButton.BackgroundTransparency = .8
PlayerTabButton.BorderColor3 = Color3.new(.1,.2,.25)
PlayerTabButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
PlayerTabButton.Text = "player"
PlayerTabButton.TextColor3 = Color3.new(1,1,1)
PlayerTabButton.TextSize = 18

PlayerTabButtonCorner = Instance.new("UICorner")
PlayerTabButtonCorner.Parent = PlayerTabButton
PlayerTabButtonCorner.CornerRadius = UDim.new(0,4)
PlayerTabButtonOutline = Instance.new("UIStroke")
PlayerTabButtonOutline.Parent = PlayerTabButton
PlayerTabButtonOutline.Name = "outline"
PlayerTabButtonOutline.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
PlayerTabButtonOutline.Color = Color3.new(1,1,1)
PlayerTabButtonOutline.Transparency = .5
--PlayerTabButtonOutline.Visible = false



ShopTabButton = Instance.new("TextButton")
ShopTabButton.Parent = scriptPanelTopTabs
ShopTabButton.Name = "ShopTab"
ShopTabButton.LayoutOrder = 3
ShopTabButton.BackgroundColor3 = Color3.new(.3,1,.3)
ShopTabButton.BackgroundTransparency = .8
ShopTabButton.BorderColor3 = Color3.new(.1,.2,.25)
ShopTabButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
ShopTabButton.Text = "shop"
ShopTabButton.TextColor3 = Color3.new(1,1,1)
ShopTabButton.TextSize = 18

ShopTabButtonCorner = Instance.new("UICorner")
ShopTabButtonCorner.Parent = ShopTabButton
ShopTabButtonCorner.CornerRadius = UDim.new(0,4)
ShopTabButtonOutline = Instance.new("UIStroke")
ShopTabButtonOutline.Parent = ShopTabButton
ShopTabButtonOutline.Name = "outline"
ShopTabButtonOutline.Thickness = 0
ShopTabButtonOutline.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
ShopTabButtonOutline.Color = Color3.new(1,1,1)
ShopTabButtonOutline.Transparency = .5
--ShopTabButtonOutline.Visible = false



GameTabButton = Instance.new("TextButton")
GameTabButton.Parent = scriptPanelTopTabs
GameTabButton.Name = "GameTab"
GameTabButton.LayoutOrder = 2
GameTabButton.BackgroundColor3 = Color3.new(.3,1,.3)
GameTabButton.BackgroundTransparency = .8
GameTabButton.BorderColor3 = Color3.new(.1,.2,.25)
GameTabButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
GameTabButton.Text = "game"
GameTabButton.TextColor3 = Color3.new(1,1,1)
GameTabButton.TextSize = 18

GameTabButtonCorner = Instance.new("UICorner")
GameTabButtonCorner.Parent = GameTabButton
GameTabButtonCorner.CornerRadius = UDim.new(0,4)
GameTabButtonOutline = Instance.new("UIStroke")
GameTabButtonOutline.Parent = GameTabButton
GameTabButtonOutline.Name = "outline"
GameTabButtonOutline.Thickness = 0
GameTabButtonOutline.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
GameTabButtonOutline.Color = Color3.new(1,1,1)
GameTabButtonOutline.Transparency = .5
--GameTabButtonOutline.Visible = false



TeleportTabButton = Instance.new("TextButton")
TeleportTabButton.Parent = scriptPanelTopTabs
TeleportTabButton.Name = "TeleportTab"
TeleportTabButton.LayoutOrder = 4
TeleportTabButton.BackgroundColor3 = Color3.new(.3,1,.3)
TeleportTabButton.BackgroundTransparency = .8
TeleportTabButton.BorderColor3 = Color3.new(.1,.2,.25)
TeleportTabButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
TeleportTabButton.Text = "teleport"
TeleportTabButton.TextColor3 = Color3.new(1,1,1)
TeleportTabButton.TextSize = 18

TeleportTabButtonCorner = Instance.new("UICorner")
TeleportTabButtonCorner.Parent = TeleportTabButton
TeleportTabButtonCorner.CornerRadius = UDim.new(0,4)
TeleportTabButtonOutline = Instance.new("UIStroke")
TeleportTabButtonOutline.Parent = TeleportTabButton
TeleportTabButtonOutline.Name = "outline"
TeleportTabButtonOutline.Thickness = 0
TeleportTabButtonOutline.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
TeleportTabButtonOutline.Color = Color3.new(1,1,1)
TeleportTabButtonOutline.Transparency = .5
--TeleportTabButtonOutline.Visible = false



AutoTabButton = Instance.new("TextButton")
AutoTabButton.Parent = scriptPanelTopTabs
AutoTabButton.Name = "AutoTab"
AutoTabButton.LayoutOrder = 5
AutoTabButton.BackgroundColor3 = Color3.new(.3,1,.3)
AutoTabButton.BackgroundTransparency = .8
AutoTabButton.BorderColor3 = Color3.new(.1,.2,.25)
AutoTabButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
AutoTabButton.Text = "auto"
AutoTabButton.TextColor3 = Color3.new(1,1,1)
AutoTabButton.TextSize = 18

AutoTabButtonCorner = Instance.new("UICorner")
AutoTabButtonCorner.Parent = AutoTabButton
AutoTabButtonCorner.CornerRadius = UDim.new(0,4)
AutoTabButtonOutline = Instance.new("UIStroke")
AutoTabButtonOutline.Parent = AutoTabButton
AutoTabButtonOutline.Name = "outline"
AutoTabButtonOutline.Thickness = 0
AutoTabButtonOutline.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
AutoTabButtonOutline.Color = Color3.new(1,1,1)
AutoTabButtonOutline.Transparency = .5
--AutoTabButtonOutline.Visible = false

ScriptsTabButton = Instance.new("TextButton")
ScriptsTabButton.Parent = scriptPanelTopTabs
ScriptsTabButton.Name = "ScriptsTab"
ScriptsTabButton.LayoutOrder = -1
ScriptsTabButton.BackgroundColor3 = Color3.new(.3,1,.3)
ScriptsTabButton.BackgroundTransparency = .8
ScriptsTabButton.BorderColor3 = Color3.new(.1,.2,.25)
ScriptsTabButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
ScriptsTabButton.Text = "scripts"
ScriptsTabButton.TextColor3 = Color3.new(1,1,1)
ScriptsTabButton.TextSize = 18

ScriptsTabButtonCorner = Instance.new("UICorner")
ScriptsTabButtonCorner.Parent = ScriptsTabButton
ScriptsTabButtonCorner.CornerRadius = UDim.new(0,4)
ScriptsTabButtonOutline = Instance.new("UIStroke")
ScriptsTabButtonOutline.Parent = ScriptsTabButton
ScriptsTabButtonOutline.Name = "outline"
ScriptsTabButtonOutline.Thickness = 0
ScriptsTabButtonOutline.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
ScriptsTabButtonOutline.Color = Color3.new(1,1,1)
ScriptsTabButtonOutline.Transparency = .5
--ScriptsTabButtonOutline.Visible = false



TabContainer = Instance.new("Frame")
TabContainer.Parent = scriptPanel
TabContainer.Name = "Tabs"
TabContainer.AnchorPoint = Vector2.new(0,1)
TabContainer.BorderColor3 = Color3.new(.1,.2,.25)
TabContainer.BackgroundTransparency = 1
TabContainer.Position = UDim2.new(0,0,1,0)
TabContainer.Size = UDim2.new(1,0,1,-32)
TabContainer.ClipsDescendants = true
TabContainer.Active = false










PlayerTab = Instance.new("ScrollingFrame")
PlayerTab.Parent = TabContainer
PlayerTab.Name = "Player Tab"
PlayerTab.BackgroundTransparency = 1
PlayerTab.BorderSizePixel = 0
PlayerTab.Size = UDim2.new(1,0,1,0)
PlayerTab.CanvasSize = UDim2.new(0,0,1,0)
PlayerTab.AutomaticCanvasSize = Enum.AutomaticSize.Y
PlayerTab.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
PlayerTab.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
PlayerTab.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
PlayerTab.ElasticBehavior = Enum.ElasticBehavior.Always
PlayerTab.ScrollBarImageTransparency = .75
PlayerTab.ScrollBarThickness = 6
PlayerTab.ScrollingDirection = Enum.ScrollingDirection.Y
PlayerTab.ClipsDescendants = true

PlayerTabLayout = Instance.new("UIListLayout")
PlayerTabLayout.Parent = PlayerTab
PlayerTabLayout.Padding = UDim.new(0,12)
PlayerTabLayout.FillDirection = Enum.FillDirection.Vertical
PlayerTabLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
PlayerTabLayout.SortOrder = Enum.SortOrder.LayoutOrder
PlayerTabLayout.VerticalAlignment = Enum.VerticalAlignment.Top
PlayerTabPadding = Instance.new("UIPadding")
PlayerTabPadding.Parent = PlayerTab
PlayerTabPadding.PaddingBottom = UDim.new(0,8)
PlayerTabPadding.PaddingLeft = UDim.new(0,8)
PlayerTabPadding.PaddingRight = UDim.new(0,8)
PlayerTabPadding.PaddingTop = UDim.new(0,8)

PlayerTabInfo = Instance.new("Frame")
PlayerTabInfo.Parent = PlayerTab
PlayerTabInfo.Name = "top"
PlayerTabInfo.BackgroundTransparency = 1
PlayerTabInfo.Position = UDim2.new(.5,0,0,8)
PlayerTabInfo.Size = UDim2.new(1,-120,0,100)
PlayerTabInfo.Active = false


PlayerTabCurrentPlayer = Instance.new("Frame")
PlayerTabCurrentPlayer.Parent = PlayerTabInfo
PlayerTabCurrentPlayer.Name = "Player"
PlayerTabCurrentPlayer.AnchorPoint = Vector2.new(-1,0)
PlayerTabCurrentPlayer.BackgroundColor3 = Color3.new(0,0,0)
PlayerTabCurrentPlayer.BackgroundTransparency = .75
PlayerTabCurrentPlayer.BorderColor3 = Color3.new(.1,.2,.25)
PlayerTabCurrentPlayer.BorderSizePixel = 1
PlayerTabCurrentPlayer.Size = UDim2.new(1,0,0,96)
PlayerTabCurrentPlayer.ZIndex = -5
PlayerTabCurrentPlayerCorner = Instance.new("UICorner")
PlayerTabCurrentPlayerCorner.Parent = PlayerTabCurrentPlayer
PlayerTabCurrentPlayerCorner.CornerRadius = UDim.new(0,4)
PlayerTabCurrentPlayerPadding = Instance.new("UIPadding")
PlayerTabCurrentPlayerPadding.Parent = PlayerTabCurrentPlayer
PlayerTabCurrentPlayerPadding.PaddingBottom = UDim.new(0,8)
PlayerTabCurrentPlayerPadding.PaddingLeft = UDim.new(0,8)
PlayerTabCurrentPlayerPadding.PaddingRight = UDim.new(0,8)
PlayerTabCurrentPlayerPadding.PaddingTop = UDim.new(0,8)

PlayerTabCurrentPlayerInfo = Instance.new("Frame")
PlayerTabCurrentPlayerInfo.Parent = PlayerTabCurrentPlayer
PlayerTabCurrentPlayerInfo.Name = "info"
PlayerTabCurrentPlayerInfo.AnchorPoint = Vector2.new(1,0)
PlayerTabCurrentPlayerInfo.BackgroundTransparency = 1
PlayerTabCurrentPlayerInfo.BorderColor3 = Color3.new(.1,.2,.25)
PlayerTabCurrentPlayerInfo.BorderSizePixel = 1
PlayerTabCurrentPlayerInfo.Position = UDim2.new(1,0,0,0)
PlayerTabCurrentPlayerInfo.Size = UDim2.new(1,-88,1,0)
PlayerTabCurrentPlayerInfo.Active = false

PlayerTabCurrentPlayerInfoLayout = Instance.new("UIListLayout")
PlayerTabCurrentPlayerInfoLayout.Parent = PlayerTabCurrentPlayerInfo
PlayerTabCurrentPlayerInfoLayout.Padding = UDim.new(0,10)
PlayerTabCurrentPlayerInfoLayout.SortOrder = Enum.SortOrder.LayoutOrder
PlayerTabCurrentPlayerInfoLayout.VerticalAlignment = Enum.VerticalAlignment.Center

CurrentPlayerInfoName = Instance.new("TextLabel")
CurrentPlayerInfoName.Parent = PlayerTabCurrentPlayerInfo
CurrentPlayerInfoName.Name = "name"
CurrentPlayerInfoName.LayoutOrder = 1
CurrentPlayerInfoName.AnchorPoint = Vector2.new(1,0)
CurrentPlayerInfoName.BackgroundTransparency = .95
CurrentPlayerInfoName.BorderColor3 = Color3.new(.1,.2,.25)
CurrentPlayerInfoName.BorderSizePixel = 1
CurrentPlayerInfoName.Size = UDim2.new(1,0,0,20)
CurrentPlayerInfoName.RichText = true
CurrentPlayerInfoName.TextXAlignment = Enum.TextXAlignment.Left
CurrentPlayerInfoName.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
CurrentPlayerInfoName.Text = "    <font color ='rgb(138, 255, 66)' >".. game.Players.LocalPlayer.DisplayName .."</font> <font color='rgb(65, 120, 31)'>(@".. game.Players.LocalPlayer.Name ..")</font>"
CurrentPlayerInfoName.TextSize = 16
CurrentPlayerInfoName.TextTransparency = .5

CurrentPlayerInfoID = Instance.new("TextLabel")
CurrentPlayerInfoID.Parent = PlayerTabCurrentPlayerInfo
CurrentPlayerInfoID.Name = "id"
CurrentPlayerInfoID.LayoutOrder = 2
CurrentPlayerInfoID.AnchorPoint = Vector2.new(1,0)
CurrentPlayerInfoID.BackgroundTransparency = .95
CurrentPlayerInfoID.BorderColor3 = Color3.new(.1,.2,.25)
CurrentPlayerInfoID.BorderSizePixel = 1
CurrentPlayerInfoID.Size = UDim2.new(1,0,0,20)
CurrentPlayerInfoID.RichText = true
CurrentPlayerInfoID.TextXAlignment = Enum.TextXAlignment.Left
CurrentPlayerInfoID.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
CurrentPlayerInfoID.Text = "    id: <font color='#8aff42'>".. game.Players.LocalPlayer.UserId .."</font>"
CurrentPlayerInfoID.TextColor3 = Color3.new(1,1,1)
CurrentPlayerInfoID.TextSize = 16
CurrentPlayerInfoID.TextTransparency = .5

CurrentPlayerInfoAge = Instance.new("TextLabel")
CurrentPlayerInfoAge.Parent = PlayerTabCurrentPlayerInfo
CurrentPlayerInfoAge.Name = "age"
CurrentPlayerInfoAge.LayoutOrder = 3
CurrentPlayerInfoAge.AnchorPoint = Vector2.new(1,0)
CurrentPlayerInfoAge.BackgroundTransparency = .95
CurrentPlayerInfoAge.BorderColor3 = Color3.new(.1,.2,.25)
CurrentPlayerInfoAge.BorderSizePixel = 1
CurrentPlayerInfoAge.Size = UDim2.new(1,0,0,20)
CurrentPlayerInfoAge.RichText = true
CurrentPlayerInfoAge.TextXAlignment = Enum.TextXAlignment.Left
CurrentPlayerInfoAge.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
CurrentPlayerInfoAge.Text = "    account age: <font color='#8aff42'>account age (fixing this)</font>"
CurrentPlayerInfoAge.TextColor3 = Color3.new(1,1,1)
CurrentPlayerInfoAge.TextSize = 16
CurrentPlayerInfoAge.TextTransparency = .5

PlayerTabCurrentPlayerImage = Instance.new("ImageLabel")
PlayerTabCurrentPlayerImage.Parent = PlayerTabCurrentPlayer
PlayerTabCurrentPlayerImage.Name = "avatar"
PlayerTabCurrentPlayerImage.BackgroundTransparency = .95
PlayerTabCurrentPlayerImage.BorderColor3 = Color3.new(.1,.2,.25)
PlayerTabCurrentPlayerImage.BorderSizePixel = 1
PlayerTabCurrentPlayerImage.Position = UDim2.new(0,0,0,0)
PlayerTabCurrentPlayerImage.Size = UDim2.new(0,80,1,0)
PlayerTabCurrentPlayerImage.Image = game.Players:GetUserThumbnailAsync(game.Players.LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100)
PlayerTabCurrentPlayerImageCorner = Instance.new("UICorner")
PlayerTabCurrentPlayerImageCorner.Parent = PlayerTabCurrentPlayerImage
PlayerTabCurrentPlayerImageCorner.CornerRadius = UDim.new(0,8)
PlayerTabCurrentPlayerImagePadding = Instance.new("UIPadding")
PlayerTabCurrentPlayerImagePadding.Parent = PlayerTabCurrentPlayerImage
PlayerTabCurrentPlayerImagePadding.PaddingBottom = UDim.new(0,3)
PlayerTabCurrentPlayerImagePadding.PaddingLeft = UDim.new(0,3)
PlayerTabCurrentPlayerImagePadding.PaddingRight = UDim.new(0,3)
PlayerTabCurrentPlayerImagePadding.PaddingTop = UDim.new(0,3)

PlayerTabPlayerStatus = Instance.new("Frame")
PlayerTabPlayerStatus.Parent = PlayerTab
PlayerTabPlayerStatus.Name = "status"
PlayerTabPlayerStatus.AnchorPoint = Vector2.new(.5,0)
PlayerTabPlayerStatus.AutomaticSize = Enum.AutomaticSize.Y
PlayerTabPlayerStatus.BackgroundTransparency = 1
PlayerTabPlayerStatus.BorderColor3 = Color3.new(.1,.2,.25)
PlayerTabPlayerStatus.BorderSizePixel = 1
PlayerTabPlayerStatus.Position = UDim2.new(.5,0,1,-8)
PlayerTabPlayerStatus.Size = UDim2.new(1,-120,0,64)

PlayerTabPlayerStatusLayout = Instance.new("UIGridLayout")
PlayerTabPlayerStatusLayout.Parent = PlayerTabPlayerStatus
PlayerTabPlayerStatusLayout.CellPadding = UDim2.new(.02,0,0,5)
PlayerTabPlayerStatusLayout.CellSize = UDim2.new(.49,0,0,28)
PlayerTabPlayerStatusLayout.SortOrder = Enum.SortOrder.LayoutOrder
PlayerTabPlayerStatusLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

PlayerStatusKill = Instance.new("TextButton")
PlayerStatusKill.Parent = PlayerTabPlayerStatus
PlayerStatusKill.Name = "kill"
PlayerStatusKill.LayoutOrder = 1
PlayerStatusKill.BackgroundColor3 = Color3.new(0,0,0)
PlayerStatusKill.BackgroundTransparency = .75
PlayerStatusKill.BorderColor3 = Color3.new(.1,.2,.25)
PlayerStatusKill.BorderSizePixel = 1
PlayerStatusKill.Size = UDim2.new(1,0,0,28)
PlayerStatusKill.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
PlayerStatusKill.Text = ""

PlayerStatusKillCorner = Instance.new("UICorner")
PlayerStatusKillCorner.Parent = PlayerStatusKill
PlayerStatusKillCorner.CornerRadius = UDim.new(0,4)
PlayerStatusKillLayout = Instance.new("UIListLayout")
PlayerStatusKillLayout.Parent = PlayerStatusKill
PlayerStatusKillLayout.Padding = UDim.new(0,4)
PlayerStatusKillLayout.FillDirection = Enum.FillDirection.Horizontal
PlayerStatusKillLayout.SortOrder = Enum.SortOrder.LayoutOrder
PlayerStatusKillLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
PlayerStatusKillLayout.VerticalAlignment = Enum.VerticalAlignment.Center

PlayerStatusKillIcon = Instance.new("ImageLabel")
PlayerStatusKillIcon.Parent = PlayerStatusKill
PlayerStatusKillIcon.BackgroundTransparency = 1
PlayerStatusKillIcon.BorderColor3 = Color3.new(.1,.2,.25)
PlayerStatusKillIcon.BorderSizePixel = 1
PlayerStatusKillIcon.Size = UDim2.new(0,20,0,20)
PlayerStatusKillIcon.LayoutOrder = 2
PlayerStatusKillIcon.Image = "rbxassetid://10432979417"
PlayerStatusKillIcon.ImageTransparency = .25
PlayerStatusKillIcon.TileSize = UDim2.new(1,0,1,0)

PlayerStatusKillLabel = Instance.new("TextLabel")
PlayerStatusKillLabel.Parent = PlayerStatusKill
PlayerStatusKillLabel.AnchorPoint = Vector2.new(.5,.5)
PlayerStatusKillLabel.AutomaticSize = Enum.AutomaticSize.X
PlayerStatusKillLabel.BackgroundTransparency = 1
PlayerStatusKillLabel.BorderColor3 = Color3.new(.1,.2,.25)
PlayerStatusKillLabel.BorderSizePixel = 1
PlayerStatusKillLabel.Size = UDim2.new(0,0,1,0)
PlayerStatusKillLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
PlayerStatusKillLabel.Text = "kill"
PlayerStatusKillLabel.TextColor3 = Color3.new(1,1,1)
PlayerStatusKillLabel.TextSize = 18
PlayerStatusKillLabel.TextTransparency = .25
PlayerStatusKillLabel.TextXAlignment = Enum.TextXAlignment.Center
PlayerStatusKillLabel.TextYAlignment = Enum.TextYAlignment.Center


PlayerStatusRespawn = Instance.new("TextButton")
PlayerStatusRespawn.Parent = PlayerTabPlayerStatus
PlayerStatusRespawn.Name = "respawn"
PlayerStatusRespawn.LayoutOrder = 2
PlayerStatusRespawn.BackgroundColor3 = Color3.new(0,0,0)
PlayerStatusRespawn.BackgroundTransparency = .75
PlayerStatusRespawn.BorderColor3 = Color3.new(.1,.2,.25)
PlayerStatusRespawn.BorderSizePixel = 1
PlayerStatusRespawn.Size = UDim2.new(1,0,0,28)
PlayerStatusRespawn.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
PlayerStatusRespawn.Text = ""

PlayerStatusRespawnCorner = Instance.new("UICorner")
PlayerStatusRespawnCorner.Parent = PlayerStatusRespawn
PlayerStatusRespawnCorner.CornerRadius = UDim.new(0,4)
PlayerStatusRespawnLayout = Instance.new("UIListLayout")
PlayerStatusRespawnLayout.Parent = PlayerStatusRespawn
PlayerStatusRespawnLayout.Padding = UDim.new(0,4)
PlayerStatusRespawnLayout.SortOrder = Enum.SortOrder.LayoutOrder
PlayerStatusRespawnLayout.FillDirection = Enum.FillDirection.Horizontal
PlayerStatusRespawnLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
PlayerStatusRespawnLayout.VerticalAlignment = Enum.VerticalAlignment.Center

PlayerStatusRespawnIcon = Instance.new("ImageLabel")
PlayerStatusRespawnIcon.Parent = PlayerStatusRespawn
PlayerStatusRespawnIcon.BackgroundTransparency = 1
PlayerStatusRespawnIcon.BorderColor3 = Color3.new(.1,.2,.25)
PlayerStatusRespawnIcon.BorderSizePixel = 1
PlayerStatusRespawnIcon.Size = UDim2.new(0,20,0,20)
PlayerStatusRespawnIcon.LayoutOrder = 2
PlayerStatusRespawnIcon.Image = "rbxassetid://10432979417"
PlayerStatusRespawnIcon.ImageTransparency = .25
PlayerStatusRespawnIcon.TileSize = UDim2.new(1,0,1,0)

PlayerStatusRespawnLabel = Instance.new("TextLabel")
PlayerStatusRespawnLabel.Parent = PlayerStatusRespawn
PlayerStatusRespawnLabel.AnchorPoint = Vector2.new(.5,.5)
PlayerStatusRespawnLabel.AutomaticSize = Enum.AutomaticSize.X
PlayerStatusRespawnLabel.BackgroundTransparency = 1
PlayerStatusRespawnLabel.BorderColor3 = Color3.new(.1,.2,.25)
PlayerStatusRespawnLabel.BorderSizePixel = 1
PlayerStatusRespawnLabel.Size = UDim2.new(0,0,1,0)
PlayerStatusRespawnLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
PlayerStatusRespawnLabel.Text = "respawn"
PlayerStatusRespawnLabel.TextColor3 = Color3.new(1,1,1)
PlayerStatusRespawnLabel.TextSize = 18
PlayerStatusRespawnLabel.TextTransparency = .25
PlayerStatusRespawnLabel.TextXAlignment = Enum.TextXAlignment.Center
PlayerStatusRespawnLabel.TextYAlignment = Enum.TextYAlignment.Center


PlayerStatusDelete = Instance.new("TextButton")
PlayerStatusDelete.Parent = PlayerTabPlayerStatus
PlayerStatusDelete.Name = "delete"
PlayerStatusDelete.LayoutOrder = 3
PlayerStatusDelete.BackgroundColor3 = Color3.new(0,0,0)
PlayerStatusDelete.BackgroundTransparency = .75
PlayerStatusDelete.BorderColor3 = Color3.new(.1,.2,.25)
PlayerStatusDelete.BorderSizePixel = 1
PlayerStatusDelete.Size = UDim2.new(1,0,0,28)
PlayerStatusDelete.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
PlayerStatusDelete.Text = ""

PlayerStatusDeleteCorner = Instance.new("UICorner")
PlayerStatusDeleteCorner.Parent = PlayerStatusDelete
PlayerStatusDeleteCorner.CornerRadius = UDim.new(0,4)
PlayerStatusDeleteLayout = Instance.new("UIListLayout")
PlayerStatusDeleteLayout.Parent = PlayerStatusDelete
PlayerStatusDeleteLayout.Padding = UDim.new(0,4)
PlayerStatusDeleteLayout.SortOrder = Enum.SortOrder.LayoutOrder
PlayerStatusDeleteLayout.FillDirection = Enum.FillDirection.Horizontal
PlayerStatusDeleteLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
PlayerStatusDeleteLayout.VerticalAlignment = Enum.VerticalAlignment.Center

PlayerStatusDeleteIcon = Instance.new("ImageLabel")
PlayerStatusDeleteIcon.Parent = PlayerStatusDelete
PlayerStatusDeleteIcon.BackgroundTransparency = 1
PlayerStatusDeleteIcon.BorderColor3 = Color3.new(.1,.2,.25)
PlayerStatusDeleteIcon.BorderSizePixel = 1
PlayerStatusDeleteIcon.Size = UDim2.new(0,20,0,20)
PlayerStatusDeleteIcon.LayoutOrder = 2
PlayerStatusDeleteIcon.Image = "rbxassetid://10432979417"
PlayerStatusDeleteIcon.ImageTransparency = .25
PlayerStatusDeleteIcon.TileSize = UDim2.new(1,0,1,0)

PlayerStatusDeleteLabel = Instance.new("TextLabel")
PlayerStatusDeleteLabel.Parent = PlayerStatusDelete
PlayerStatusDeleteLabel.AnchorPoint = Vector2.new(.5,.5)
PlayerStatusDeleteLabel.AutomaticSize = Enum.AutomaticSize.X
PlayerStatusDeleteLabel.BackgroundTransparency = 1
PlayerStatusDeleteLabel.BorderColor3 = Color3.new(.1,.2,.25)
PlayerStatusDeleteLabel.BorderSizePixel = 1
PlayerStatusDeleteLabel.Size = UDim2.new(0,0,1,0)
PlayerStatusDeleteLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
PlayerStatusDeleteLabel.Text = "delete"
PlayerStatusDeleteLabel.TextColor3 = Color3.new(1,1,1)
PlayerStatusDeleteLabel.TextSize = 18
PlayerStatusDeleteLabel.TextTransparency = .25
PlayerStatusDeleteLabel.TextXAlignment = Enum.TextXAlignment.Center
PlayerStatusDeleteLabel.TextYAlignment = Enum.TextYAlignment.Center


PlayerStatusInvis = Instance.new("TextButton")
PlayerStatusInvis.Parent = PlayerTabPlayerStatus
PlayerStatusInvis.Name = "invis"
PlayerStatusInvis.LayoutOrder = 4
PlayerStatusInvis.BackgroundColor3 = Color3.new(0,0,0)
PlayerStatusInvis.BackgroundTransparency = .75
PlayerStatusInvis.BorderColor3 = Color3.new(.1,.2,.25)
PlayerStatusInvis.BorderSizePixel = 1
PlayerStatusInvis.Size = UDim2.new(1,0,0,28)
PlayerStatusInvis.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
PlayerStatusInvis.Text = ""

PlayerStatusInvisCorner = Instance.new("UICorner")
PlayerStatusInvisCorner.Parent = PlayerStatusInvis
PlayerStatusInvisCorner.CornerRadius = UDim.new(0,4)
PlayerStatusInvisLayout = Instance.new("UIListLayout")
PlayerStatusInvisLayout.Parent = PlayerStatusInvis
PlayerStatusInvisLayout.Padding = UDim.new(0,4)
PlayerStatusInvisLayout.SortOrder = Enum.SortOrder.LayoutOrder
PlayerStatusInvisLayout.FillDirection = Enum.FillDirection.Horizontal
PlayerStatusInvisLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
PlayerStatusInvisLayout.VerticalAlignment = Enum.VerticalAlignment.Center

PlayerStatusInvisIcon = Instance.new("ImageLabel")
PlayerStatusInvisIcon.Parent = PlayerStatusInvis
PlayerStatusInvisIcon.BackgroundTransparency = 1
PlayerStatusInvisIcon.BorderColor3 = Color3.new(.1,.2,.25)
PlayerStatusInvisIcon.BorderSizePixel = 1
PlayerStatusInvisIcon.Size = UDim2.new(0,20,0,20)
PlayerStatusInvisIcon.LayoutOrder = 2
PlayerStatusInvisIcon.Image = "rbxassetid://10432979417"
PlayerStatusInvisIcon.ImageTransparency = .25
PlayerStatusInvisIcon.TileSize = UDim2.new(1,0,1,0)

PlayerStatusInvisLabel = Instance.new("TextLabel")
PlayerStatusInvisLabel.Parent = PlayerStatusInvis
PlayerStatusInvisLabel.AnchorPoint = Vector2.new(.5,.5)
PlayerStatusInvisLabel.AutomaticSize = Enum.AutomaticSize.X
PlayerStatusInvisLabel.BackgroundTransparency = 1
PlayerStatusInvisLabel.BorderColor3 = Color3.new(.1,.2,.25)
PlayerStatusInvisLabel.BorderSizePixel = 1
PlayerStatusInvisLabel.Size = UDim2.new(0,0,1,0)
PlayerStatusInvisLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
PlayerStatusInvisLabel.Text = "placeholder"
PlayerStatusInvisLabel.TextColor3 = Color3.new(1,1,1)
PlayerStatusInvisLabel.TextSize = 18
PlayerStatusInvisLabel.TextTransparency = .25
PlayerStatusInvisLabel.TextXAlignment = Enum.TextXAlignment.Center
PlayerStatusInvisLabel.TextYAlignment = Enum.TextYAlignment.Center


PlayerStatusRejoin = Instance.new("TextButton")
PlayerStatusRejoin.Parent = PlayerTab
PlayerStatusRejoin.Name = "rejoin"
PlayerStatusRejoin.LayoutOrder = 4
PlayerStatusRejoin.BackgroundColor3 = Color3.new(.25,.5,.8)
PlayerStatusRejoin.BackgroundTransparency = .75
PlayerStatusRejoin.BorderColor3 = Color3.new(.1,.2,.25)
PlayerStatusRejoin.BorderSizePixel = 1
PlayerStatusRejoin.Size = UDim2.new(1,-120,0,28)
PlayerStatusRejoin.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
PlayerStatusRejoin.Text = ""

PlayerStatusRejoinCorner = Instance.new("UICorner")
PlayerStatusRejoinCorner.Parent = PlayerStatusRejoin
PlayerStatusRejoinCorner.CornerRadius = UDim.new(0,4)
PlayerStatusRejoinLayout = Instance.new("UIListLayout")
PlayerStatusRejoinLayout.Parent = PlayerStatusRejoin
PlayerStatusRejoinLayout.Padding = UDim.new(0,4)
PlayerStatusRejoinLayout.SortOrder = Enum.SortOrder.LayoutOrder
PlayerStatusRejoinLayout.FillDirection = Enum.FillDirection.Horizontal
PlayerStatusRejoinLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
PlayerStatusRejoinLayout.VerticalAlignment = Enum.VerticalAlignment.Center

PlayerStatusRejoinLabel = Instance.new("TextLabel")
PlayerStatusRejoinLabel.Parent = PlayerStatusRejoin
PlayerStatusRejoinLabel.AnchorPoint = Vector2.new(.5,.5)
PlayerStatusRejoinLabel.AutomaticSize = Enum.AutomaticSize.X
PlayerStatusRejoinLabel.BackgroundTransparency = 1
PlayerStatusRejoinLabel.BorderColor3 = Color3.new(.1,.2,.25)
PlayerStatusRejoinLabel.BorderSizePixel = 1
PlayerStatusRejoinLabel.Size = UDim2.new(0,0,1,0)
PlayerStatusRejoinLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
PlayerStatusRejoinLabel.Text = "rejoin server"
PlayerStatusRejoinLabel.TextColor3 = Color3.new(1,1,1)
PlayerStatusRejoinLabel.TextSize = 18
PlayerStatusRejoinLabel.TextTransparency = .25
PlayerStatusRejoinLabel.TextXAlignment = Enum.TextXAlignment.Center
PlayerStatusRejoinLabel.TextYAlignment = Enum.TextYAlignment.Center



PlayerStatusDeleteScript = Instance.new("TextButton")
PlayerStatusDeleteScript.Parent = PlayerTab
PlayerStatusDeleteScript.Name = "delete script"
PlayerStatusDeleteScript.LayoutOrder = 5
PlayerStatusDeleteScript.BackgroundColor3 = Color3.new(.8,0,0)
PlayerStatusDeleteScript.BackgroundTransparency = .75
PlayerStatusDeleteScript.BorderColor3 = Color3.new(.1,.2,.25)
PlayerStatusDeleteScript.BorderSizePixel = 1
PlayerStatusDeleteScript.Size = UDim2.new(1,-120,0,28)
PlayerStatusDeleteScript.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
PlayerStatusDeleteScript.Text = ""

PlayerStatusDeleteScriptCorner = Instance.new("UICorner")
PlayerStatusDeleteScriptCorner.Parent = PlayerStatusDeleteScript
PlayerStatusDeleteScriptCorner.CornerRadius = UDim.new(0,4)
PlayerStatusDeleteScriptLayout = Instance.new("UIListLayout")
PlayerStatusDeleteScriptLayout.Parent = PlayerStatusDeleteScript
PlayerStatusDeleteScriptLayout.Padding = UDim.new(0,4)
PlayerStatusDeleteScriptLayout.SortOrder = Enum.SortOrder.LayoutOrder
PlayerStatusDeleteScriptLayout.FillDirection = Enum.FillDirection.Horizontal
PlayerStatusDeleteScriptLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
PlayerStatusDeleteScriptLayout.VerticalAlignment = Enum.VerticalAlignment.Center

PlayerStatusDeleteScriptLabel = Instance.new("TextLabel")
PlayerStatusDeleteScriptLabel.Parent = PlayerStatusDeleteScript
PlayerStatusDeleteScriptLabel.AnchorPoint = Vector2.new(.5,.5)
PlayerStatusDeleteScriptLabel.AutomaticSize = Enum.AutomaticSize.X
PlayerStatusDeleteScriptLabel.BackgroundTransparency = 1
PlayerStatusDeleteScriptLabel.BorderColor3 = Color3.new(.1,.2,.25)
PlayerStatusDeleteScriptLabel.BorderSizePixel = 1
PlayerStatusDeleteScriptLabel.Size = UDim2.new(0,0,1,0)
PlayerStatusDeleteScriptLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
PlayerStatusDeleteScriptLabel.Text = "delete script"
PlayerStatusDeleteScriptLabel.TextColor3 = Color3.new(1,1,1)
PlayerStatusDeleteScriptLabel.TextSize = 18
PlayerStatusDeleteScriptLabel.TextTransparency = .25
PlayerStatusDeleteScriptLabel.TextXAlignment = Enum.TextXAlignment.Center
PlayerStatusDeleteScriptLabel.TextYAlignment = Enum.TextYAlignment.Center




















GameTab = Instance.new("ScrollingFrame")
GameTab.Parent = TabContainer
GameTab.Name = "Game Tab"
GameTab.Visible = false
GameTab.BackgroundTransparency = 1
GameTab.BorderSizePixel = 0
GameTab.CanvasSize = UDim2.new(0,0,1,0)
GameTab.AutomaticCanvasSize = Enum.AutomaticSize.Y
GameTab.Size = UDim2.new(1,0,1,0)
GameTab.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
GameTab.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
GameTab.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
GameTab.ElasticBehavior = Enum.ElasticBehavior.Always
GameTab.ScrollBarImageTransparency = .75
GameTab.ScrollBarThickness = 6
GameTab.ScrollingDirection = Enum.ScrollingDirection.Y
GameTab.ClipsDescendants = true

GameTabLayout = Instance.new("UIListLayout")
GameTabLayout.Parent = GameTab
GameTabLayout.Padding = UDim.new(0,12)
GameTabLayout.FillDirection = Enum.FillDirection.Vertical
GameTabLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
GameTabLayout.SortOrder = Enum.SortOrder.LayoutOrder
GameTabLayout.VerticalAlignment = Enum.VerticalAlignment.Top
GameTabPadding = Instance.new("UIPadding")
GameTabPadding.Parent = GameTab
GameTabPadding.PaddingBottom = UDim.new(0,8)
GameTabPadding.PaddingLeft = UDim.new(0,8)
GameTabPadding.PaddingRight = UDim.new(0,8)
GameTabPadding.PaddingTop = UDim.new(0,8)


GameTabEvents = Instance.new("Frame")
GameTabEvents.Parent = GameTab
GameTabEvents.Name = "events"
GameTabEvents.AutomaticSize = Enum.AutomaticSize.Y
--GameTabEvents.BackgroundColor3 = Color3.new(0,0,0)
GameTabEvents.BackgroundTransparency = 1
GameTabEvents.BorderColor3 = Color3.new(.1,.2,.25)
GameTabEvents.BorderSizePixel = 1
GameTabEvents.Size = UDim2.new(1,0,0,0)

GameTabEventsCorner = Instance.new("UICorner")
GameTabEventsCorner.Parent = GameTabEvents
GameTabEventsCorner.CornerRadius = UDim.new(0,4)

GameTabEventsLayout = Instance.new("UIListLayout")
GameTabEventsLayout.Parent = GameTabEvents
GameTabEventsLayout.Padding = UDim.new(0,4)
GameTabEventsLayout.SortOrder = Enum.SortOrder.LayoutOrder
GameTabEventsLayout.FillDirection = Enum.FillDirection.Horizontal
GameTabEventsLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
GameTabEventsLayout.VerticalAlignment = Enum.VerticalAlignment.Center

GameTabEventsPadding = Instance.new("UIPadding")
GameTabEventsPadding.Parent = GameTabEvents
GameTabEventsPadding.PaddingBottom = UDim.new(0,8)
GameTabEventsPadding.PaddingLeft = UDim.new(0,16)
GameTabEventsPadding.PaddingRight = UDim.new(0,8)
GameTabEventsPadding.PaddingTop = UDim.new(0,8)

GameTabCurrentEvent = Instance.new("Frame")
GameTabCurrentEvent.Parent = GameTabEvents
GameTabCurrentEvent.Name = "current event"
GameTabCurrentEvent.BackgroundColor3 = Color3.new(0,0,0)
GameTabCurrentEvent.BackgroundTransparency = .75
GameTabCurrentEvent.BorderColor3 = Color3.new(.1,.2,.25)
GameTabCurrentEvent.BorderSizePixel = 1
GameTabCurrentEvent.Size = UDim2.new(.5,0,0,96)
GameTabCurrentEvent.ZIndex = -5

GameTabCurrentEventCorner = Instance.new("UICorner")
GameTabCurrentEventCorner.Parent = GameTabCurrentEvent
GameTabCurrentEventCorner.CornerRadius = UDim.new(0,4)

GameTabCurrentEventLayout = Instance.new("UIListLayout")
GameTabCurrentEventLayout.Parent = GameTabCurrentEvent
GameTabCurrentEventLayout.Padding = UDim.new(0,16)
GameTabCurrentEventLayout.FillDirection = Enum.FillDirection.Horizontal
GameTabCurrentEventLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
GameTabCurrentEventLayout.VerticalAlignment = Enum.VerticalAlignment.Center

GameTabCurrentEventInfo = Instance.new("Frame")
GameTabCurrentEventInfo.Parent = GameTabCurrentEvent
GameTabCurrentEventInfo.Name = "info"
GameTabCurrentEventInfo.BackgroundTransparency = 1
GameTabCurrentEventInfo.BorderColor3 = Color3.new(.1,.2,.25)
GameTabCurrentEventInfo.BorderSizePixel = 1
GameTabCurrentEventInfo.Size = UDim2.new(.5,-6,1,0)

GameTabCurrentEventTitle = Instance.new("TextLabel")
GameTabCurrentEventTitle.Parent = GameTabCurrentEventInfo
GameTabCurrentEventTitle.Name = "title"
GameTabCurrentEventTitle.AutomaticSize = Enum.AutomaticSize.X
GameTabCurrentEventTitle.BackgroundTransparency = 1
GameTabCurrentEventTitle.BorderColor3 = Color3.new(.1,.2,.25)
GameTabCurrentEventTitle.BorderSizePixel = 1
GameTabCurrentEventTitle.LayoutOrder = 2
GameTabCurrentEventTitle.Size = UDim2.new(1,0,1,0)
GameTabCurrentEventTitle.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
GameTabCurrentEventTitle.Text = "Bloodmoon"
GameTabCurrentEventTitle.TextSize = 32
GameTabCurrentEventTitle.TextColor3 = Color3.new(1,1,1)
GameTabCurrentEventTitle.TextXAlignment = Enum.TextXAlignment.Left

GameTabCurrentEventIcon = Instance.new("ImageLabel")
GameTabCurrentEventIcon.Parent = GameTabCurrentEvent
GameTabCurrentEventIcon.Name = "icon"
GameTabCurrentEventIcon.Size = UDim2.new(.75,0,.75,0)
GameTabCurrentEventIcon.SizeConstraint = Enum.SizeConstraint.RelativeYY
GameTabCurrentEventIcon.Image = "rbxassetid://17446584926"
GameTabCurrentEventIcon.BackgroundColor3 = Color3.new(0,0,0)
GameTabCurrentEventIcon.BackgroundTransparency = .75
GameTabCurrentEventIconCorner = Instance.new("UICorner")
GameTabCurrentEventIconCorner.Parent = GameTabCurrentEventIcon
GameTabCurrentEventIconCorner.CornerRadius = UDim.new(0,4)

GameTabBuyEvent = Instance.new("Frame")
GameTabBuyEvent.Parent = GameTabEvents
GameTabBuyEvent.Name = "buy"
GameTabBuyEvent.LayoutOrder = 1
GameTabBuyEvent.BackgroundTransparency = 1
GameTabBuyEvent.Size = UDim2.new(.5,0,0,96)
GameTabBuyEventLayout = Instance.new("UIListLayout")
GameTabBuyEventLayout.Parent = GameTabBuyEvent
GameTabBuyEventLayout.Padding = UDim.new(0,8)
GameTabBuyEventLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
GameTabBuyEventLayout.SortOrder = Enum.SortOrder.LayoutOrder
GameTabBuyEventLayout.VerticalAlignment = Enum.VerticalAlignment.Center

GameTabBuyEventSelect = Instance.new("TextButton")
GameTabBuyEventSelect.Parent = GameTabBuyEvent
GameTabBuyEventSelect.Name = "select"
GameTabBuyEventSelect.BackgroundColor3 = Color3.new(0,0,0)
GameTabBuyEventSelect.BackgroundTransparency = .75
GameTabBuyEventSelect.Size = UDim2.new(1,-16,.5,-4)
GameTabBuyEventSelect.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
GameTabBuyEventSelect.Text = game:GetService("ReplicatedStorage").values.events.eventCoolDown.Value
GameTabBuyEventSelect.TextColor3 = Color3.new(1,1,1)
GameTabBuyEventSelect.TextSize = 18
GameTabBuyEventSelect.TextTransparency = .25
GameTabBuyEventSelectCorner = Instance.new("UICorner")
GameTabBuyEventSelectCorner.Parent = GameTabBuyEventSelect
GameTabBuyEventSelectCorner.CornerRadius = UDim.new(0,4)
GameTabBuyEventSelect.MouseButton1Click:Connect(function() GameTabBuyEventSelect.Text = ReplicatedStorage.values.events.eventCoolDown.Value end)

GameTabBuyEventFrame = Instance.new("Frame")
GameTabBuyEventFrame.Parent = GameTabBuyEvent
GameTabBuyEventFrame.Size = UDim2.new(1,-16,.5,0)
GameTabBuyEventFrame.BackgroundTransparency = 1
GameTabBuyEventFrame.LayoutOrder = 1
GameTabBuyEventDisable = Instance.new("TextButton")
GameTabBuyEventDisable.Parent = GameTabBuyEventFrame
GameTabBuyEventDisable.Name = "buy"
GameTabBuyEventDisable.LayoutOrder = 1
GameTabBuyEventDisable.BackgroundColor3 = Color3.new(0,0,0)
GameTabBuyEventDisable.BackgroundTransparency = .75
GameTabBuyEventDisable.Position = UDim2.new(0,4,0,0)
GameTabBuyEventDisable.Size = UDim2.new(1,0,1,-4)
GameTabBuyEventDisable.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
GameTabBuyEventDisable.Text = "disable events2"
GameTabBuyEventDisable.TextColor3 = Color3.new(1,1,1)
GameTabBuyEventDisable.TextSize = 18
GameTabBuyEventDisable.TextTransparency = .25
GameTabBuyEventDisableCorner = Instance.new("UICorner")
GameTabBuyEventDisableCorner.Parent = GameTabBuyEventDisable
GameTabBuyEventDisableCorner.CornerRadius = UDim.new(0,4)
GameTabBuyEventDisable.MouseButton1Click:Connect(function()
	ReplicatedStorage.events.game.global.purchase:FireServer("jackpot")
end)



GameTabValues = Instance.new("Frame")
GameTabValues.Parent = GameTab
GameTabValues.Name = "values"
GameTabValues.AutomaticSize = Enum.AutomaticSize.Y
GameTabValues.BackgroundTransparency = 1
GameTabValues.BorderColor3 = Color3.new(.1,.2,.25)
GameTabValues.BorderSizePixel = 1
GameTabValues.LayoutOrder = 2
GameTabValues.Size = UDim2.new(1,0,0,0)

GameTabValuesLayout = Instance.new("UIGridLayout")
GameTabValuesLayout.Parent = GameTabValues
GameTabValuesLayout.CellPadding = UDim2.new(0,6,0,8)
GameTabValuesLayout.CellSize = UDim2.new(.5,-6,0,24)
GameTabValuesLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
GameTabValuesLayout.SortOrder = Enum.SortOrder.LayoutOrder

GameTabValuesTitle = Instance.new("Frame")
GameTabValuesTitle.Parent = GameTab
GameTabValuesTitle.BackgroundTransparency = 1
GameTabValuesTitle.LayoutOrder = 1
GameTabValuesTitle.Size = UDim2.new(1,0,0,24)
GameTabValuesTitleLabel = Instance.new("TextLabel")
GameTabValuesTitleLabel.Parent = GameTabValuesTitle
GameTabValuesTitleLabel.AnchorPoint = Vector2.new(.5,0)
GameTabValuesTitleLabel.BackgroundColor3 = Color3.new(0,0,0)
GameTabValuesTitleLabel. BackgroundTransparency = .75
GameTabValuesTitleLabel.Position = UDim2.new(.5,0,0,0)
GameTabValuesTitleLabel.Size = UDim2.new(.25,0,1,0)
GameTabValuesTitleLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
GameTabValuesTitleLabel.Text = "specific values"
GameTabValuesTitleLabel.TextSize = 18
GameTabValuesTitleLabel.TextColor3 = Color3.new(1,1,1)
GameTabValuesTitleLabel.TextTransparency = .25
GameTabValuesTitleLabelCorner = Instance.new("UICorner")
GameTabValuesTitleLabelCorner.Parent = GameTabValuesTitleLabel
GameTabValuesTitleLabelCorner.CornerRadius = UDim.new(0,4)
--GameTabValuesSprintSpeed = Instance.new("Frame")
--GameTabValuesSprintSpeed.Parent = GameTabValues
--GameTabValuesSprintSpeed.Name = "sprint speed"
--GameTabValuesSprintSpeed.BackgroundColor3 = Color3.new(0,0,0)
--GameTabValuesSprintSpeed.BackgroundTransparency = .5
--GameTabValuesSprintSpeed.BorderColor3 = Color3.new(.1,.2,.25)
--GameTabValuesSprintSpeed.BorderSizePixel = 1
--GameTabValuesSprintSpeedCorner = Instance.new("UICorner")
--GameTabValuesSprintSpeedCorner.Parent = GameTabValuesSprintSpeed
--GameTabValuesSprintSpeedCorner.CornerRadius = UDim.new(0,4)
--GameTabValuesSprintSpeedPadding = Instance.new("UIPadding")
--GameTabValuesSprintSpeedPadding.Parent = GameTabValuesSprintSpeed
--GameTabValuesSprintSpeedPadding.PaddingLeft = UDim.new(0,4)
--GameTabValuesSprintSpeedPadding.PaddingRight = UDim.new(0,4)
--GameTabValuesSprintSpeedTitle = Instance.new("TextLabel")
--GameTabValuesSprintSpeedTitle.Parent = GameTabValuesSprintSpeed
--GameTabValuesSprintSpeedTitle.BackgroundTransparency = 1
--GameTabValuesSprintSpeedTitle.Position = UDim2.new(.5,0,0,0)
--GameTabValuesSprintSpeedTitle.Size = UDim2.new(0,0,1,0)
--GameTabValuesSprintSpeedTitle.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
--GameTabValuesSprintSpeedTitle.Text = "sprint speed"
--GameTabValuesSprintSpeedTitle.TextColor3 = Color3.new(1,1,1)
--GameTabValuesSprintSpeedTitle.TextSize = 18
--GameTabValuesSprintSpeedTitle.TextTransparency = .25

function create_textbox_value(name,default,callback)
	local value = Instance.new("Frame")
	value.Parent = GameTabValues
	value.Name = name
	value.BackgroundColor3 = Color3.new(0,0,0)
	value.BackgroundTransparency = .5
	value.BorderColor3 = Color3.new(.1,.2,.25)
	value.BorderSizePixel = 1
	local valueCorner = Instance.new("UICorner")
	valueCorner.Parent = value
	valueCorner.CornerRadius = UDim.new(0,4)
	local valuePadding = Instance.new("UIPadding")
	valuePadding.Parent = value
	valuePadding.PaddingLeft = UDim.new(0,4)
	valuePadding.PaddingRight = UDim.new(0,4)
	local title = Instance.new("TextLabel")
	title.Parent = value
	title.BackgroundTransparency = 1
	title.Position = UDim2.new(.5,0,0,0)
	title.Size = UDim2.new(0,0,1,0)
	title.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
	title.Text = name
	title.TextSize = 18
	title.TextColor3 = Color3.new(1,1,1)
	title.TextTransparency = .25
	local input = Instance.new("ImageLabel")
	input.Parent = value
	input.BackgroundTransparency = 1
	input.AnchorPoint = Vector2.new(1,.5)
	input.Position = UDim2.new(1,0,.5,0)
	input.Size = UDim2.new(0,60,0,28)
	input.Image = "rbxassetid://12483103360"
	input.ImageRectOffset = Vector2.new(24,0)
	input.ImageRectSize = Vector2.new(24,24)
	input.ImageTransparency = .25
	input.ScaleType = Enum.ScaleType.Slice
	input.SliceCenter = Rect.new(8,8,18,18)
	input.TileSize = UDim2.new(1,0,1,0)
	local textbox = Instance.new("TextBox")
	textbox.Parent = input
	textbox.BackgroundTransparency = 1
	textbox.CursorPosition = 1
	textbox.Position = UDim2.new(0,5,0,5)
	textbox.ShowNativeInput = true
	textbox.Size = UDim2.new(1,-10,1,-10)
	textbox.ClipsDescendants = true
	textbox.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
	textbox.PlaceholderColor3 = Color3.new(.5,.5,.5)
	textbox.PlaceholderText = default
	textbox.Text = default
	textbox.TextColor3 = Color3.new(1,1,1)
	textbox.TextSize = 16
	textbox.TextStrokeTransparency = 1
	textbox.TextTransparency = .25
	textbox.TextXAlignment = Enum.TextXAlignment.Center
	--local bindable_function = Instance.new("BindableFunction")
	--bindable_function.OnInvoke = callback
	--textbox:GetPropertyChangedSignal("Text"):Connect(bindable_function:Invoke())
	--textbox:GetPropertyChangedSignal("Text"):Connect(callback())

	--game["Run Service"].Heartbeat:Connect(function()
	--	if PlayerGui:FindFirstChild("scriptPanel") then
	--		if textbox:IsFocused() then
	--			queue_focus = true
	--		else
	--			if queue_focus then
	--				callback()
	--				queue_focus = false
	--			end
	--		end
	--	end
	--end)
end

function create_checkbox_value(name,default,callback)
	local value = Instance.new("Frame")
	value.Parent = GameTabValues
	value.Name = name
	value.BackgroundColor3 = Color3.new(0,0,0)
	value.BackgroundTransparency = .5
	value.BorderColor3 = Color3.new(.1,.2,.25)
	value.BorderSizePixel = 1
	local valueCorner = Instance.new("UICorner")
	valueCorner.Parent = value
	valueCorner.CornerRadius = UDim.new(0,4)
	local valuePadding = Instance.new("UIPadding")
	valuePadding.Parent = value
	valuePadding.PaddingLeft = UDim.new(0,4)
	valuePadding.PaddingRight = UDim.new(0,4)
	local title = Instance.new("TextLabel")
	title.Parent = value
	title.BackgroundTransparency = 1
	title.Position = UDim2.new(.5,0,0,0)
	title.Size = UDim2.new(0,0,1,0)
	title.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
	title.Text = name
	title.TextSize = 18
	title.TextColor3 = Color3.new(1,1,1)
	title.TextTransparency = .25
	local input = Instance.new("ImageButton")
	input.Parent = value
	input.AnchorPoint = Vector2.new(1,.5)
	input.BackgroundTransparency = 1
	input.Position = UDim2.new(1,0,.5,0)
	input.Size = UDim2.new(0,24,0,24)
	input.Image = "rbxassetid://12483103360"
	input.ImageRectOffset = Vector2.new(24,0)
	input.ImageRectSize = Vector2.new(24,24)
	input.ScaleType = Enum.ScaleType.Stretch
	input.TileSize = UDim2.new(1,0,1,0)
	input:SetAttribute("Active", default)
	input.Active = default
	input.ImageRectOffset = Vector2.new(24,0)
	if input.Active then
		input.ImageRectOffset = Vector2.new(0,0)
	end
	input.MouseButton1Click:Connect(function()
		input.Active = not input.Active
		callback()
		input.ImageRectOffset = Vector2.new(24,0)
		if input.Active then
			input.ImageRectOffset = Vector2.new(0,0)
		end
	end)
end

create_textbox_value("sprint speed", 30, function() game:GetService("ReplicatedStorage").module.specificsModule.SprintSpeed.Value = GameTabValues["sprint speed"].ImageLabel.TextBox.Text end)
create_textbox_value("walk speed", 10, function() game:GetService("ReplicatedStorage").module.specificsModule.WalkSpeed.Value = GameTabValues["walk speed"].ImageLabel.TextBox.Text end)
create_textbox_value("crouch speed", 5, function() game:GetService("ReplicatedStorage").module.specificsModule.CrouchSpeed.Value = GameTabValues["crouch speed"].ImageLabel.TextBox.Text end)
create_textbox_value("ragdoll multiplier", 1, function() game:GetService("ReplicatedStorage").module.specificsModule.RagdollCrawlMultiplier.Value = GameTabValues["ragdoll multiplier"].ImageLabel.TextBox.Text end)
create_textbox_value("gravity", 100, function() game.Workspace.Gravity = GameTabValues.gravity.ImageLabel.TextBox.Text end)
create_textbox_value("max speed", 150)

create_checkbox_value("slide control", game.ReplicatedStorage.module.specificsModule.SlidingControl.Value, function() game.ReplicatedStorage.module.specificsModule.SlidingControl.Value = GameTabValues["slide control"].ImageButton.Active end)
create_checkbox_value("wav cosmetic effects", true, print("i love this!"))
create_checkbox_value("inf jump", false, function() end)
create_checkbox_value("day-night cycle", false, function() if GameTabValues["day-night cycle"].ImageButton.Active then game.Lighting.Brightness = 1.5 daycycletween:Play() end end)
create_checkbox_value("fullbright", false, function() end)

game.UserInputService.JumpRequest:Connect(function() if GameTabValues["inf jump"].ImageButton.Active then game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping") end end)

daycycletween = game.TweenService:Create(game.Lighting, TweenInfo.new(360), {ClockTime = 24})



















ShopTab = Instance.new("ScrollingFrame")
ShopTab.Parent = TabContainer
ShopTab.Name = "Shop Tab"
ShopTab.Visible = false
ShopTab.BackgroundTransparency = 1
ShopTab.BorderSizePixel = 0
ShopTab.AutomaticCanvasSize = Enum.AutomaticSize.Y
ShopTab.Size = UDim2.new(1,0,1,0)
ShopTab.CanvasSize = UDim2.new(1,0,0,0)
ShopTab.AutomaticCanvasSize = Enum.AutomaticSize.Y
ShopTab.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
ShopTab.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
ShopTab.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
ShopTab.ElasticBehavior = Enum.ElasticBehavior.Always
ShopTab.ScrollBarImageTransparency = .75
ShopTab.ScrollBarThickness = 6
ShopTab.ScrollingDirection = Enum.ScrollingDirection.Y
ShopTab.ClipsDescendants = true

ShopTabLayout = Instance.new("UIListLayout")
ShopTabLayout.Parent = ShopTab
ShopTabLayout.Padding = UDim.new(0,12)
ShopTabLayout.FillDirection = Enum.FillDirection.Vertical
ShopTabLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
ShopTabLayout.SortOrder = Enum.SortOrder.LayoutOrder
ShopTabLayout.VerticalAlignment = Enum.VerticalAlignment.Top
ShopTabPadding = Instance.new("UIPadding")
ShopTabPadding.Parent = ShopTab
ShopTabPadding.PaddingBottom = UDim.new(0,8)
ShopTabPadding.PaddingLeft = UDim.new(0,8)
ShopTabPadding.PaddingRight = UDim.new(0,8)
ShopTabPadding.PaddingTop = UDim.new(0,8)

ShopTabGear = Instance.new("Frame")
ShopTabGear.Parent = ShopTab
ShopTabGear.Name = "gear"
ShopTabGear.LayoutOrder = 1
ShopTabGear.AutomaticSize = Enum.AutomaticSize.Y
ShopTabGear.BackgroundColor3 = Color3.new(0,0,0)
ShopTabGear.BackgroundTransparency = .75
ShopTabGear.Size = UDim2.new(1,0,0,0)
ShopTabGearCorner = Instance.new("UICorner")
ShopTabGearCorner.Parent = ShopTabGear
ShopTabGearCorner.CornerRadius = UDim.new(0,4)
ShopTabGearLayout = Instance.new("UIGridLayout")
ShopTabGearLayout.Parent = ShopTabGear
ShopTabGearLayout.CellPadding = UDim2.new(0,8,0,8)
ShopTabGearLayout.CellSize = UDim2.new(0,96,0,96)
ShopTabGearLayout.SortOrder = Enum.SortOrder.LayoutOrder
ShopTabGearPadding = Instance.new("UIPadding")
ShopTabGearPadding.Parent = ShopTabGear
ShopTabGearPadding.PaddingBottom = UDim.new(0,8)
ShopTabGearPadding.PaddingLeft = UDim.new(0,8)
ShopTabGearPadding.PaddingRight = UDim.new(0,8)
ShopTabGearPadding.PaddingTop = UDim.new(0,8)

function add_item_gear(order, name : string, codename : string, imageid : string)
	local item = Instance.new("ImageButton")
	item.Parent = ShopTabGear
	item.LayoutOrder = order
	item.Name = name
	item.BackgroundTransparency = .95
	item.Image = "rbxassetid://0" -- imageid
	local corner = Instance.new("UICorner")
	corner.Parent = item
	corner.CornerRadius = UDim.new(0,8)
	local nameLabel = Instance.new("TextLabel")
	nameLabel.Parent = item
	nameLabel.BackgroundColor3 = Color3.new(0,0,0)
	nameLabel.BackgroundTransparency = .75
	nameLabel.Position = UDim2.new(0,0,1,-24)
	nameLabel.Size = UDim2.new(1,0,0,24)
	nameLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
	nameLabel.Text = name
	nameLabel.TextColor3 = Color3.new(1,1,1)
	nameLabel.TextSize = 14
	nameLabel.TextTransparency = .25
	local nameLabelCorner = Instance.new("UICorner")
	nameLabelCorner.Parent = nameLabel
	nameLabelCorner.CornerRadius = UDim.new(0,8)
	local image = Instance.new("ImageLabel")
	image.Parent = item
	image.AnchorPoint = Vector2.new(.5,0)
	image.BackgroundTransparency = 1
	image.Image = imageid
	image.Position = UDim2.new(.5,0,0,0)
	image.Size = UDim2.new(.75,0,.75,0)

	item.MouseButton1Click:Connect(function()
		game.ReplicatedStorage.events.game.global.shoppurchasebux:InvokeServer(codename, 'Gear', 1)
	end)

end

add_item_gear(1,"balloon", "Balloon", "rbxassetid://13971394746")
add_item_gear(2,"chezburger", "Chezburger", "rbxassetid://11231628858")
add_item_gear(3,"bloxy cola", "BoxyCola", "rbxassetid://12287328260")
add_item_gear(4, "witches brew", "WitchesBrew", "rbxassetid://12287326453")
add_item_gear(5,"cake", "Cake", "rbxassetid://16214124")
add_item_gear(6,"pumpkin pie", "PumpkinPie", "rbxassetid://15145816588")
add_item_gear(7,"discombobulator", "Discombobulator", "rbxassetid://13559280034")
add_item_gear(8,"possessor", "Possessor", "rbxassetid://16778362654")
add_item_gear(9,"wavgun", "WavGun", "rbxassetid://12617219182")
add_item_gear(10,"party wavgun", "WavGunAnniversary", "rbxassetid://13957226647")
add_item_gear(11,"spooky wavgun", "WavGunHalloween", "rbxassetid://15098201208")
add_item_gear(12,"party bomb", "PartyBomb", "rbxassetid://13969870917")
add_item_gear(13,"spooky bomb", "HallowBomb", "rbxassetid://15145887822")
add_item_gear(14,"lucky bomb", "LuckyBomb", "rbxassetid://16781178709")
add_item_gear(15,"tnt", "TNT", "rbxassetid://17003528828")
add_item_gear(16,"firework", "Firework", "rbxassetid://20064127")
add_item_gear(17,"snowball", "Snowball", "rbxassetid://12512729941")

ShopTabGearTitle = Instance.new("TextLabel")
ShopTabGearTitle.Parent = ShopTab
ShopTabGearTitle.Name = "gear title"
ShopTabGearTitle.BackgroundColor3 = Color3.new(0,0,0)
ShopTabGearTitle.BackgroundTransparency = .75
ShopTabGearTitle.Size = UDim2.new(.25,0,0,24)
ShopTabGearTitle.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
ShopTabGearTitle.TextSize = 18
ShopTabGearTitle.TextColor3 = Color3.new(1,1,1)
ShopTabGearTitle.TextTransparency = .25
ShopTabGearTitle.Text = "gear"
ShopTabGearTitleCorner = Instance.new("UICorner")
ShopTabGearTitleCorner.Parent = ShopTabGearTitle
ShopTabGearTitleCorner.CornerRadius = UDim.new(0,4)


ShopTabCosmetics = Instance.new("Frame")
ShopTabCosmetics.Parent = ShopTab
ShopTabCosmetics.Name = "cosmetics"
ShopTabCosmetics.LayoutOrder = 6
ShopTabCosmetics.AutomaticSize = Enum.AutomaticSize.Y
ShopTabCosmetics.BackgroundColor3 = Color3.new(0,0,0)
ShopTabCosmetics.BackgroundTransparency = .75
ShopTabCosmetics.Size = UDim2.new(1,0,0,0)
ShopTabCosmeticsCorner = Instance.new("UICorner")
ShopTabCosmeticsCorner.Parent = ShopTabCosmetics
ShopTabCosmeticsCorner.CornerRadius = UDim.new(0,4)
ShopTabCosmeticsLayout = Instance.new("UIGridLayout")
ShopTabCosmeticsLayout.Parent = ShopTabCosmetics
ShopTabCosmeticsLayout.CellPadding = UDim2.new(0,8,0,8)
ShopTabCosmeticsLayout.CellSize = UDim2.new(0,96,0,96)
ShopTabCosmeticsLayout.SortOrder = Enum.SortOrder.LayoutOrder
ShopTabCosmeticsPadding = Instance.new("UIPadding")
ShopTabCosmeticsPadding.Parent = ShopTabCosmetics
ShopTabCosmeticsPadding.PaddingBottom = UDim.new(0,8)
ShopTabCosmeticsPadding.PaddingLeft = UDim.new(0,8)
ShopTabCosmeticsPadding.PaddingRight = UDim.new(0,8)
ShopTabCosmeticsPadding.PaddingTop = UDim.new(0,8)

function add_item_cosmetics(order, name : string, codename : string, imageid : string, custom_font_size)
	local item = Instance.new("ImageButton")
	item.Parent = ShopTabCosmetics
	item.LayoutOrder = order
	item.Name = name
	item.BackgroundTransparency = .95
	item.Image = "rbxassetid://0" -- imageid
	local corner = Instance.new("UICorner")
	corner.Parent = item
	corner.CornerRadius = UDim.new(0,8)
	local nameLabel = Instance.new("TextLabel")
	nameLabel.Parent = item
	nameLabel.BackgroundColor3 = Color3.new(0,0,0)
	nameLabel.BackgroundTransparency = .75
	nameLabel.Position = UDim2.new(0,0,1,-24)
	nameLabel.Size = UDim2.new(1,0,0,24)
	nameLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
	nameLabel.Text = name
	nameLabel.TextColor3 = Color3.new(1,1,1)
	nameLabel.TextSize = 14
	if custom_font_size then
		nameLabel.TextSize = custom_font_size
	end
	nameLabel.TextTransparency = .25
	local nameLabelCorner = Instance.new("UICorner")
	nameLabelCorner.Parent = nameLabel
	nameLabelCorner.CornerRadius = UDim.new(0,8)
	local image = Instance.new("ImageLabel")
	image.Parent = item
	image.AnchorPoint = Vector2.new(.5,0)
	image.BackgroundTransparency = 1
	--image.Image = imageid DONT FORGET TO UNCOMMENT THIS IT KEEPS CRASHING THATS WHY I COMMENTED
	image.Position = UDim2.new(.5,0,0,0)
	image.Size = UDim2.new(.75,0,.75,0)

	item.MouseButton1Click:Connect(function()
		game.ReplicatedStorage.events.game.global.shoppurchasebux:InvokeServer(codename, 'Cosmetics', 1)
	end)

end

add_item_cosmetics(-3, "pixel drink", "PixelDrink")
add_item_cosmetics(-2, "hermes' crown", "Hades_Hermes_low")
add_item_cosmetics(-1, "hermes' blade", "WingedBlade")
add_item_cosmetics(0, "zeus' crown", "Hades_Zeus_Roblox")
add_item_cosmetics(1,"obscura regalitas","silverlaurel")
add_item_cosmetics(2,"summa regalitas","goldenlaurel")
add_item_cosmetics(3,"hunter's dream", "hunterhat_roblox")
add_item_cosmetics(4,"hunter's nightmare", "finalbosshunterhat_roblox")
add_item_cosmetics(5,"soldier's helmet", "SoldierHelmet")
add_item_cosmetics(6,"red team captain's hat", "RedTeamCaptain", "REPLACE TIHS TOO", 10)
add_item_cosmetics(7,"green team captain's hat", "GreenTeamCaptain", "REPLACE THIS TOO", 10)


ShopTabCosmeticsTitle = Instance.new("TextLabel")
ShopTabCosmeticsTitle.Parent = ShopTab
ShopTabCosmeticsTitle.Name = "cosmetics title"
ShopTabCosmeticsTitle.LayoutOrder = 5
ShopTabCosmeticsTitle.BackgroundColor3 = Color3.new(0,0,0)
ShopTabCosmeticsTitle.BackgroundTransparency = .75
ShopTabCosmeticsTitle.Size = UDim2.new(.25,0,0,24)
ShopTabCosmeticsTitle.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
ShopTabCosmeticsTitle.TextSize = 18
ShopTabCosmeticsTitle.TextColor3 = Color3.new(1,1,1)
ShopTabCosmeticsTitle.TextTransparency = .25
ShopTabCosmeticsTitle.Text = "cosmetics"
ShopTabCosmeticsTitleCorner = Instance.new("UICorner")
ShopTabCosmeticsTitleCorner.Parent = ShopTabCosmeticsTitle
ShopTabCosmeticsTitleCorner.CornerRadius = UDim.new(0,4)


ShopTabTaunts = Instance.new("Frame")
--ShopTabTaunts.Parent = ShopTab
ShopTabTaunts.Name = "Taunts"
ShopTabTaunts.LayoutOrder = 4
ShopTabTaunts.AutomaticSize = Enum.AutomaticSize.Y
ShopTabTaunts.BackgroundColor3 = Color3.new(0,0,0)
ShopTabTaunts.BackgroundTransparency = .75
ShopTabTaunts.Size = UDim2.new(1,0,0,0)
ShopTabTauntsCorner = Instance.new("UICorner")
ShopTabTauntsCorner.Parent = ShopTabTaunts
ShopTabTauntsCorner.CornerRadius = UDim.new(0,4)
ShopTabTauntsLayout = Instance.new("UIGridLayout")
ShopTabTauntsLayout.Parent = ShopTabTaunts
ShopTabTauntsLayout.CellPadding = UDim2.new(0,8,0,8)
ShopTabTauntsLayout.CellSize = UDim2.new(0,96,0,96)
ShopTabTauntsLayout.SortOrder = Enum.SortOrder.LayoutOrder
ShopTabTauntsPadding = Instance.new("UIPadding")
ShopTabTauntsPadding.Parent = ShopTabTaunts
ShopTabTauntsPadding.PaddingBottom = UDim.new(0,8)
ShopTabTauntsPadding.PaddingLeft = UDim.new(0,8)
ShopTabTauntsPadding.PaddingRight = UDim.new(0,8)
ShopTabTauntsPadding.PaddingTop = UDim.new(0,8)

function add_item_taunts(order, name : string, codename : string, imageid : string)
	local item = Instance.new("ImageButton")
	item.Parent = ShopTabTaunts
	item.LayoutOrder = order
	item.Name = name
	item.BackgroundTransparency = .95
	item.Image = "rbxassetid://0" -- imageid
	local corner = Instance.new("UICorner")
	corner.Parent = item
	corner.CornerRadius = UDim.new(0,8)
	local nameLabel = Instance.new("TextLabel")
	nameLabel.Parent = item
	nameLabel.BackgroundColor3 = Color3.new(0,0,0)
	nameLabel.BackgroundTransparency = .75
	nameLabel.Position = UDim2.new(0,0,1,-24)
	nameLabel.Size = UDim2.new(1,0,0,24)
	nameLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
	nameLabel.Text = name
	nameLabel.TextColor3 = Color3.new(1,1,1)
	nameLabel.TextSize = 14
	nameLabel.TextTransparency = .25
	local nameLabelCorner = Instance.new("UICorner")
	nameLabelCorner.Parent = nameLabel
	nameLabelCorner.CornerRadius = UDim.new(0,8)
	local image = Instance.new("ImageLabel")
	image.Parent = item
	image.AnchorPoint = Vector2.new(.5,0)
	image.BackgroundTransparency = 1
	--image.Image = imageid DONT FORGET TO UNCOMMENT THIS IT KEEPS CRASHING THATS WHY I COMMENTED
	image.Position = UDim2.new(.5,0,0,0)
	image.Size = UDim2.new(.75,0,.75,0)

	item.MouseButton1Click:Connect(function()
		game.ReplicatedStorage.events.game.global.shoppurchasebux:InvokeServer(codename, 'Taunts', 1)
	end)

end

--add_item_taunts(1, "breathe","Breathe")
--add_item_taunts(2, "uglydance0", "UglyDance0")


ShopTabTauntsTitle = Instance.new("TextLabel")
--ShopTabTauntsTitle.Parent = ShopTab
ShopTabTauntsTitle.Name = "Taunts title"
ShopTabTauntsTitle.LayoutOrder = 3
ShopTabTauntsTitle.BackgroundColor3 = Color3.new(0,0,0)
ShopTabTauntsTitle.BackgroundTransparency = .75
ShopTabTauntsTitle.Size = UDim2.new(.25,0,0,24)
ShopTabTauntsTitle.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
ShopTabTauntsTitle.TextSize = 18
ShopTabTauntsTitle.TextColor3 = Color3.new(1,1,1)
ShopTabTauntsTitle.TextTransparency = .25
ShopTabTauntsTitle.Text = "taunts"
ShopTabTauntsTitleCorner = Instance.new("UICorner")
ShopTabTauntsTitleCorner.Parent = ShopTabTauntsTitle
ShopTabTauntsTitleCorner.CornerRadius = UDim.new(0,4)




















TeleportTab = Instance.new("ScrollingFrame")
TeleportTab.Parent = TabContainer
TeleportTab.Name = "Teleport Tab"
TeleportTab.Visible = false
TeleportTab.BackgroundTransparency = 1
TeleportTab.BorderSizePixel = 0
TeleportTab.Size = UDim2.new(1,0,1,0)
TeleportTab.AutomaticCanvasSize = Enum.AutomaticSize.Y
TeleportTab.CanvasSize = UDim2.new(1,0,0,0)
TeleportTab.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
TeleportTab.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
TeleportTab.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
TeleportTab.ElasticBehavior = Enum.ElasticBehavior.Always
TeleportTab.ScrollBarImageTransparency = .75
TeleportTab.ScrollBarThickness = 6
TeleportTab.ScrollingDirection = Enum.ScrollingDirection.Y
TeleportTab.ClipsDescendants = true

TeleportTabLayout = Instance.new("UIListLayout")
TeleportTabLayout.Parent = TeleportTab
TeleportTabLayout.Padding = UDim.new(0,12)
TeleportTabLayout.FillDirection = Enum.FillDirection.Vertical
TeleportTabLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
TeleportTabLayout.SortOrder = Enum.SortOrder.LayoutOrder
TeleportTabLayout.VerticalAlignment = Enum.VerticalAlignment.Top
TeleportTabPadding = Instance.new("UIPadding")
TeleportTabPadding.Parent = TeleportTab
TeleportTabPadding.PaddingBottom = UDim.new(0,8)
TeleportTabPadding.PaddingLeft = UDim.new(0,8)
TeleportTabPadding.PaddingRight = UDim.new(0,8)
TeleportTabPadding.PaddingTop = UDim.new(0,8)





TeleportTabPlayers = Instance.new("Frame")
TeleportTabPlayers.Parent = TeleportTab
TeleportTabPlayers.Name = "players"
TeleportTabPlayers.LayoutOrder = -2
TeleportTabPlayers.AutomaticSize = Enum.AutomaticSize.Y
TeleportTabPlayers.BackgroundColor3 = Color3.new(0,0,0)
TeleportTabPlayers.BackgroundTransparency = .75
TeleportTabPlayers.Size = UDim2.new(1,0,0,0)
TeleportTabPlayersCorner = Instance.new("UICorner")
TeleportTabPlayersCorner.Parent = TeleportTabPlayers
TeleportTabPlayersCorner.CornerRadius = UDim.new(0,4)
TeleportTabPlayersLayout = Instance.new("UIGridLayout")
TeleportTabPlayersLayout.Parent = TeleportTabPlayers
TeleportTabPlayersLayout.CellPadding = UDim2.new(0,8,0,8)
TeleportTabPlayersLayout.CellSize = UDim2.new(0,80,0,80)
TeleportTabPlayersPadding = Instance.new("UIPadding")
TeleportTabPlayersPadding.Parent = TeleportTabPlayers
TeleportTabPlayersPadding.PaddingLeft = UDim.new(0,8)
TeleportTabPlayersPadding.PaddingRight = UDim.new(0,8)
TeleportTabPlayersPadding.PaddingBottom = UDim.new(0,8)
TeleportTabPlayersPadding.PaddingTop = UDim.new(0,8)

TeleportTabPlayersTitle = Instance.new("TextButton")
TeleportTabPlayersTitle.Parent = TeleportTab
TeleportTabPlayersTitle.Name = "players title"
TeleportTabPlayersTitle.LayoutOrder = -3
TeleportTabPlayersTitle.BackgroundColor3 = Color3.new(0,0,0)
TeleportTabPlayersTitle.BackgroundTransparency = .75
TeleportTabPlayersTitle.Size = UDim2.new(.25,0,0,24)
TeleportTabPlayersTitle.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
TeleportTabPlayersTitle.TextSize = 18
TeleportTabPlayersTitle.TextColor3 = Color3.new(1,1,1)
TeleportTabPlayersTitle.TextTransparency = .25
TeleportTabPlayersTitle.Text = "players"
TeleportTabPlayersTitleCorner = Instance.new("UICorner")
TeleportTabPlayersTitleCorner.Parent = TeleportTabPlayersTitle
TeleportTabPlayersTitleCorner.CornerRadius = UDim.new(0,4)

TeleportTabPlayersTitle.MouseButton1Click:Connect(function()
	TeleportTabPlayers.Visible = not TeleportTabPlayers.Visible
end)

function update_player_teleports()
	for i,child in TeleportTabPlayers:GetChildren() do
		if not ((child.Name == "UICorner") or (child.Name == "UIGridLayout") or (child.Name == "UIPadding")) then
			child:Destroy()
		end
	end
	for i,player in game.Players:GetPlayers() do
		local button = Instance.new("ImageButton")
		button.Parent = TeleportTabPlayers
		button.Name = player.Name
		if button.Name == game.Players.LocalPlayer.Name then
			button:Destroy()
		end
		button.Image = game.Players:GetUserThumbnailAsync(player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100)
		button.ImageTransparency = .25
		button.BackgroundTransparency = .75
		button.BackgroundColor3 = Color3.new(0,0,0)
		local buttonCorner = Instance.new("UICorner")
		buttonCorner.Parent = button
		buttonCorner.CornerRadius = UDim.new(0,4)
		local label = Instance.new("TextLabel")
		label.Parent = button
		label.Position = UDim2.new(.5,0,1,0)
		label.Size = UDim2.new(0,0,0,-16)
		label.BackgroundColor3 = Color3.new(0,0,0)
		label.BackgroundTransparency = .75
		label.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
		label.Text = player.DisplayName
		label.TextSize = 14
		label.TextColor3 = Color3.new(1,1,1)
		label.TextTransparency = .25
		local labelCorner = Instance.new("UICorner")
		labelCorner.Parent = label
		labelCorner.CornerRadius = UDim.new(0,4)
		button.MouseButton1Click:Connect(function()
			TeleportTo(game.Workspace[player.Name].HumanoidRootPart.CFrame)
		end)
	end
end








TeleportTabOob= Instance.new("Frame")
TeleportTabOob.Parent = TeleportTab
TeleportTabOob.Name = "oob"
TeleportTabOob.LayoutOrder = 0
TeleportTabOob.AutomaticSize = Enum.AutomaticSize.Y
TeleportTabOob.BackgroundColor3 = Color3.new(0,0,0)
TeleportTabOob.BackgroundTransparency = .75
TeleportTabOob.Size = UDim2.new(1,0,0,0)
TeleportTabOobCorner = Instance.new("UICorner")
TeleportTabOobCorner.Parent = TeleportTabOob
TeleportTabOobCorner.CornerRadius = UDim.new(0,4)
TeleportTabOobLayout = Instance.new("UIGridLayout")
TeleportTabOobLayout.Parent = TeleportTabOob
TeleportTabOobLayout.CellPadding = UDim2.new(0,8,0,8)
TeleportTabOobLayout.CellSize = UDim2.new(.5,-8,0,96)
TeleportTabOobLayout.SortOrder = Enum.SortOrder.LayoutOrder
TeleportTabOobPadding = Instance.new("UIPadding")
TeleportTabOobPadding.Parent = TeleportTabOob
TeleportTabOobPadding.PaddingBottom = UDim.new(0,8)
TeleportTabOobPadding.PaddingLeft = UDim.new(0,8)
TeleportTabOobPadding.PaddingRight = UDim.new(0,8)
TeleportTabOobPadding.PaddingTop = UDim.new(0,8)

TeleportTabOobTitle = Instance.new("TextButton")
TeleportTabOobTitle.Parent = TeleportTab
TeleportTabOobTitle.Name = "oob title"
TeleportTabOobTitle.LayoutOrder = -1
TeleportTabOobTitle.BackgroundColor3 = Color3.new(0,0,0)
TeleportTabOobTitle.BackgroundTransparency = .75
TeleportTabOobTitle.Size = UDim2.new(.25,0,0,24)
TeleportTabOobTitle.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
TeleportTabOobTitle.TextSize = 18
TeleportTabOobTitle.TextColor3 = Color3.new(1,1,1)
TeleportTabOobTitle.TextTransparency = .25
TeleportTabOobTitle.Text = "out of bounds"
TeleportTabOobTitleCorner = Instance.new("UICorner")
TeleportTabOobTitleCorner.Parent = TeleportTabOobTitle
TeleportTabOobTitleCorner.CornerRadius = UDim.new(0,4)

TeleportTabOobTitle.MouseButton1Click:Connect(function()
	TeleportTabOob.Visible = not TeleportTabOob.Visible
end)

function create_oob_location(order, name, position, imageid)
	local item = Instance.new("ImageButton")
	item.Parent = TeleportTabOob
	item.LayoutOrder = order
	item.Name = name
	item.BackgroundTransparency = .95
	item.Image = imageid
	item.ImageTransparency = .5
	item.ScaleType = Enum.ScaleType.Crop
	local corner = Instance.new("UICorner")
	corner.Parent = item
	corner.CornerRadius = UDim.new(0,8)
	local nameLabel = Instance.new("TextLabel")
	nameLabel.Parent = item
	nameLabel.BackgroundColor3 = Color3.new(0,0,0)
	nameLabel.BackgroundTransparency = 1
	nameLabel.Position = UDim2.new(0,0,.5,-12)
	nameLabel.Size = UDim2.new(1,0,0,24)
	nameLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	nameLabel.Text = name
	nameLabel.TextColor3 = Color3.new(1,1,1)
	nameLabel.TextSize = 24
	nameLabel.TextTransparency = .25
	local nameLabelCorner = Instance.new("UICorner")
	nameLabelCorner.Parent = nameLabel
	nameLabelCorner.CornerRadius = UDim.new(0,8)
	item.MouseButton1Click:Connect(function()
		TeleportTo(position)
	end)
end

create_oob_location(1, "shop", CFrame.new(-629.223633, -507.316467, -28.3238144, 0.0218223333, -5.58417406, -0.999761939, 1.22630495, 1, -5.55873677, 0.999761939, -1.10470787, 0.0218223333), "rbxassetid://0")
create_oob_location(2, "lobby", CFrame.new(-153.417053, 1688.5946, 33.3540649, 1, 0, 0, 0, 1, 0, 0, 0, 1), "rbxassetid://0")


TeleportTabMall = Instance.new("Frame")
TeleportTabMall.Parent = TeleportTab
TeleportTabMall.Name = "nn_mall"
TeleportTabMall.LayoutOrder = 2
TeleportTabMall.AutomaticSize = Enum.AutomaticSize.Y
TeleportTabMall.BackgroundColor3 = Color3.new(0,0,0)
TeleportTabMall.BackgroundTransparency = .75
TeleportTabMall.Size = UDim2.new(1,0,0,0)
TeleportTabMallCorner = Instance.new("UICorner")
TeleportTabMallCorner.Parent = TeleportTabMall
TeleportTabMallCorner.CornerRadius = UDim.new(0,4)
TeleportTabMallLayout = Instance.new("UIGridLayout")
TeleportTabMallLayout.Parent = TeleportTabMall
TeleportTabMallLayout.CellPadding = UDim2.new(0,8,0,8)
TeleportTabMallLayout.CellSize = UDim2.new(.5,-8,0,96)
TeleportTabMallLayout.SortOrder = Enum.SortOrder.LayoutOrder
TeleportTabMallPadding = Instance.new("UIPadding")
TeleportTabMallPadding.Parent = TeleportTabMall
TeleportTabMallPadding.PaddingBottom = UDim.new(0,8)
TeleportTabMallPadding.PaddingLeft = UDim.new(0,8)
TeleportTabMallPadding.PaddingRight = UDim.new(0,8)
TeleportTabMallPadding.PaddingTop = UDim.new(0,8)

TeleportTabMallTitle = Instance.new("TextButton")
TeleportTabMallTitle.Parent = TeleportTab
TeleportTabMallTitle.Name = "mall title"
TeleportTabMallTitle.LayoutOrder = 1
TeleportTabMallTitle.BackgroundColor3 = Color3.new(0,0,0)
TeleportTabMallTitle.BackgroundTransparency = .75
TeleportTabMallTitle.Size = UDim2.new(.25,0,0,24)
TeleportTabMallTitle.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
TeleportTabMallTitle.TextSize = 18
TeleportTabMallTitle.TextColor3 = Color3.new(1,1,1)
TeleportTabMallTitle.TextTransparency = .25
TeleportTabMallTitle.Text = "nn_mall"
TeleportTabMallTitleCorner = Instance.new("UICorner")
TeleportTabMallTitleCorner.Parent = TeleportTabMallTitle
TeleportTabMallTitleCorner.CornerRadius = UDim.new(0,4)
TeleportTabMallButton = Instance.new("ImageButton")
TeleportTabMallButton.Parent = TeleportTabMallTitle
TeleportTabMallButton.Position = UDim2.new(1,8,0,0)
TeleportTabMallButton.Size = UDim2.new(0,24,0,24)
TeleportTabMallButton.Image = "rbxassetid://0"
TeleportTabMallButtonCorner = Instance.new("UICorner")
TeleportTabMallButtonCorner.Parent = TeleportTabMallButton
TeleportTabMallButtonCorner.CornerRadius = UDim.new(0,4)
TeleportTabMallButton.MouseButton1Click:Connect(function() TeleportTabMall.Visible = not TeleportTabMall.Visible end)

TeleportTabMallTitle.MouseButton1Click:Connect(function()
	ReplicatedStorage.events.player.char.changezone:FireServer("nn_mall")
end)

function create_mall_location(order, name, position, imageid)
	local item = Instance.new("ImageButton")
	item.Parent = TeleportTabMall
	item.LayoutOrder = order
	item.Name = name
	item.BackgroundTransparency = .95
	item.Image = imageid
	item.ImageTransparency = .5
	item.ScaleType = Enum.ScaleType.Crop
	local corner = Instance.new("UICorner")
	corner.Parent = item
	corner.CornerRadius = UDim.new(0,8)
	local nameLabel = Instance.new("TextLabel")
	nameLabel.Parent = item
	nameLabel.BackgroundColor3 = Color3.new(0,0,0)
	nameLabel.BackgroundTransparency = 1
	nameLabel.Position = UDim2.new(0,0,.5,-12)
	nameLabel.Size = UDim2.new(1,0,0,24)
	nameLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	nameLabel.Text = name
	nameLabel.TextColor3 = Color3.new(1,1,1)
	nameLabel.TextSize = 24
	nameLabel.TextTransparency = .25
	local nameLabelCorner = Instance.new("UICorner")
	nameLabelCorner.Parent = nameLabel
	nameLabelCorner.CornerRadius = UDim.new(0,8)
	item.MouseButton1Click:Connect(function()
		TeleportTo(position)
	end)
end

create_mall_location(1, "parking", CFrame.new(-802.532288, -3.8002665, -68.2202911, -0.0505572557, 7.64034946, 0.998721182, 1.23916793, 1, -7.02284203, -0.998721182, 1.20207774, -0.0505572557), "http://www.roblox.com/asset/?id=17474832112")
create_mall_location(2, "club", CFrame.new(-1156.29578, 23.0997257, -258.607239, -0.990156412, 1.26665387, 0.139967024, 1.18436191, 1, -6.71233416, -0.139967024, -4.98854326, -0.990156412), "http://www.roblox.com/asset/?id=17474838618")
create_mall_location(3, "upstairs", CFrame.new(-1145.26892, 78.0997391, 136.084595, 0.999941587, -1.22155577, -0.0108089484, 1.21418889, 1, -6.88117827, 0.0108089484, 6.74953496, 0.999941587), "http://www.roblox.com/asset/?id=17474842703")
--create_mall_location(4, "oob")

TeleportTabRussia = Instance.new("Frame")
TeleportTabRussia.Parent = TeleportTab
TeleportTabRussia.Name = "nn_russia"
TeleportTabRussia.LayoutOrder = 4
TeleportTabRussia.AutomaticSize = Enum.AutomaticSize.Y
TeleportTabRussia.BackgroundColor3 = Color3.new(0,0,0)
TeleportTabRussia.BackgroundTransparency = .75
TeleportTabRussia.Size = UDim2.new(1,0,0,0)
TeleportTabRussiaCorner = Instance.new("UICorner")
TeleportTabRussiaCorner.Parent = TeleportTabRussia
TeleportTabRussiaCorner.CornerRadius = UDim.new(0,4)
TeleportTabRussiaLayout = Instance.new("UIGridLayout")
TeleportTabRussiaLayout.Parent = TeleportTabRussia
TeleportTabRussiaLayout.CellPadding = UDim2.new(0,8,0,8)
TeleportTabRussiaLayout.CellSize = UDim2.new(.5,-8,0,96)
TeleportTabRussiaLayout.SortOrder = Enum.SortOrder.LayoutOrder
TeleportTabRussiaPadding = Instance.new("UIPadding")
TeleportTabRussiaPadding.Parent = TeleportTabRussia
TeleportTabRussiaPadding.PaddingBottom = UDim.new(0,8)
TeleportTabRussiaPadding.PaddingLeft = UDim.new(0,8)
TeleportTabRussiaPadding.PaddingRight = UDim.new(0,8)
TeleportTabRussiaPadding.PaddingTop = UDim.new(0,8)

TeleportTabRussiaTitle = Instance.new("TextButton")
TeleportTabRussiaTitle.Parent = TeleportTab
TeleportTabRussiaTitle.Name = "Russia title"
TeleportTabRussiaTitle.LayoutOrder = 3
TeleportTabRussiaTitle.BackgroundColor3 = Color3.new(0,0,0)
TeleportTabRussiaTitle.BackgroundTransparency = .75
TeleportTabRussiaTitle.Size = UDim2.new(.25,0,0,24)
TeleportTabRussiaTitle.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
TeleportTabRussiaTitle.TextSize = 18
TeleportTabRussiaTitle.TextColor3 = Color3.new(1,1,1)
TeleportTabRussiaTitle.TextTransparency = .25
TeleportTabRussiaTitle.Text = "nn_russia"
TeleportTabRussiaTitleCorner = Instance.new("UICorner")
TeleportTabRussiaTitleCorner.Parent = TeleportTabRussiaTitle
TeleportTabRussiaTitleCorner.CornerRadius = UDim.new(0,4)
TeleportTabRussiaButton = Instance.new("ImageButton")
TeleportTabRussiaButton.Parent = TeleportTabRussiaTitle
TeleportTabRussiaButton.Position = UDim2.new(1,8,0,0)
TeleportTabRussiaButton.Size = UDim2.new(0,24,0,24)
TeleportTabRussiaButton.Image = "rbxassetid://0"
TeleportTabRussiaButtonCorner = Instance.new("UICorner")
TeleportTabRussiaButtonCorner.Parent = TeleportTabRussiaButton
TeleportTabRussiaButtonCorner.CornerRadius = UDim.new(0,4)
TeleportTabRussiaButton.MouseButton1Click:Connect(function() TeleportTabRussia.Visible = not TeleportTabRussia.Visible end)

TeleportTabRussiaTitle.MouseButton1Click:Connect(function()
	ReplicatedStorage.events.player.char.changezone:FireServer("nn_russia")
end)

function create_russia_location(order, name, position, imageid)
	local item = Instance.new("ImageButton")
	item.Parent = TeleportTabRussia
	item.LayoutOrder = order
	item.Name = name
	item.BackgroundTransparency = .95
	item.Image = imageid
	item.ImageTransparency = .5
	item.ScaleType = Enum.ScaleType.Crop
	local corner = Instance.new("UICorner")
	corner.Parent = item
	corner.CornerRadius = UDim.new(0,8)
	local nameLabel = Instance.new("TextLabel")
	nameLabel.Parent = item
	nameLabel.BackgroundColor3 = Color3.new(0,0,0)
	nameLabel.BackgroundTransparency = 1
	nameLabel.Position = UDim2.new(0,0,.5,-12)
	nameLabel.Size = UDim2.new(1,0,0,24)
	nameLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	nameLabel.Text = name
	nameLabel.TextColor3 = Color3.new(1,1,1)
	nameLabel.TextSize = 24
	nameLabel.TextTransparency = .25
	local nameLabelCorner = Instance.new("UICorner")
	nameLabelCorner.Parent = nameLabel
	nameLabelCorner.CornerRadius = UDim.new(0,8)
	item.MouseButton1Click:Connect(function()
		TeleportTo(position)
	end)
end

create_russia_location(1, "benny's", CFrame.new(-154.732956, 11.4498997, -421.810181, 0.999996662, -2.85380275, 0.00259061786, 2.8586547, 1, -1.86917176, -0.00259061786, 1.87657126, 0.999996662), "http://www.roblox.com/asset/?id=17474849339")
create_russia_location(2, "cyberia", CFrame.new(-99.5912857, 13.0999975, -559.523865, 0.998913229, -1.77246412, 0.0466081128, 1.83023319, 1, -1.1967885, -0.0466081128, 1.28079158, 0.998913229), "http://www.roblox.com/asset/?id=17474853712")
create_russia_location(3, "garage", CFrame.new(-472.651031, 20.1509171, -1118.31372, -0.478361607, -2.78137235, -0.878163218, 1.43933504, 1, -8.15720963, 0.878163218, -1.65418026, -0.478361607), "http://www.roblox.com/asset/?id=17474857292")
--create_russia_location(4, "oob")


TeleportTabPort = Instance.new("Frame")
TeleportTabPort.Parent = TeleportTab
TeleportTabPort.Name = "nn_port"
TeleportTabPort.LayoutOrder = 6
TeleportTabPort.AutomaticSize = Enum.AutomaticSize.Y
TeleportTabPort.BackgroundColor3 = Color3.new(0,0,0)
TeleportTabPort.BackgroundTransparency = .75
TeleportTabPort.Size = UDim2.new(1,0,0,0)
TeleportTabPortCorner = Instance.new("UICorner")
TeleportTabPortCorner.Parent = TeleportTabPort
TeleportTabPortCorner.CornerRadius = UDim.new(0,4)
TeleportTabPortLayout = Instance.new("UIGridLayout")
TeleportTabPortLayout.Parent = TeleportTabPort
TeleportTabPortLayout.CellPadding = UDim2.new(0,8,0,8)
TeleportTabPortLayout.CellSize = UDim2.new(.5,-8,0,96)
TeleportTabPortLayout.SortOrder = Enum.SortOrder.LayoutOrder
TeleportTabPortPadding = Instance.new("UIPadding")
TeleportTabPortPadding.Parent = TeleportTabPort
TeleportTabPortPadding.PaddingBottom = UDim.new(0,8)
TeleportTabPortPadding.PaddingLeft = UDim.new(0,8)
TeleportTabPortPadding.PaddingRight = UDim.new(0,8)
TeleportTabPortPadding.PaddingTop = UDim.new(0,8)

TeleportTabPortTitle = Instance.new("TextButton")
TeleportTabPortTitle.Parent = TeleportTab
TeleportTabPortTitle.Name = "Port title"
TeleportTabPortTitle.LayoutOrder = 5
TeleportTabPortTitle.BackgroundColor3 = Color3.new(0,0,0)
TeleportTabPortTitle.BackgroundTransparency = .75
TeleportTabPortTitle.Size = UDim2.new(.25,0,0,24)
TeleportTabPortTitle.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
TeleportTabPortTitle.TextSize = 18
TeleportTabPortTitle.TextColor3 = Color3.new(1,1,1)
TeleportTabPortTitle.TextTransparency = .25
TeleportTabPortTitle.Text = "nn_port"
TeleportTabPortTitleCorner = Instance.new("UICorner")
TeleportTabPortTitleCorner.Parent = TeleportTabPortTitle
TeleportTabPortTitleCorner.CornerRadius = UDim.new(0,4)
TeleportTabPortButton = Instance.new("ImageButton")
TeleportTabPortButton.Parent = TeleportTabPortTitle
TeleportTabPortButton.Position = UDim2.new(1,8,0,0)
TeleportTabPortButton.Size = UDim2.new(0,24,0,24)
TeleportTabPortButton.Image = "rbxassetid://0"
TeleportTabPortButtonCorner = Instance.new("UICorner")
TeleportTabPortButtonCorner.Parent = TeleportTabPortButton
TeleportTabPortButtonCorner.CornerRadius = UDim.new(0,4)
TeleportTabPortButton.MouseButton1Click:Connect(function() TeleportTabPort.Visible = not TeleportTabPort.Visible end)

TeleportTabPortTitle.MouseButton1Click:Connect(function()
	ReplicatedStorage.events.player.char.changezone:FireServer("nn_port")
end)

function create_port_location(order, name, position, imageid)
	local item = Instance.new("ImageButton")
	item.Parent = TeleportTabPort
	item.LayoutOrder = order
	item.Name = name
	item.BackgroundTransparency = .95
	item.Image = imageid
	item.ImageTransparency = .5
	item.ScaleType = Enum.ScaleType.Crop
	local corner = Instance.new("UICorner")
	corner.Parent = item
	corner.CornerRadius = UDim.new(0,8)
	local nameLabel = Instance.new("TextLabel")
	nameLabel.Parent = item
	nameLabel.BackgroundColor3 = Color3.new(0,0,0)
	nameLabel.BackgroundTransparency = 1
	nameLabel.Position = UDim2.new(0,0,.5,-12)
	nameLabel.Size = UDim2.new(1,0,0,24)
	nameLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	nameLabel.Text = name
	nameLabel.TextColor3 = Color3.new(1,1,1)
	nameLabel.TextSize = 24
	nameLabel.TextTransparency = .25
	local nameLabelCorner = Instance.new("UICorner")
	nameLabelCorner.Parent = nameLabel
	nameLabelCorner.CornerRadius = UDim.new(0,8)
	item.MouseButton1Click:Connect(function()
		TeleportTo(position)
	end)
end

create_port_location(1, "garage", CFrame.new(-539.664185, 15.8500156, 1153.62988, 0.0679004192, 5.33221557, 0.997692227, 1.07176878, 1, -6.07397049, -0.997692227, 1.11053777, 0.0679004192), "http://www.roblox.com/asset/?id=17474862971")
create_port_location(2, "benny's", CFrame.new(-771.905884, 15.8500156, 1778.62488, 0.9998281, -1.29409053, 0.0185395367, 1.30805713, 1, -7.41208622, -0.0185395367, 7.65331964, 0.9998281), "http://www.roblox.com/asset/?id=17474866882")
--create_port_location(3, "", 0, "0")
--create_port_location(4, "oob")

TeleportTabTunnelsTitle = Instance.new("TextButton")
TeleportTabTunnelsTitle.Parent = TeleportTab
TeleportTabTunnelsTitle.Name = "tunnels title"
TeleportTabTunnelsTitle.LayoutOrder = 7
TeleportTabTunnelsTitle.BackgroundColor3 = Color3.new(0,0,0)
TeleportTabTunnelsTitle.BackgroundTransparency = .75
TeleportTabTunnelsTitle.Size = UDim2.new(.25,0,0,24)
TeleportTabTunnelsTitle.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
TeleportTabTunnelsTitle.TextSize = 18
TeleportTabTunnelsTitle.TextColor3 = Color3.new(1,1,1)
TeleportTabTunnelsTitle.TextTransparency = .25
TeleportTabTunnelsTitle.Text = "nn_tunnels"
TeleportTabTunnelsTitleCorner = Instance.new("UICorner")
TeleportTabTunnelsTitleCorner.Parent = TeleportTabTunnelsTitle
TeleportTabTunnelsTitleCorner.CornerRadius = UDim.new(0,4)

TeleportTabTunnelsTitle.MouseButton1Click:Connect(function()
	ReplicatedStorage.events.player.char.changezone:FireServer("nn_tunnels")
end)

TeleportTabAirport = Instance.new("Frame")
TeleportTabAirport.Parent = TeleportTab
TeleportTabAirport.Name = "nn_airport"
TeleportTabAirport.LayoutOrder = 9
TeleportTabAirport.AutomaticSize = Enum.AutomaticSize.Y
TeleportTabAirport.BackgroundColor3 = Color3.new(0,0,0)
TeleportTabAirport.BackgroundTransparency = .75
TeleportTabAirport.Size = UDim2.new(1,0,0,0)
TeleportTabAirportCorner = Instance.new("UICorner")
TeleportTabAirportCorner.Parent = TeleportTabAirport
TeleportTabAirportCorner.CornerRadius = UDim.new(0,4)
TeleportTabAirportLayout = Instance.new("UIGridLayout")
TeleportTabAirportLayout.Parent = TeleportTabAirport
TeleportTabAirportLayout.CellPadding = UDim2.new(0,8,0,8)
TeleportTabAirportLayout.CellSize = UDim2.new(.5,-8,0,96)
TeleportTabAirportLayout.SortOrder = Enum.SortOrder.LayoutOrder
TeleportTabAirportPadding = Instance.new("UIPadding")
TeleportTabAirportPadding.Parent = TeleportTabAirport
TeleportTabAirportPadding.PaddingBottom = UDim.new(0,8)
TeleportTabAirportPadding.PaddingLeft = UDim.new(0,8)
TeleportTabAirportPadding.PaddingRight = UDim.new(0,8)
TeleportTabAirportPadding.PaddingTop = UDim.new(0,8)

TeleportTabAirportTitle = Instance.new("TextButton")
TeleportTabAirportTitle.Parent = TeleportTab
TeleportTabAirportTitle.Name = "Airport title"
TeleportTabAirportTitle.LayoutOrder = 8
TeleportTabAirportTitle.BackgroundColor3 = Color3.new(0,0,0)
TeleportTabAirportTitle.BackgroundTransparency = .75
TeleportTabAirportTitle.Size = UDim2.new(.25,0,0,24)
TeleportTabAirportTitle.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
TeleportTabAirportTitle.TextSize = 18
TeleportTabAirportTitle.TextColor3 = Color3.new(1,1,1)
TeleportTabAirportTitle.TextTransparency = .25
TeleportTabAirportTitle.Text = "nn_airport"
TeleportTabAirportTitleCorner = Instance.new("UICorner")
TeleportTabAirportTitleCorner.Parent = TeleportTabAirportTitle
TeleportTabAirportTitleCorner.CornerRadius = UDim.new(0,4)
TeleportTabAirportButton = Instance.new("ImageButton")
TeleportTabAirportButton.Parent = TeleportTabAirportTitle
TeleportTabAirportButton.Position = UDim2.new(1,8,0,0)
TeleportTabAirportButton.Size = UDim2.new(0,24,0,24)
TeleportTabAirportButton.Image = "rbxassetid://0"
TeleportTabAirportButtonCorner = Instance.new("UICorner")
TeleportTabAirportButtonCorner.Parent = TeleportTabAirportButton
TeleportTabAirportButtonCorner.CornerRadius = UDim.new(0,4)
TeleportTabAirportButton.MouseButton1Click:Connect(function() TeleportTabAirport.Visible = not TeleportTabAirport.Visible end)

TeleportTabAirportTitle.MouseButton1Click:Connect(function()
	ReplicatedStorage.events.player.char.changezone:FireServer("nn_airport")
end)

function create_airport_location(order, name, position, imageid)
	local item = Instance.new("ImageButton")
	item.Parent = TeleportTabAirport
	item.LayoutOrder = order
	item.Name = name
	item.BackgroundTransparency = .95
	item.Image = imageid
	item.ImageTransparency = .5
	item.ScaleType = Enum.ScaleType.Crop
	local corner = Instance.new("UICorner")
	corner.Parent = item
	corner.CornerRadius = UDim.new(0,8)
	local nameLabel = Instance.new("TextLabel")
	nameLabel.Parent = item
	nameLabel.BackgroundColor3 = Color3.new(0,0,0)
	nameLabel.BackgroundTransparency = 1
	nameLabel.Position = UDim2.new(0,0,.5,-12)
	nameLabel.Size = UDim2.new(1,0,0,24)
	nameLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	nameLabel.Text = name
	nameLabel.TextColor3 = Color3.new(1,1,1)
	nameLabel.TextSize = 24
	nameLabel.TextTransparency = .25
	local nameLabelCorner = Instance.new("UICorner")
	nameLabelCorner.Parent = nameLabel
	nameLabelCorner.CornerRadius = UDim.new(0,8)
	item.MouseButton1Click:Connect(function()
		TeleportTo(position)
	end)
end

create_airport_location(1, "294", CFrame.new(-2470.46411, 42.3492088, 1260.07312, 0.997665048, 1.73115799, 0.0682969764, -1.11914222, 1, -8.9993577, -0.0682969764, 8.90191032, 0.997665048), "http://www.roblox.com/asset/?id=17474871389")
create_airport_location(2, "bathroom", CFrame.new(-3034.46777, 42.3492088, 1383.7196, -0.0121926069, 7.69074404, 0.999925792, -9.57878665, 1, -7.70299557, -0.999925792, -1.05172604, -0.0121926069), "http://www.roblox.com/asset/?id=17483675268")


TeleportTabBackrooms = Instance.new("Frame")
TeleportTabBackrooms.Parent = TeleportTab
TeleportTabBackrooms.Name = "nn_backrooms"
TeleportTabBackrooms.LayoutOrder = 11
TeleportTabBackrooms.AutomaticSize = Enum.AutomaticSize.Y
TeleportTabBackrooms.BackgroundColor3 = Color3.new(0,0,0)
TeleportTabBackrooms.BackgroundTransparency = .75
TeleportTabBackrooms.Size = UDim2.new(1,0,0,0)
TeleportTabBackroomsCorner = Instance.new("UICorner")
TeleportTabBackroomsCorner.Parent = TeleportTabBackrooms
TeleportTabBackroomsCorner.CornerRadius = UDim.new(0,4)
TeleportTabBackroomsLayout = Instance.new("UIGridLayout")
TeleportTabBackroomsLayout.Parent = TeleportTabBackrooms
TeleportTabBackroomsLayout.CellPadding = UDim2.new(0,8,0,8)
TeleportTabBackroomsLayout.CellSize = UDim2.new(.5,-8,0,96)
TeleportTabBackroomsLayout.SortOrder = Enum.SortOrder.LayoutOrder
TeleportTabBackroomsPadding = Instance.new("UIPadding")
TeleportTabBackroomsPadding.Parent = TeleportTabBackrooms
TeleportTabBackroomsPadding.PaddingBottom = UDim.new(0,8)
TeleportTabBackroomsPadding.PaddingLeft = UDim.new(0,8)
TeleportTabBackroomsPadding.PaddingRight = UDim.new(0,8)
TeleportTabBackroomsPadding.PaddingTop = UDim.new(0,8)

TeleportTabBackroomsTitle = Instance.new("TextButton")
TeleportTabBackroomsTitle.Parent = TeleportTab
TeleportTabBackroomsTitle.Name = "backrooms title"
TeleportTabBackroomsTitle.LayoutOrder = 10
TeleportTabBackroomsTitle.BackgroundColor3 = Color3.new(0,0,0)
TeleportTabBackroomsTitle.BackgroundTransparency = .75
TeleportTabBackroomsTitle.Size = UDim2.new(.25,0,0,24)
TeleportTabBackroomsTitle.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
TeleportTabBackroomsTitle.TextSize = 18
TeleportTabBackroomsTitle.TextColor3 = Color3.new(1,1,1)
TeleportTabBackroomsTitle.TextTransparency = .25
TeleportTabBackroomsTitle.Text = "nn_backrooms"
TeleportTabBackroomsTitleCorner = Instance.new("UICorner")
TeleportTabBackroomsTitleCorner.Parent = TeleportTabBackroomsTitle
TeleportTabBackroomsTitleCorner.CornerRadius = UDim.new(0,4)
TeleportTabBackroomsButton = Instance.new("ImageButton")
TeleportTabBackroomsButton.Parent = TeleportTabBackroomsTitle
TeleportTabBackroomsButton.Position = UDim2.new(1,8,0,0)
TeleportTabBackroomsButton.Size = UDim2.new(0,24,0,24)
TeleportTabBackroomsButton.Image = "rbxassetid://0"
TeleportTabBackroomsButtonCorner = Instance.new("UICorner")
TeleportTabBackroomsButtonCorner.Parent = TeleportTabBackroomsButton
TeleportTabBackroomsButtonCorner.CornerRadius = UDim.new(0,4)
TeleportTabBackroomsButton.MouseButton1Click:Connect(function() TeleportTabBackrooms.Visible = not TeleportTabBackrooms.Visible end)

TeleportTabBackroomsTitle.MouseButton1Click:Connect(function()
	ReplicatedStorage.events.player.char.changezone:FireServer("nn_backrooms")
end)

function create_backrooms_location(order, name, position, imageid)
	local item = Instance.new("ImageButton")
	item.Parent = TeleportTabBackrooms
	item.LayoutOrder = order
	item.Name = name
	item.BackgroundTransparency = .95
	item.Image = imageid
	item.ImageTransparency = .5
	item.ScaleType = Enum.ScaleType.Crop
	local corner = Instance.new("UICorner")
	corner.Parent = item
	corner.CornerRadius = UDim.new(0,8)
	local nameLabel = Instance.new("TextLabel")
	nameLabel.Parent = item
	nameLabel.BackgroundColor3 = Color3.new(0,0,0)
	nameLabel.BackgroundTransparency = 1
	nameLabel.Position = UDim2.new(0,0,.5,-12)
	nameLabel.Size = UDim2.new(1,0,0,24)
	nameLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	nameLabel.Text = name
	nameLabel.TextColor3 = Color3.new(1,1,1)
	nameLabel.TextSize = 24
	nameLabel.TextTransparency = .25
	local nameLabelCorner = Instance.new("UICorner")
	nameLabelCorner.Parent = nameLabel
	nameLabelCorner.CornerRadius = UDim.new(0,8)
	item.MouseButton1Click:Connect(function()
		TeleportTo(position)
	end)
end

create_backrooms_location(1, "entrance", CFrame.new(-1325.32349, -91.8500137, 66.3444366, -0.991455197, 2.28788194, -0.130448058, 2.25675814, 1, 3.86418125, 0.130448058, 8.87265296, -0.991455197), "http://www.roblox.com/asset/?id=17483450780")
create_backrooms_location(2, "pitfalls", CFrame.new(-1887.69922, -91.8500137, 54.8085022, -0.604520202, 1.57281313, -0.796589732, 2.12267134, 1, 3.63568934, 0.796589732, -1.47111348, -0.604520202), "http://www.roblox.com/asset/?id=17483455185")
create_backrooms_location(3, "thing", CFrame.new(-1565.27771, -91.8500137, 465.841797, 0.99999088, -2.75231201, -0.00427017687, 2.75435167, 1, 4.71772205, 0.00427017687, -4.83529446, 0.99999088), "http://www.roblox.com/asset/?id=17483457814")


TeleportTabHotel = Instance.new("Frame")
TeleportTabHotel.Parent = TeleportTab
TeleportTabHotel.Name = "nn_hotel"
TeleportTabHotel.LayoutOrder = 13
TeleportTabHotel.AutomaticSize = Enum.AutomaticSize.Y
TeleportTabHotel.BackgroundColor3 = Color3.new(0,0,0)
TeleportTabHotel.BackgroundTransparency = .75
TeleportTabHotel.Size = UDim2.new(1,0,0,0)
TeleportTabHotelCorner = Instance.new("UICorner")
TeleportTabHotelCorner.Parent = TeleportTabHotel
TeleportTabHotelCorner.CornerRadius = UDim.new(0,4)
TeleportTabHotelLayout = Instance.new("UIGridLayout")
TeleportTabHotelLayout.Parent = TeleportTabHotel
TeleportTabHotelLayout.CellPadding = UDim2.new(0,8,0,8)
TeleportTabHotelLayout.CellSize = UDim2.new(.5,-8,0,96)
TeleportTabHotelLayout.SortOrder = Enum.SortOrder.LayoutOrder
TeleportTabHotelPadding = Instance.new("UIPadding")
TeleportTabHotelPadding.Parent = TeleportTabHotel
TeleportTabHotelPadding.PaddingBottom = UDim.new(0,8)
TeleportTabHotelPadding.PaddingLeft = UDim.new(0,8)
TeleportTabHotelPadding.PaddingRight = UDim.new(0,8)
TeleportTabHotelPadding.PaddingTop = UDim.new(0,8)
if game.ReplicatedStorage.maps:FindFirstChild("nn_hotel") then
	local map = game.ReplicatedStorage.maps.nn_hotel
	map.Parent = game.Workspace
	map.Name = "nn_hotel_zones"
end

TeleportTabHotelTitle = Instance.new("TextButton")
TeleportTabHotelTitle.Parent = TeleportTab
TeleportTabHotelTitle.Name = "hotel title"
TeleportTabHotelTitle.LayoutOrder = 12
TeleportTabHotelTitle.BackgroundColor3 = Color3.new(0,0,0)
TeleportTabHotelTitle.BackgroundTransparency = .75
TeleportTabHotelTitle.Size = UDim2.new(.25,0,0,24)
TeleportTabHotelTitle.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
TeleportTabHotelTitle.TextSize = 18
TeleportTabHotelTitle.TextColor3 = Color3.new(1,1,1)
TeleportTabHotelTitle.TextTransparency = .25
TeleportTabHotelTitle.Text = "nn_hotel"
TeleportTabHotelTitleCorner = Instance.new("UICorner")
TeleportTabHotelTitleCorner.Parent = TeleportTabHotelTitle
TeleportTabHotelTitleCorner.CornerRadius = UDim.new(0,4)
TeleportTabHotelButton = Instance.new("ImageButton")
TeleportTabHotelButton.Parent = TeleportTabHotelTitle
TeleportTabHotelButton.Position = UDim2.new(1,8,0,0)
TeleportTabHotelButton.Size = UDim2.new(0,24,0,24)
TeleportTabHotelButton.Image = "rbxassetid://0"
TeleportTabHotelButtonCorner = Instance.new("UICorner")
TeleportTabHotelButtonCorner.Parent = TeleportTabHotelButton
TeleportTabHotelButtonCorner.CornerRadius = UDim.new(0,4)
TeleportTabHotelButton.MouseButton1Click:Connect(function() TeleportTabHotel.Visible = not TeleportTabHotel.Visible end)

TeleportTabHotelTitle.MouseButton1Click:Connect(function()
	ReplicatedStorage.events.player.char.changezone:FireServer("nn_hotel")
end)

function create_hotel_location(order, name, position, imageid)
	local item = Instance.new("ImageButton")
	item.Parent = TeleportTabHotel
	item.LayoutOrder = order
	item.Name = name
	item.BackgroundTransparency = .95
	item.Image = imageid
	item.ImageTransparency = .5
	item.ScaleType = Enum.ScaleType.Crop
	local corner = Instance.new("UICorner")
	corner.Parent = item
	corner.CornerRadius = UDim.new(0,8)
	local nameLabel = Instance.new("TextLabel")
	nameLabel.Parent = item
	nameLabel.BackgroundColor3 = Color3.new(0,0,0)
	nameLabel.BackgroundTransparency = 1
	nameLabel.Position = UDim2.new(0,0,.5,-12)
	nameLabel.Size = UDim2.new(1,0,0,24)
	nameLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	nameLabel.Text = name
	nameLabel.TextColor3 = Color3.new(1,1,1)
	nameLabel.TextSize = 24
	nameLabel.TextTransparency = .25
	local nameLabelCorner = Instance.new("UICorner")
	nameLabelCorner.Parent = nameLabel
	nameLabelCorner.CornerRadius = UDim.new(0,8)
	item.MouseButton1Click:Connect(function()
		ReplicatedStorage.events.player.char.changezone:FireServer("nn_hotel")
		TeleportTo(position)
	end)
end

create_hotel_location(1, "room", CFrame.new(-1709.1908, 327.812012, -483.475159, 0.0724207163, 2.81842305, -0.997374296, -3.093229, 1, 2.60123917, 0.997374296, 2.89672298, 0.0724207163), "http://www.roblox.com/asset/?id=17483496833")
create_hotel_location(2, "slides", CFrame.new(-1456.30688, 263.811493, -510.555298, -0.99990510, 5.120748449, -0.013770123, 5.17875758, 1, -4.17701316, 0.013770123, -4.24792943, -0.999905109), "http://www.roblox.com/asset/?id=17483499340")
create_hotel_location(3, "placeholder", CFrame.new(-1675.32336, 196.811508, -655.481445, -0.182979941, -0, -0.983116806, 0, 1, -0, 0.983116806, 0, -0.182979941), "http://www.roblox.com/asset/?id=17483509567")


TeleportTabPoolrooms = Instance.new("Frame")
TeleportTabPoolrooms.Parent = TeleportTab
TeleportTabPoolrooms.Name = "nn_poolrooms"
TeleportTabPoolrooms.LayoutOrder = 15
TeleportTabPoolrooms.AutomaticSize = Enum.AutomaticSize.Y
TeleportTabPoolrooms.BackgroundColor3 = Color3.new(0,0,0)
TeleportTabPoolrooms.BackgroundTransparency = .75
TeleportTabPoolrooms.Size = UDim2.new(1,0,0,0)
TeleportTabPoolroomsCorner = Instance.new("UICorner")
TeleportTabPoolroomsCorner.Parent = TeleportTabPoolrooms
TeleportTabPoolroomsCorner.CornerRadius = UDim.new(0,4)
TeleportTabPoolroomsLayout = Instance.new("UIGridLayout")
TeleportTabPoolroomsLayout.Parent = TeleportTabPoolrooms
TeleportTabPoolroomsLayout.CellPadding = UDim2.new(0,8,0,8)
TeleportTabPoolroomsLayout.CellSize = UDim2.new(.5,-8,0,96)
TeleportTabPoolroomsLayout.SortOrder = Enum.SortOrder.LayoutOrder
TeleportTabPoolroomsPadding = Instance.new("UIPadding")
TeleportTabPoolroomsPadding.Parent = TeleportTabPoolrooms
TeleportTabPoolroomsPadding.PaddingBottom = UDim.new(0,8)
TeleportTabPoolroomsPadding.PaddingLeft = UDim.new(0,8)
TeleportTabPoolroomsPadding.PaddingRight = UDim.new(0,8)
TeleportTabPoolroomsPadding.PaddingTop = UDim.new(0,8)
if game.ReplicatedStorage.maps:FindFirstChild("nn_poolrooms") then
	local map = game.ReplicatedStorage.maps.nn_poolrooms
  map.Parent = game.Workspace
  map.Name = "nn_poolrooms_zones"
end

TeleportTabPoolroomsTitle = Instance.new("TextButton")
TeleportTabPoolroomsTitle.Parent = TeleportTab
TeleportTabPoolroomsTitle.Name = "polrooms title"
TeleportTabPoolroomsTitle.LayoutOrder = 14
TeleportTabPoolroomsTitle.BackgroundColor3 = Color3.new(0,0,0)
TeleportTabPoolroomsTitle.BackgroundTransparency = .75
TeleportTabPoolroomsTitle.Size = UDim2.new(.25,0,0,24)
TeleportTabPoolroomsTitle.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
TeleportTabPoolroomsTitle.TextSize = 18
TeleportTabPoolroomsTitle.TextColor3 = Color3.new(1,1,1)
TeleportTabPoolroomsTitle.TextTransparency = .25
TeleportTabPoolroomsTitle.Text = "nn_poolrooms"
TeleportTabPoolroomsTitleCorner = Instance.new("UICorner")
TeleportTabPoolroomsTitleCorner.Parent = TeleportTabPoolroomsTitle
TeleportTabPoolroomsTitleCorner.CornerRadius = UDim.new(0,4)
TeleportTabPoolroomsButton = Instance.new("ImageButton")
TeleportTabPoolroomsButton.Parent = TeleportTabPoolroomsTitle
TeleportTabPoolroomsButton.Position = UDim2.new(1,8,0,0)
TeleportTabPoolroomsButton.Size = UDim2.new(0,24,0,24)
TeleportTabPoolroomsButton.Image = "rbxassetid://0"
TeleportTabPoolroomsButtonCorner = Instance.new("UICorner")
TeleportTabPoolroomsButtonCorner.Parent = TeleportTabPoolroomsButton
TeleportTabPoolroomsButtonCorner.CornerRadius = UDim.new(0,4)
TeleportTabPoolroomsButton.MouseButton1Click:Connect(function() TeleportTabPoolrooms.Visible = not TeleportTabPoolrooms.Visible end)

TeleportTabPoolroomsTitle.MouseButton1Click:Connect(function()
	ReplicatedStorage.events.player.char.changezone:FireServer("nn_poolrooms")
end)

function create_poolrooms_location(order, name, position, imageid)
	local item = Instance.new("ImageButton")
	item.Parent = TeleportTabPoolrooms
	item.LayoutOrder = order
	item.Name = name
	item.BackgroundTransparency = .95
	item.Image = imageid
	item.ImageTransparency = .5
	item.ScaleType = Enum.ScaleType.Crop
	local corner = Instance.new("UICorner")
	corner.Parent = item
	corner.CornerRadius = UDim.new(0,8)
	local nameLabel = Instance.new("TextLabel")
	nameLabel.Parent = item
	nameLabel.BackgroundColor3 = Color3.new(0,0,0)
	nameLabel.BackgroundTransparency = 1
	nameLabel.Position = UDim2.new(0,0,.5,-12)
	nameLabel.Size = UDim2.new(1,0,0,24)
	nameLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	nameLabel.Text = name
	nameLabel.TextColor3 = Color3.new(1,1,1)
	nameLabel.TextSize = 24
	nameLabel.TextTransparency = .25
	local nameLabelCorner = Instance.new("UICorner")
	nameLabelCorner.Parent = nameLabel
	nameLabelCorner.CornerRadius = UDim.new(0,8)
	item.MouseButton1Click:Connect(function()
		ReplicatedStorage.events.player.char.changezone:FireServer("nn_poolrooms")
		TeleportTo(position)
	end)
end

create_poolrooms_location(1, "first floor", CFrame.new(-1673.80664, 450.980042, -675.300781, -0.99971199, 1.83698047, -0.0240119398, 1.82998144, 1, 3.13459577, 0.0240119398, 2.69427787, -0.99971199), "http://www.roblox.com/asset/?id=17483634427")
create_poolrooms_location(2, "second floor", CFrame.new(-1598.83215, 472.980103, -636.565491, -0.999927044, 2.03088897, -0.0120858233, 2.02684312, 1, 3.47019605, 0.0120858233, 3.22498213, -0.999927044), "http://www.roblox.com/asset/?id=17483636298")
create_poolrooms_location(3, "third floor", CFrame.new(-1966.91895, 492.043915, -295.449005, 0.00704681873, 1.26439086, -0.999975264, 2.2325546, 1, 1.2801552, 0.999975264, -2.24152044, 0.00704681873), "http://www.roblox.com/asset/?id=17483639103")



TeleportTabFlatgrassTitle = Instance.new("TextButton")
TeleportTabFlatgrassTitle.Parent = TeleportTab
TeleportTabFlatgrassTitle.Name = "flatgrass title"
TeleportTabFlatgrassTitle.LayoutOrder = 16
TeleportTabFlatgrassTitle.BackgroundColor3 = Color3.new(0,0,0)
TeleportTabFlatgrassTitle.BackgroundTransparency = .75
TeleportTabFlatgrassTitle.Size = UDim2.new(.25,0,0,24)
TeleportTabFlatgrassTitle.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
TeleportTabFlatgrassTitle.TextSize = 18
TeleportTabFlatgrassTitle.TextColor3 = Color3.new(1,1,1)
TeleportTabFlatgrassTitle.TextTransparency = .25
TeleportTabFlatgrassTitle.Text = "nn_flatgrass"
TeleportTabFlatgrassTitleCorner = Instance.new("UICorner")
TeleportTabFlatgrassTitleCorner.Parent = TeleportTabFlatgrassTitle
TeleportTabFlatgrassTitleCorner.CornerRadius = UDim.new(0,4)

TeleportTabFlatgrassTitle.MouseButton1Click:Connect(function()
	ReplicatedStorage.events.player.char.changezone:FireServer("nn_flatgrass")
end)

TeleportTabPlaygroundTitle = Instance.new("TextButton")
TeleportTabPlaygroundTitle.Parent = TeleportTab
TeleportTabPlaygroundTitle.Name = "playground title"
TeleportTabPlaygroundTitle.LayoutOrder = 17
TeleportTabPlaygroundTitle.BackgroundColor3 = Color3.new(0,0,0)
TeleportTabPlaygroundTitle.BackgroundTransparency = .75
TeleportTabPlaygroundTitle.Size = UDim2.new(.25,0,0,24)
TeleportTabPlaygroundTitle.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
TeleportTabPlaygroundTitle.TextSize = 18
TeleportTabPlaygroundTitle.TextColor3 = Color3.new(1,1,1)
TeleportTabPlaygroundTitle.TextTransparency = .25
TeleportTabPlaygroundTitle.Text = "nn_playground"
TeleportTabPlaygroundTitleCorner = Instance.new("UICorner")
TeleportTabPlaygroundTitleCorner.Parent = TeleportTabPlaygroundTitle
TeleportTabPlaygroundTitleCorner.CornerRadius = UDim.new(0,4)

TeleportTabPlaygroundTitle.MouseButton1Click:Connect(function()
	ReplicatedStorage.events.player.char.changezone:FireServer("nn_playground")
end)

TeleportTabBigmazeTitle = Instance.new("TextButton")
TeleportTabBigmazeTitle.Parent = TeleportTab
TeleportTabBigmazeTitle.Name = "bigmaze title"
TeleportTabBigmazeTitle.LayoutOrder = 18
TeleportTabBigmazeTitle.BackgroundColor3 = Color3.new(0,0,0)
TeleportTabBigmazeTitle.BackgroundTransparency = .75
TeleportTabBigmazeTitle.Size = UDim2.new(.25,0,0,24)
TeleportTabBigmazeTitle.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
TeleportTabBigmazeTitle.TextSize = 18
TeleportTabBigmazeTitle.TextColor3 = Color3.new(1,1,1)
TeleportTabBigmazeTitle.TextTransparency = .25
TeleportTabBigmazeTitle.Text = "nn_bigmaze"
TeleportTabBigmazeTitleCorner = Instance.new("UICorner")
TeleportTabBigmazeTitleCorner.Parent = TeleportTabBigmazeTitle
TeleportTabBigmazeTitleCorner.CornerRadius = UDim.new(0,4)

TeleportTabBigmazeTitle.MouseButton1Click:Connect(function()
	ReplicatedStorage.events.player.char.changezone:FireServer("nn_bigmaze")
end)

TeleportTabDreammazeTitle = Instance.new("TextButton")
TeleportTabDreammazeTitle.Parent = TeleportTab
TeleportTabDreammazeTitle.Name = "dreammaze title"
TeleportTabDreammazeTitle.LayoutOrder = 19
TeleportTabDreammazeTitle.BackgroundColor3 = Color3.new(0,0,0)
TeleportTabDreammazeTitle.BackgroundTransparency = .75
TeleportTabDreammazeTitle.Size = UDim2.new(.25,0,0,24)
TeleportTabDreammazeTitle.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
TeleportTabDreammazeTitle.TextSize = 18
TeleportTabDreammazeTitle.TextColor3 = Color3.new(1,1,1)
TeleportTabDreammazeTitle.TextTransparency = .25
TeleportTabDreammazeTitle.Text = "nn_dreammaze"
TeleportTabDreammazeTitleCorner = Instance.new("UICorner")
TeleportTabDreammazeTitleCorner.Parent = TeleportTabDreammazeTitle
TeleportTabDreammazeTitleCorner.CornerRadius = UDim.new(0,4)

TeleportTabDreammazeTitle.MouseButton1Click:Connect(function()
	ReplicatedStorage.events.player.char.changezone:FireServer("nn_dreammaze")
	for player in game.Players:GetPlayers() do Instance.new("Highlight").Parent = game.Workspace[player.Name] end
end)




















AutoTab = Instance.new("ScrollingFrame")
AutoTab.Parent = TabContainer
AutoTab.Name = "Auto Tab"
AutoTab.Visible = false
AutoTab.BackgroundTransparency = 1
AutoTab.BorderSizePixel = 0
AutoTab.CanvasSize = UDim2.new(0,0,1,0)
AutoTab.AutomaticCanvasSize = Enum.AutomaticSize.Y
AutoTab.Size = UDim2.new(1,0,1,0)
AutoTab.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
AutoTab.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
AutoTab.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
AutoTab.ElasticBehavior = Enum.ElasticBehavior.Always
AutoTab.ScrollBarImageTransparency = .75
AutoTab.ScrollBarThickness = 6
AutoTab.ScrollingDirection = Enum.ScrollingDirection.Y
AutoTab.ClipsDescendants = true

AutoTabLayout = Instance.new("UIGridLayout")
AutoTabLayout.Parent = AutoTab
AutoTabLayout.CellPadding = UDim2.new(0,5,0,5)
AutoTabLayout.CellSize = UDim2.new(.5,-4,0,28)
AutoTabPadding = Instance.new("UIPadding")
AutoTabPadding.Parent = AutoTab
AutoTabPadding.PaddingLeft = UDim.new(0,8)
AutoTabPadding.PaddingRight = UDim.new(0,8)
AutoTabPadding.PaddingBottom = UDim.new(0,8)
AutoTabPadding.PaddingTop = UDim.new(0,8)

AutoTabFarm = Instance.new("TextLabel")
AutoTabFarm.Parent = AutoTab
AutoTabFarm.BackgroundTransparency = .75
AutoTabFarm.BackgroundColor3 = Color3.new(0,0,0)
AutoTabFarm.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
AutoTabFarm.Text = "auto farm"
AutoTabFarm.TextSize = 18
AutoTabFarm.TextColor3 = Color3.new(1,1,1)
AutoTabFarm.TextTransparency = .25
AutoTabFarmCorner = Instance.new("UICorner")
AutoTabFarmCorner.Parent = AutoTabFarm
AutoTabFarmCorner.CornerRadius = UDim.new(0,4)
AutoTabFarmPadding = Instance.new("UIPadding")
AutoTabFarmPadding.Parent = AutoTabFarm
AutoTabFarmPadding.PaddingLeft = UDim.new(0,4)
AutoTabFarmPadding.PaddingRight = UDim.new(0,4)
AutoTabFarmCheckbox = Instance.new("ImageButton")
AutoTabFarmCheckbox.Parent = AutoTabFarm
AutoTabFarmCheckbox.BackgroundTransparency = 1
AutoTabFarmCheckbox.Position = UDim2.new(1,0,.5,0)
AutoTabFarmCheckbox.AnchorPoint = Vector2.new(1,.5)
AutoTabFarmCheckbox.Size = UDim2.new(0,24,0,24)
AutoTabFarmCheckbox.Image = "rbxassetid://12483103360"
AutoTabFarmCheckbox.ImageRectOffset = Vector2.new(24,0)
AutoTabFarmCheckbox.ImageRectSize = Vector2.new(24,24)
AutoTabFarmCheckbox:SetAttribute("Value", false)
AutoTabFarmCheckbox.MouseButton1Click:Connect(function()
	AutoTabFarmCheckbox:SetAttribute("Value", not AutoTabFarmCheckbox:GetAttribute("Value"))
	AutoTabFarmCheckbox.ImageRectOffset = Vector2.new(24,0)
	if AutoTabFarmCheckbox:GetAttribute("Value") then
		AutoTabFarmCheckbox.ImageRectOffset = Vector2.zero
	end

	local TweenService = game:GetService("TweenService")
	local Player = game.Players.LocalPlayer

	local radius = 500
	local verticies = 150
	local duration = 0.5
	local function moveTo(root, hum, pos)
		local tweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
		local tween = TweenService:Create(root, tweenInfo, {CFrame = CFrame.new(pos), Velocity = Vector3.new(120, 50, 0)})
		hum:ChangeState(Enum.HumanoidStateType.Jumping)
		--hum:SetStateEnabled(Enum.HumanoidStateType.Freefall, false)
		tween:Play()
		tween.Completed:Wait()
		task.wait()
		hum:ChangeState(Enum.HumanoidStateType.Landed)
		task.wait()
		hum:ChangeState(Enum.HumanoidStateType.Running)
	end
	local root = Player.Character and Player.Character:FindFirstChild("HumanoidRootPart")
	local center = root.Position + Vector3.new(0,100,0)
	while AutoTabFarmCheckbox:GetAttribute("Value") == true do
		local hum = Player.Character and Player.Character:FindFirstChild("Humanoid")
		if not root or not hum then continue end
		for angle = 0, 360, 360/verticies do
			local x = math.cos(math.rad(angle)) * radius
			local z = math.sin(math.rad(angle)) * radius
			local newPosition = center + Vector3.new(x, 0, z)
			if AutoTabFarmCheckbox:GetAttribute("Value") == true then
				moveTo(root, hum, newPosition)
			end
		end
		moveTo(root, hum, center)

		wait()
	end
end)

AutoTabPunch = Instance.new("TextLabel")
AutoTabPunch.Parent = AutoTab
AutoTabPunch.BackgroundTransparency = .75
AutoTabPunch.BackgroundColor3 = Color3.new(0,0,0)
AutoTabPunch.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
AutoTabPunch.Text = "auto punch"
AutoTabPunch.TextSize = 18
AutoTabPunch.TextColor3 = Color3.new(1,1,1)
AutoTabPunch.TextTransparency = .25
AutoTabPunchCorner = Instance.new("UICorner")
AutoTabPunchCorner.Parent = AutoTabPunch
AutoTabPunchCorner.CornerRadius = UDim.new(0,4)
AutoTabPunchPadding = Instance.new("UIPadding")
AutoTabPunchPadding.Parent = AutoTabPunch
AutoTabPunchPadding.PaddingLeft = UDim.new(0,4)
AutoTabPunchPadding.PaddingRight = UDim.new(0,4)
AutoTabPunchCheckbox = Instance.new("ImageButton")
AutoTabPunchCheckbox.Parent = AutoTabPunch
AutoTabPunchCheckbox.BackgroundTransparency = 1
AutoTabPunchCheckbox.Position = UDim2.new(1,0,.5,0)
AutoTabPunchCheckbox.AnchorPoint = Vector2.new(1,.5)
AutoTabPunchCheckbox.Size = UDim2.new(0,24,0,24)
AutoTabPunchCheckbox.Image = "rbxassetid://12483103360"
AutoTabPunchCheckbox.ImageRectOffset = Vector2.new(24,0)
AutoTabPunchCheckbox.ImageRectSize = Vector2.new(24,24)
AutoTabPunchCheckbox:SetAttribute("Value", false)
AutoTabPunchCheckbox.MouseButton1Click:Connect(function()
	AutoTabPunchCheckbox:SetAttribute("Value", not AutoTabPunchCheckbox:GetAttribute("Value"))
	AutoTabPunchCheckbox.ImageRectOffset = Vector2.new(24,0)
	if AutoTabPunchCheckbox:GetAttribute("Value") then
		AutoTabPunchCheckbox.ImageRectOffset = Vector2.zero
		task.spawn(function()
			while AutoTabPunchCheckbox:GetAttribute("Value") == true do
				game:GetService("ReplicatedStorage").events.player["local"].punch:FireServer()
				task.wait()
			end
		end)
	end
end)

AutoTabOutbreak = Instance.new("TextButton")
AutoTabOutbreak.Parent = AutoTab
AutoTabOutbreak.BackgroundTransparency = .75
AutoTabOutbreak.BackgroundColor3 = Color3.new(0,0,0)
AutoTabOutbreak.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
AutoTabOutbreak.Text = "complete outbreak"
AutoTabOutbreak.TextSize = 18
AutoTabOutbreak.TextColor3 = Color3.new(1,1,1)
AutoTabOutbreak.TextTransparency = .25
AutoTabOutbreakCorner = Instance.new("UICorner")
AutoTabOutbreakCorner.Parent = AutoTabOutbreak
AutoTabOutbreakCorner.CornerRadius = UDim.new(0,4)
AutoTabOutbreakPadding = Instance.new("UIPadding")
AutoTabOutbreakPadding.Parent = AutoTabOutbreak
AutoTabOutbreakPadding.PaddingLeft = UDim.new(0,4)
AutoTabOutbreakPadding.PaddingRight = UDim.new(0,4)
AutoTabOutbreak.MouseButton1Click:Connect(function()
	--local RMap = game.Players.LocalPlayer.Team
	--function getTeam(Value)
	--	if game.Players.LocalPlayer.Team == nil then
	--		RMap = game.workspace.currentMap:FindFirstChildOfClass("Folder")
	--		getgenv().arcade = true
	--	elseif game.Players.LocalPlayer.Team ~= RMap then
	--		RMap = game.Players.LocalPlayer.Team
	--	end
	--end
	--getTeam()
	--print(getgenv().arcade)
	--if getgenv().arcade == false then
	--	holder = workspace[tostring(RMap)].canisterfillup.generator
	--else
	--	holder = workspace.currentMap[tostring(RMap)].canisterfillup.generator
	--end
	--if holder.CanCollide == true then
	--	print(holder)
	--	print(RMap, "outbreak")
	--	while holder.CanCollide == true do
	--		local cani = workspace.canisters:FindFirstChild("GasCanister")
	--		print(cani)
	--		TeleportTo(cani.Handle.CFrame)
	--		wait(0.3)
	--		fireproximityprompt(cani.Handle.Model.Body.PromptContainer.ProximityPrompt)
	--		wait(math.random(0.8, 1.5))
	--		teleportTo(holder.CFrame)	
	--		wait(math.random(0.5, 1.5))
	--	end
	--else
	--	print(RMap, "no outbreak")
	--end
end)

ScriptsTab = Instance.new("ScrollingFrame")
ScriptsTab.Parent = TabContainer
ScriptsTab.Name = "Scripts Tab"
ScriptsTab.Visible = false
ScriptsTab.BackgroundTransparency = 1
ScriptsTab.BorderSizePixel = 0
ScriptsTab.CanvasSize = UDim2.new(0,0,1,0)
ScriptsTab.AutomaticCanvasSize = Enum.AutomaticSize.Y
ScriptsTab.Size = UDim2.new(1,0,1,0)
ScriptsTab.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
ScriptsTab.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
ScriptsTab.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
ScriptsTab.ElasticBehavior = Enum.ElasticBehavior.Always
ScriptsTab.ScrollBarImageTransparency = .75
ScriptsTab.ScrollBarThickness = 6
ScriptsTab.ScrollingDirection = Enum.ScrollingDirection.Y
ScriptsTab.ClipsDescendants = true

ScriptsTabLayout = Instance.new("UIListLayout")
ScriptsTabLayout.Parent = ScriptsTab
ScriptsTabLayout.Padding = UDim.new(0,12)
ScriptsTabLayout.SortOrder = Enum.SortOrder.LayoutOrder
ScriptsTabPadding = Instance.new("UIPadding")
ScriptsTabPadding.Parent = ScriptsTab
ScriptsTabPadding.PaddingLeft = UDim.new(0,8)
ScriptsTabPadding.PaddingRight = UDim.new(0,8)
ScriptsTabPadding.PaddingBottom = UDim.new(0,8)
ScriptsTabPadding.PaddingTop = UDim.new(0,8)

ScriptsTabNnb = Instance.new("Frame", ScriptsTab)
ScriptsTabNnb.BackgroundTransparency = .75
ScriptsTabNnb.BackgroundColor3 = Color3.new(0,0,0)
ScriptsTabNnb.Size = UDim2.new(1,-4,0,0)
ScriptsTabNnb.LayoutOrder = 1
ScriptsTabNnb.AutomaticSize = Enum.AutomaticSize.Y
ScriptsTabNnbLayout = Instance.new("UIGridLayout", ScriptsTabNnb)
ScriptsTabNnbLayout.CellPadding = UDim2.new(0,6,0,8)
ScriptsTabNnbLayout.CellSize = UDim2.new(.5,-6,0,24)
ScriptsTabPadding:Clone().Parent = ScriptsTabNnb

function create_script(name, order, callback, arg1t, arg1s, arg1def, arg1ph, arg1n, arg2t, arg2s, arg2def, arg2ph, arg2n)
	local button = Instance.new("TextButton", ScriptsTabNnb)
	button.Name = name
	button.BackgroundColor3 = Color3.new(0,0,0)
	button.BackgroundTransparency = .5
	button.Text = name
	button.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
	button.TextSize = 18
	button.TextColor3 = Color3.new(1,1,1)
	button.TextTransparency = .25
	Instance.new("UICorner", button).CornerRadius = UDim.new(0,4)
	local buttonpadding = Instance.new("UIPadding", button)
	buttonpadding.PaddingLeft = UDim.new(0,4)
	buttonpadding.PaddingRight = UDim.new(0,4)
	
	if not (arg1s == 0) then
		button.TextXAlignment = Enum.TextXAlignment.Left
		local arg1 = Instance.new("ImageLabel", button)
		arg1.Name = "arg1"
		arg1.AnchorPoint = Vector2.new(1,.5)
		arg1.BackgroundTransparency = 1
		arg1.Position = UDim2.new(1,-arg2s - 4,.5,0)
		arg1.Size = UDim2.new(0,arg1s,0,28)
		arg1.Image = "rbxassetid://12483103360"
		arg1.ImageRectOffset = Vector2.new(24,0)
		arg1.ImageRectSize = Vector2.new(24,24)
		arg1.ImageTransparency = .25
		arg1.ScaleType = Enum.ScaleType.Slice
		arg1.SliceCenter = Rect.new(8,8,18,18)
		arg1.SliceScale = 1
		if arg1t == "textbox" then
			local arg1box = Instance.new("TextBox", arg1)
			arg1box.BackgroundTransparency = 1
			arg1box.Position = UDim2.new(0,5,0,5)
			arg1box.Size = UDim2.new(1,-10,1,-10)
			arg1box.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
			arg1box.TextColor3 = Color3.new(1,1,1)
			arg1box.PlaceholderColor3 = Color3.new(.5,.5,.5)
			arg1box.PlaceholderText = arg1ph
			arg1box.Text = arg1def
			arg1box.TextSize = 16
			arg1box.TextTransparency = .25
		else
			local arg1box = Instance.new("ImageButton", arg1)
			arg1box.Name = "arg1"
			arg1box.AnchorPoint = Vector2.new(1,.5)
			arg1box.BackgroundTransparency = 1
			arg1box.Position = UDim2.new(1,0,.5,0)
			arg1box.Size = UDim2.new(0,24,0,24)
			arg1box.Image = "rbxassetid://12483103360"
			arg1box.ImageRectOffset = Vector2.new(24,0)
			arg1box.ImageRectSize = Vector2.new(24,24)
			arg1.Image = "0"
			arg1.MouseButton1Click:Connect(function()
				arg1box:SetAttribute("Active", not arg1box:GetAttribute("Active"))
				if arg1box:GetAttribute("Active") then 
					arg1box.ImageRectOffset = Vector2.new(0,0)
				else
					arg1box.ImageRectOffset = Vector2.new(24,0)
				end
			end)
		end
	end
	
	if not (arg2s == 0) then
		local arg2 = Instance.new("ImageLabel", button)
		arg2.Name = "arg2"
		arg2.AnchorPoint = Vector2.new(1,.5)
		arg2.BackgroundTransparency = 1
		arg2.Position = UDim2.new(1,0,.5,0)
		arg2.Size = UDim2.new(0,arg2s,0,28)
		arg2.Image = "rbxassetid://12483103360"
		arg2.ImageRectOffset = Vector2.new(24,0)
		arg2.ImageRectSize = Vector2.new(24,24)
		arg2.ImageTransparency = .25
		arg2.ScaleType = Enum.ScaleType.Slice
		arg2.SliceCenter = Rect.new(8,8,18,18)
		arg2.SliceScale = 1
		if arg2t == "textbox" then
			local arg2box = Instance.new("TextBox", arg2)
			arg2box.BackgroundTransparency = 1
			arg2box.Position = UDim2.new(0,5,0,5)
			arg2box.Size = UDim2.new(1,-10,1,-10)
			arg2box.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
			arg2box.TextColor3 = Color3.new(1,1,1)arg2box.PlaceholderColor3 = Color3.new(.5,.5,.5)
			arg2box.PlaceholderText = arg2ph
			arg2box.Text = arg2def
			arg2box.TextSize = 16
			arg2box.TextTransparency = .25
		else
			local arg2box = Instance.new("ImageButton", arg2)
			arg2box.AnchorPoint = Vector2.new(1,.5)
			arg2box.BackgroundTransparency = 1
			arg2box.Position = UDim2.new(1,0,.5,0)
			arg2box.Size = UDim2.new(0,24,0,24)
			arg2box.Image = "rbxassetid://12483103360"
			arg2box.ImageRectOffset = Vector2.new(24,0)
			arg2box.ImageRectSize = Vector2.new(24,24)
			arg2.Size = UDim2.new(0,24,0,28)
			arg2.Image = "0"
			arg2box.MouseButton1Click:Connect(function()
				arg2box:SetAttribute("Active", not arg2box:GetAttribute("Active"))
				if arg2box:GetAttribute("Active") then 
					arg2box.ImageRectOffset = Vector2.new(0,0)
				else
					arg2box.ImageRectOffset = Vector2.new(24,0)
				end
			end)
		end
	end
	
	button.MouseButton1Click:Connect(function()
		if arg1t == "textbox" and not (arg2t == "textbox") then
			if arg1n then
				callback(tonumber(ScriptsTabNnb[name].arg1.TextBox.Text), ScriptsTabNnb[name].arg2.ImageButton:GetAttribute("Active"))
			else
				callback(ScriptsTabNnb[name].arg1.TextBox.Text, ScriptsTabNnb[name].arg2.ImageButton:GetAttribute("Active"))
			end
		else
			if (not (arg1t == "textbox")) and arg2t == "textbox" then
				if arg2n then
					callback(ScriptsTabNnb[name].arg1.ImageButton:GetAttribute("Active"), tonumber(ScriptsTabNnb[name].arg2.TextBox.Text))
				else
					callback(ScriptsTabNnb[name].arg1.ImageButton:GetAttribute("Active"), ScriptsTabNnb[name].arg2.TextBox.Text)
				end
			else
				if not (arg1t == "textbox" and arg2t == "textbox") then
					callback(ScriptsTabNnb[name].arg1.ImageButton:GetAttribute("Active"), ScriptsTabNnb[name].arg2.ImageButton:GetAttribute("Active"))
				else
					print("i cant do this rn")
				end
			end
		end
	end)
	
end

load_tools = function(item, i)
	i = tonumber(i)
	game.ReplicatedStorage.events.game.global.shoppurchasebux:InvokeServer(item, 'Gear', i)
	while i > 0 do game.ReplicatedStorage.events.game.global.itemequip:InvokeServer(item, 'Gear')
		game.Players.LocalPlayer.Backpack[item].Parent = game.Workspace[game.Players.LocalPlayer.Name]
		i -= 1 end
end
create_script("      load tools", load_tools, 0, "textbox", 100, "Snowball", "item", false, "textbox", 60, "20", "amount", true)
create_script("use tools", 2, 0, 0,0,0,0,0,0)

-- size 60 tb default, 24 cb default

ScriptsTabNnbTitle = Instance.new("TextButton", ScriptsTab)
ScriptsTabNnbTitle.BackgroundColor3 = Color3.new(0,0,0)
ScriptsTabNnbTitle.BackgroundTransparency = .75
ScriptsTabNnbTitle.LayoutOrder = 2
ScriptsTabNnbTitle.Size = UDim2.new(.25,0,0,24)
ScriptsTabNnbTitle.Text = "nnb"
ScriptsTabNnbTitle.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
ScriptsTabNnbTitle.TextSize = 18
ScriptsTabNnbTitle.TextTransparency = .25
ScriptsTabNnbTitle.TextXAlignment = Enum.TextXAlignment.Center
Instance.new("UICorner", ScriptsTab).CornerRadius = UDim.new(0,4)





PlayerGui.TopbarPlus.TopbarContainer.versionIcon.IconButton.MouseButton1Click:Connect(function()
	scriptPanel.Visible = not scriptPanel.Visible
	--update_player_teleports()
end)

game.UserInputService.InputBegan:Connect(function(input, chatting)
	if input.KeyCode == Enum.KeyCode.RightShift and not chatting then
		scriptPanel.Visible = not scriptPanel.Visible
	end
	if input.KeyCode == Enum.KeyCode.Z and not chatting then
		zooming = true
		previous_fov = game.Players.LocalPlayer.options.Graphics.fov.Value
		game.ReplicatedStorage.events.game.global.savesettings:FireServer("fov", 20)
	end
end)

game.UserInputService.InputEnded:Connect(function(input, chatting)
	if input.KeyCode == Enum.KeyCode.Z then
		game.ReplicatedStorage.events.game.global.savesettings:FireServer("fov", previous_fov)
		zooming = false
	end
end)

--PlayerTab.Visible = false
GameTab.Visible = false
ShopTab.Visible = false
TeleportTab.Visible = false



PlayerTabButton.MouseButton1Click:Connect(function()
	PlayerTab.Visible = true
	PlayerTabButtonOutline.Thickness = 1
	GameTab.Visible = false
	GameTabButtonOutline.Thickness = 0
	ShopTab.Visible = false
	ShopTabButtonOutline.Thickness = 0
	TeleportTab.Visible = false
	TeleportTabButtonOutline.Thickness = 0
	AutoTab.Visible = false
	AutoTabButtonOutline.Thickness = 0
	ScriptsTab.Visible = false
	ScriptsTabButtonOutline.Thickness = 0
	--scriptPanelBackgroundGradient.ImageColor3 = PlayerTabButton.BackgroundColor3
end)
GameTabButton.MouseButton1Click:Connect(function()
	PlayerTab.Visible = false
	PlayerTabButtonOutline.Thickness = 0
	GameTab.Visible = true
	GameTabButtonOutline.Thickness = 1
	ShopTab.Visible = false
	ShopTabButtonOutline.Thickness = 0
	TeleportTab.Visible = false
	TeleportTabButtonOutline.Thickness = 0
	AutoTab.Visible = false
	AutoTabButtonOutline.Thickness = 0
	ScriptsTab.Visible = false
	ScriptsTabButtonOutline.Thickness = 0
end)
ShopTabButton.MouseButton1Click:Connect(function()
	PlayerTab.Visible = false
	PlayerTabButtonOutline.Thickness = 0
	GameTab.Visible = false
	GameTabButtonOutline.Thickness = 0
	ShopTab.Visible = true
	ShopTabButtonOutline.Thickness = 1
	TeleportTab.Visible = false
	TeleportTabButtonOutline.Thickness = 0
	AutoTab.Visible = false
	AutoTabButtonOutline.Thickness = 0
	ScriptsTab.Visible = false
	ScriptsTabButtonOutline.Thickness = 0
end)
TeleportTabButton.MouseButton1Click:Connect(function()
	PlayerTab.Visible = false
	PlayerTabButtonOutline.Thickness = 0
	GameTab.Visible = false
	GameTabButtonOutline.Thickness = 0
	ShopTab.Visible = false
	ShopTabButtonOutline.Thickness = 0
	TeleportTab.Visible = true
	TeleportTabButtonOutline.Thickness = 1
	AutoTab.Visible = false
	AutoTabButtonOutline.Thickness = 0
	ScriptsTab.Visible = false
	ScriptsTabButtonOutline.Thickness = 0
	update_player_teleports()
end)
AutoTabButton.MouseButton1Click:Connect(function()
	PlayerTab.Visible = false
	PlayerTabButtonOutline.Thickness = 0
	GameTab.Visible = false
	GameTabButtonOutline.Thickness = 0
	ShopTab.Visible = false
	ShopTabButtonOutline.Thickness = 0
	TeleportTab.Visible = false
	TeleportTabButtonOutline.Thickness = 0
	AutoTab.Visible = true
	AutoTabButtonOutline.Thickness = 1
	ScriptsTab.Visible = false
	ScriptsTabButtonOutline.Thickness = 0
end)
ScriptsTabButton.MouseButton1Click:Connect(function()
	PlayerTab.Visible = false
	PlayerTabButtonOutline.Thickness = 0
	GameTab.Visible = false
	GameTabButtonOutline.Thickness = 0
	ShopTab.Visible = false
	ShopTabButtonOutline.Thickness = 0
	TeleportTab.Visible = false
	TeleportTabButtonOutline.Thickness = 0
	AutoTab.Visible = false
	AutoTabButtonOutline.Thickness = 0
	ScriptsTab.Visible = true
	ScriptsTabButtonOutline.Thickness = 1
end)

PlayerStatusKill.MouseButton1Click:Connect(function()
	ReplicatedStorage.events.player.char.ClientDeath:FireServer()
end)
PlayerStatusRespawn.MouseButton1Click:Connect(function()
	ReplicatedStorage.events.player.char.respawnchar:FireServer()
end)
PlayerStatusDelete.MouseButton1Click:Connect(function()
	ReplicatedStorage.events.player.char.removechar:FireServer()
end)
PlayerStatusInvis.MouseButton1Click:Connect(function()
	print("invis")
end)
PlayerStatusRejoin.MouseButton1Click:Connect(function()
	game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
end)
PlayerStatusDeleteScript.MouseButton1Click:Connect(function()
	ScreenGui:Destroy()
	game.UserInputService.JumpRequest:Disconnect()
end)










while PlayerGui:FindFirstChild("scriptPanel") and wait(1) do
	local blackout = ""
	local bloodmoon = ""
	local munci = ""
	local outbreak = ""
	local boderman = ""
	local sanicevent = ""
	local geminus = ""
	if true then
		GameTabCurrentEventIcon.Image = blackout
		GameTabCurrentEventTitle.Text = ReplicatedStorage.values.events.currentevent.Value
	end
	game.ReplicatedStorage.module.specificsModule.SlidingControl.Value = GameTabValues["slide control"].ImageButton.Active
	game:GetService("ReplicatedStorage").module.specificsModule.WalkSpeed.Value = GameTabValues["walk speed"].ImageLabel.TextBox.Text
	game.ReplicatedStorage.module.specificsModule.SprintSpeed.Value = GameTabValues["sprint speed"].ImageLabel.TextBox.Text
	game:GetService("ReplicatedStorage").module.specificsModule.CrouchSpeed.Value = GameTabValues["crouch speed"].ImageLabel.TextBox.Text
	game:GetService("ReplicatedStorage").module.specificsModule.RagdollCrawlMultiplier.Value = GameTabValues["ragdoll multiplier"].ImageLabel.TextBox.Text
	game.Workspace.Gravity = GameTabValues.gravity.ImageLabel.TextBox.Text
	--max speed = GameTabValues["max speed"].ImageLabel.TextBox.Text

	if game.Players.LocalPlayer.PlayerGui.TouchGui.TouchControlFrame:FindFirstChild("JumpButton") then
		game.Players.LocalPlayer.PlayerGui.TouchGui.TouchControlFrame.JumpButton.Visible = true
	end
	if not zooming then game.ReplicatedStorage.events.game.global.savesettings:FireServer("fov", game.Players.LocalPlayer.options.Graphics.fov.Value) end
	if GameTabValues["wav cosmetic effects"].ImageButton.Active and game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name) then
		if game.Workspace[game.Players.LocalPlayer.Name]:FindFirstChild("WavCrown") then
			game.Workspace[game.Players.LocalPlayer.Name].WavCrown.Handle.Crystals.Script.Enabled = true
		end
		if game.Workspace[game.Players.LocalPlayer.Name]:FindFirstChild("WavAura") then
			game.Workspace[game.Players.LocalPlayer.Name].WavAura.Handle["King's_Inferno"].Script.Enabled = true
		end
	end
	if GameTabValues["day-night cycle"].ImageButton.Active then daycycletween:Play() end
	if GameTabValues["fullbright"].ImageButton.Active then game.Lighting.Ambient = Color3.new(1,1,1) end
	wait()
end

return 10
