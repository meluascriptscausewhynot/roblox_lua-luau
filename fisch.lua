local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "the stuff that i need for fisch",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "the stuff that i need for fisch",
   LoadingSubtitle = "by i-h4ck-l0l",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

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
local Tab = Window:CreateTab("the stuff")
local Section = Tab:CreateSection("")
local Button = Tab:CreateButton({
   Name = "Destroy Rayfield",
   Callback = function()
   -- The function that takes place when the button is pressed
        Rayfield:Destroy()
   end,
})
local Dropdown = Tab:CreateDropdown({
   Name = "Trade all items to player",
   Options = {"Option 1"},
   CurrentOption = {"Option 1"},
   MultipleOptions = false,
   Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Options)
   -- The function that takes place when the selected option is changed
   -- The variable (Options) is a table of strings for the current selected options
   end,
})

local tablet = {}
local children = game.Players:GetChildren()
for i = 1, #children do
    if children[i] ~= nil then
        if children[i]:IsA("Player") then
            table.insert(tablet, children[i].Name)
        end
    end
end
Dropdown:Refresh(tablet) -- The new list of options available.

game.Players.PlayerAdded:Connect(function()
    local tablet = {}
    local children = game.Players:GetChildren()
    for i = 1, #children do
        if children[i] ~= nil then
            if children[i]:IsA("Player") then
                table.insert(tablet, children[i].Name)
            end
        end
    end
    Dropdown:Refresh(tablet) -- The new list of options available.
end)

game.Players.PlayerRemoving:Connect(function()
    wait(1)
    local tablet = {}
    local children = game.Players:GetChildren()
    for i = 1, #children do
        if children[i] ~= nil then
            if children[i]:IsA("Player") then
                table.insert(tablet, children[i].Name)
            end
        end
    end
    Dropdown:Refresh(tablet) -- The new list of options available.
end)

local Button = Tab:CreateButton({
   Name = "trade items",
   Callback = function()
   -- The function that takes place when the button is pressed
        local players = game:GetService("Players")
        local localplayer = players.LocalPlayer
        local backpack = localplayer.Backpack
        local character = localplayer.Character
        local playergui = localplayer.PlayerGui
        local playerscripts = localplayer.PlayerScripts
        if players:FindFirstChild(Dropdown.CurrentOption[1]) then
            local player = players[Dropdown.CurrentOption[1]]
        
            local children = backpack:GetChildren()
            for i = 1, #children do
                local child = children[i]
                if child:IsA("Tool") then
                    if child:FindFirstChild("offer") then
                        character:WaitForChild("Humanoid"):EquipTool(child)
                        wait(0.05)
                        child.offer:FireServer(player)
                        character:WaitForChild("Humanoid"):UnequipTools()
                    end
                end
                wait(0.05)
            end
            
        end
   end,
})