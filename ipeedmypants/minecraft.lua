-- made and open sourced by fork :3

local Library = loadstring(game:HttpGetAsync("https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau"))()
local SaveManager = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/SaveManager.luau"))()
local InterfaceManager = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/InterfaceManager.luau"))()

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

local Tabs = {
    Info = Window:CreateTab{
        Title = "Information",
        Icon = "info"
    },
    Utilities = Window:CreateTab{
        Title = "Utilities"
        Icon = "database"
    },
    Misc = Window:CreateTab{
        Title = "Miscellaneous"
        Icon = "flask-conical"
    },
    Farm = Window:CreateTab{
        Title = "Farm"
        Icon = "banknote"
    },
    Settings = Window:CreateTab{
        Title = "Settings",
        Icon = "cog"
    },
    Credit = Window:CreateTab{
        Title = "Credit"
        Icons = "pencil"
    }
}