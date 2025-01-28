--bruh i feel useless like all of this coding all of this work just for nobody to use it
--you'll use this, right?
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "The Hand-powered Recovery Center Gui",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "The Hand-powered Recovery Center Gui",
   LoadingSubtitle = "Rayfield Interface Suite",
   Theme = "Amethyst", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

Rayfield:Notify({
    Title = "Yo",
    Content = "the stuff is still pretty messy, i haven't put all of it into separate tabs yet",
    Duration = 4,
    Image = "rewind",
})

local Tab = Window:CreateTab("the stuff", "rewind")
local Button = Tab:CreateButton({
   Name = "Destroy Rayfield",
   Callback = function()
   -- The function that takes place when the button is pressed
        Rayfield:Destroy()
   end,
})
local Button = Tab:CreateButton({
   Name = "Spawn all characters from HPRC",
   Callback = function()
   -- The function that takes place when the button is pressed
        loadstring(game:HttpGet("https://raw.githubusercontent.com/meluascriptscausewhynot/roblox_lua-luau/refs/heads/main/extrafiles/HPRC.lua"))()
   end,
})
local Button = Tab:CreateButton({
   Name = "Spawn all characters from CRC",
   Callback = function()
   -- The function that takes place when the button is pressed
        loadstring(game:HttpGet("https://raw.githubusercontent.com/meluascriptscausewhynot/roblox_lua-luau/refs/heads/main/extrafiles/CRC.lua"))()
   end,
})
local Dropdown = Tab:CreateDropdown({
   Name = "Choose Character to recover from HPRC",
   Options = {"DEFAULTOPTION"},
   CurrentOption = {"DEFAULTOPTION"},
   MultipleOptions = false,
   Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Options)
   -- The function that takes place when the selected option is changed
   -- The variable (Options) is a table of strings for the current selected options
        game.ReplicatedStorage.RecoverClient:FireServer(Options[1], CFrame.new(7.10385895, 2.99999976, 13.7506533, -0.998540938, 8.81745237e-08, -0.0540001467, 9.15942664e-08, 1, -6.08534236e-08, 0.0540001467, -6.57107435e-08, -0.998540938))
   end,
})
local Input = Tab:CreateInput({
   Name = "Type Character to recover from HPRC",
   CurrentValue = "",
   PlaceholderText = "BOMBY",
   RemoveTextAfterFocusLost = false,
   Flag = "Input1",
   Callback = function(Text)
   -- The function that takes place when the input is changed
   -- The variable (Text) is a string for the value in the text box
        game.ReplicatedStorage.RecoverClient:FireServer(string.upper(Text), CFrame.new(7.10385895, 2.99999976, 13.7506533, -0.998540938, 8.81745237e-08, -0.0540001467, 9.15942664e-08, 1, -6.08534236e-08, 0.0540001467, -6.57107435e-08, -0.998540938))
   end,
})
local Dropdown2 = Tab:CreateDropdown({
   Name = "Choose Character to recover from CRC",
   Options = {"DEFAULTOPTION"},
   CurrentOption = {"DEFAULTOPTION"},
   MultipleOptions = false,
   Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Options)
   -- The function that takes place when the selected option is changed
   -- The variable (Options) is a table of strings for the current selected options
        workspace.crc.crcSubmit:FireServer(Options[1], false)
   end,
})
local Input = Tab:CreateInput({
   Name = "Type Character to recover from CRC",
   CurrentValue = "",
   PlaceholderText = "BOMBY",
   RemoveTextAfterFocusLost = false,
   Flag = "Input1",
   Callback = function(Text)
   -- The function that takes place when the input is changed
   -- The variable (Text) is a string for the value in the text box
        workspace.crc.crcSubmit:FireServer(string.upper(Text), false)
   end,
})
local contestantstable = {}
table.insert(contestantstable, "DEFAULTOPTION")
local children = game.ReplicatedStorage.ContestantsClient:GetChildren()
for i = 1, #children do
    table.insert(contestantstable, children[i].Name)
