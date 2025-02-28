--script loader
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()


local Window = Rayfield:CreateWindow({
   Name = "mah scripts",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "mah scripts",
   LoadingSubtitle = "",
   Theme = "AmberGlow", -- Check https://docs.sirius.menu/rayfield/configuration/themes

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

local Tab = Window:CreateTab("scripts")


local Label = Tab:CreateLabel("Note: If you click on any of the Rayfield scripts, then this Rayfield window will disappear")

local Tab2 = Window:CreateTab("destroy rayfield")

local Button = Tab2:CreateButton({
    Name = "Destroy Rayfield",
    Callback = function()
        -- The function that takes place when the button is pressed
        Rayfield:Destroy()
    end,
})

local username = "meluascriptscausewhynot"
local repository = "roblox_lua-luau"
local branch = "main"

-- GitHub API URL to get repository contents
local apiUrl = string.format("https://api.github.com/repos/%s/%s/git/trees/%s?recursive=1", username, repository, branch)
local rawBaseUrl = string.format("https://raw.githubusercontent.com/%s/%s/%s/", username, repository, branch)

-- Function to fetch only main directory files
local function getMainDirectoryFiles()
    local success, response = pcall(function()
        return game:HttpGet(apiUrl) -- Using game:HttpGet() instead of HttpService:GetAsync()
    end)
    
    if success then
        local data = game:GetService("HttpService"):JSONDecode(response)
        if data and data.tree then
            local files = {}
            for _, item in pairs(data.tree) do
                -- Ensure it's a file (not a folder) and is in the main directory (no "/")
                if item.type == "blob" and not string.find(item.path, "/") and item.path ~= "README.md" then
                    table.insert(files, item.path)
                end
            end
            return files
        end
    else
        warn("Failed to fetch file list: " .. tostring(response))
    end
    return {}
end

-- Function to download files from the main directory
local function downloadFiles()
    local fileList = getMainDirectoryFiles()
    
    for _, filePath in ipairs(fileList) do
        local fileUrl = rawBaseUrl .. filePath
        local success, content = pcall(function()
            return game:HttpGet(fileUrl, true)
        end)
        
        if success then
            local Button = Tab:CreateButton({
                Name = filePath,
                Callback = function()
                -- The function that takes place when the button is pressed
                    loadstring(content)()
                end,
            })
        else
            warn("Failed to download: " .. filePath)
        end
    end
end

-- Execute script
downloadFiles()
