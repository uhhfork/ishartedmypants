-- made and open sourced by fork :3

local Library = loadstring(game:HttpGetAsync("https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau"))()
local SaveManager = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/SaveManager.luau"))()
local InterfaceManager = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/InterfaceManager.luau"))()

local plrs = game:GetService("Players")

local lp = plrs.LocalPlayer

local Window = Library:CreateWindow{
    Title = "I hate digging >:(",
    SubTitle = "by fork",
    TabWidth = 140,
    Size = UDim2.fromOffset(1245, 787.5),
    Resize = true,
    MinSize = Vector2.new(498, 315),
    Acrylic = true,
    MinimizeKey = Enum.KeyCode.LeftControl
}

local tab = {
    info = Window:CreateTab{
        Title = "Information",
        Icon = "info"
    },
    utils = Window:CreateTab{
        Title = "Utilities"
        Icon = "database"
    },
    misc = Window:CreateTab{
        Title = "Miscellaneous"
        Icon = "flask-conical"
    },
    farm = Window:CreateTab{
        Title = "Farm"
        Icon = "banknote"
    },
    setting = Window:CreateTab{
        Title = "Settings",
        Icon = "cog"
    },
    credit = Window:CreateTab{
        Title = "Credit"
        Icons = "pencil"
    }
}

local lb = {
    wins = lp.leaderstats.Wins.Value,
    cash = ,
    gems = ,
}

local function formatnum(num)
    if not num then return "0" end
    local formatted = tostring(math.floor(num))
    return formatted:reverse():gsub("(%d%d%d)","%1,"):reverse():gsub("^,","")
end



local lpinfo = tab.info:CreateParagraph("playerinfo", {
    Title = "Information",
    Content = "Please wait..."
})

local contentformat = [[
Display Name: %s
Username: %s
Wins: %s
Cash: %s
Gems: %s
]]

local content = string.format(
    contentformat,
    lp.DisplayName,
    lp.Name,
    formatnum(lb.wins),
    formatnum(lb.cash),
    formatnum(lb.gems),
)