end
Dropdown:Refresh(contestantstable) -- The new list of options available.
Dropdown2:Refresh(contestantstable) -- The new list of options available.
fssvocc = false
local Button = Tab:CreateButton({
   Name = "Go to Freesmart Supervan",
   Callback = function()
   -- The function that takes place when the button is pressed
        if workspace:FindFirstChild("FreesmartSupervan") then
            if workspace.FreesmartSupervan:FindFirstChild("VehicleSeat") then
                if workspace.FreesmartSupervan.VehicleSeat.Occupant == nil then
                    game.Players.LocalPlayer.Character:MoveTo(workspace.FreesmartSupervan.VehicleSeat.Position)
                else
                    if fssvocc == true then
                        fssvocc = false
                        game.Players.LocalPlayer.Character:MoveTo(workspace.FreesmartSupervan.VehicleSeat.Position)
                    else
                        fssvocc = true
                        Rayfield:Notify({
                            Title = "Alert",
                            Content = "Someone is sitting in the driver seat in supervan",
                            Duration = 4,
                            Image = "rewind",
                        })
                        Rayfield:Notify({
                            Title = "Alert",
                            Content = "Click again to teleport anyways",
                            Duration = 4,
                            Image = "rewind",
                        })
                    end
                end
            else
                Rayfield:Notify({
                    Title = "Alert",
                    Content = "There is no driver seat in supervan",
                    Duration = 4,
                    Image = "rewind",
                })
            end
        else
            Rayfield:Notify({
                Title = "Alert",
                Content = "There is no supervan",
                Duration = 4,
                Image = "rewind",
            })
        end
   end,
})
local Tptoggle = Tab:CreateToggle({
   Name = "Teleport to SFRC when recovering",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
        print("HEY YOU FOUND A SECRET yippee you get a gold star :) btw this is from the rayfield script that you are using because this printed when you set the 'Teleport to SFRC when recovering' to " .. tostring(Value))
   end,
})
local Dropdown3 = Tab:CreateDropdown({
   Name = "Choose Admin Character to recover from SFRC",
   Options = {"DEFAULTOPTION"},
   CurrentOption = {"DEFAULTOPTION"},
   MultipleOptions = false,
   Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Options)
   -- The function that takes place when the selected option is changed
   -- The variable (Options) is a table of strings for the current selected options
        if Tptoggle.CurrentValue == true then
            game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-53.5404052734375, 5002.96875, 31.320947647094727))
        end
        workspace.fonTestCenter.sfrcSubmit:FireServer(Options[1], false)
   end,
})
local admincontestantstable = {}
table.insert(admincontestantstable, "DEFAULTOPTION")
local children = game.ReplicatedStorage.AdminContestants:GetChildren()
for i = 1, #children do
    table.insert(admincontestantstable, children[i].Name)
end
Dropdown3:Refresh(admincontestantstable) -- The new list of options available.
local Mptoggle = Tab:CreateToggle({
   Name = "Morph with character animations",
   CurrentValue = true,
   Flag = "Toggle89", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})
local Dropdown45457798 = Tab:CreateDropdown({
   Name = "Choose Character to morph into",
   Options = {"DEFAULTOPTION"},
   CurrentOption = {"DEFAULTOPTION"},
   MultipleOptions = false,
   Flag = "Dropdown8748", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Options)
   -- The function that takes place when the selected option is changed
   -- The variable (Options) is a table of strings for the current selected options
        if game.ReplicatedStorage.ContestantsClient:FindFirstChild(Options[1]) then
            local morph = game.ReplicatedStorage.ContestantsClient[Options[1]]
            if Mptoggle.CurrentValue == true then
                game.ReplicatedStorage.Morph:FireServer(morph, true)
            else
                game.ReplicatedStorage.Morph:FireServer(morph, false)
            end
        end
   end,
})
local morphcontestantstable = {}
table.insert(morphcontestantstable, "DEFAULTOPTION")
local children = game.ReplicatedStorage.ContestantsClient:GetChildren()
for i = 1, #children do
    table.insert(morphcontestantstable, children[i].Name)
end
Dropdown45457798:Refresh(morphcontestantstable)
local Input = Tab:CreateInput({
   Name = "Type Character to morph into",
   CurrentValue = "",
   PlaceholderText = "BOMBY",
   RemoveTextAfterFocusLost = false,
   Flag = "Input1",
   Callback = function(Text)
   -- The function that takes place when the input is changed
   -- The variable (Text) is a string for the value in the text box
        if game.ReplicatedStorage.ContestantsClient:FindFirstChild(string.upper(Text)) then
            local morph = game.ReplicatedStorage.ContestantsClient[string.upper(Text)]
            if Mptoggle.CurrentValue == true then
                game.ReplicatedStorage.Morph:FireServer(morph, true)
            else
                game.ReplicatedStorage.Morph:FireServer(morph, false)
            end
        end
   end,
})