local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
if game.GameId ~= 228291646 then
    Rayfield:Notify({
        Title = "This game is not become woody",
        Content = "This script won't work in this game",
        Duration = 4,
        Image = "circle-alert",
    })
end
local Window = Rayfield:CreateWindow({
   Name = "become woody script",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "i tried to make a rayfield script lol :D",
   LoadingSubtitle = "by no one...",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = true, -- Prompt the user to join your Discord server if their executor supports it
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
local Tab = Window:CreateTab("Tools", "wrench")
local Divider = Tab:CreateDivider()
local Button = Tab:CreateButton({
   Name = "OP Gun",
   Callback = function()
       local gunreferencegumibearz
       local lastposition = game.Players.LocalPlayer.Character.Torso.Position
       if not game.Players.LocalPlayer.Backpack:FindFirstChild("gun") then
           if not game.Players.LocalPlayer.Character:FindFirstChild("gun") then
           local numbergumibearz = 0
           repeat
               numbergumibearz = numbergumibearz + 1
               print(numbergumibearz)
               game.Players.LocalPlayer.Character:MoveTo(workspace.CORN.Position)
               wait(0.1)
           until game.Players.LocalPlayer.Backpack:FindFirstChild("gun") or numbergumibearz == 50
           game.Players.LocalPlayer.Character:MoveTo(lastposition)
           end
   end
       if game.Players.LocalPlayer.Character:FindFirstChild("gun") then
           game.Players.LocalPlayer.Character.gun.Parent = game.Players.LocalPlayer.Backpack
       end
       gunreferencegumibearz = game.Players.LocalPlayer.Backpack:FindFirstChild("gun")
       if gunreferencegumibearz == nil then
           return
       end
       local handgunscriptgumibearz = gunreferencegumibearz:FindFirstChild("HandgunScript")
       if handgunscriptgumibearz then
           handgunscriptgumibearz:Destroy()
       end
   -- The function that takes place when the button is pressed
        -- Decompiler will be improved soon!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-01-16 16:25:13
-- Luau version 6, Types version 3
-- Time taken: 0.019689 seconds

local function WaitForChild_upvr(arg1, arg2) -- Line 5, Named "WaitForChild"
    while not arg1:FindFirstChild(arg2) do
        arg1.ChildAdded:wait()
    end
    return arg1[arg2]
end
local var60_upvw = 98945 * 10
local var61_upvw = 0.005
local var62_upvw = 98945
local Parent_2_upvr = gunreferencegumibearz
local WaitForChild_result1_upvr = WaitForChild_upvr(Parent_2_upvr, "Handle")
local var65_upvw
local var66_upvw
local var67_upvw = false
local var68_upvw = false
local var69_upvw
local var70_upvw
local var71_upvw
local var72_upvw
local var73_upvw
local var74_upvw
local var75_upvw
local Flare_upvr = gunreferencegumibearz:WaitForChild("Flare")
local WorldToCellPreferSolid_upvr_2 = Workspace.Terrain.WorldToCellPreferSolid
local GetCell_upvr_2 = Workspace.Terrain.GetCell
function RayIgnoreCheck(arg1, arg2) -- Line 88
    --[[ Upvalues[3]:
        [1]: var70_upvw (read and write)
        [2]: WorldToCellPreferSolid_upvr_2 (readonly)
        [3]: GetCell_upvr_2 (readonly)
    ]]
    -- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [21] 13. Error Block 23 start (CF ANALYSIS FAILED)
    if arg1.Name == "Bullet" or arg1.Name == "Handle" or arg1:IsDescendantOf(var70_upvw) then
        -- KONSTANTERROR: [34] 21. Error Block 21 start (CF ANALYSIS FAILED)
        do
            return true
        end
        -- KONSTANTERROR: [34] 21. Error Block 21 end (CF ANALYSIS FAILED)
    end
    if arg1:IsA("Terrain") and arg2 then
        local WorldToCellPreferSolid_upvr_2_result1 = WorldToCellPreferSolid_upvr_2(Workspace.Terrain, arg2)
        if WorldToCellPreferSolid_upvr_2_result1 then
            local var78_result1 = GetCell_upvr_2(Workspace.Terrain, WorldToCellPreferSolid_upvr_2_result1.x, WorldToCellPreferSolid_upvr_2_result1.y, WorldToCellPreferSolid_upvr_2_result1.z)
            if var78_result1 and var78_result1 == Enum.CellMaterial.Water then
                return true
            end
        end
    end
    -- KONSTANTERROR: [21] 13. Error Block 23 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [69] 46. Error Block 17 start (CF ANALYSIS FAILED)
    do
        return false
    end
    -- KONSTANTERROR: [69] 46. Error Block 17 end (CF ANALYSIS FAILED)
end
function RayCast(arg1, arg2, arg3) -- Line 108
    --[[ Upvalues[1]:
        [1]: WaitForChild_result1_upvr (readonly)
    ]]
    local any_FindPartOnRay_result1_2, any_FindPartOnRay_result2_2 = game.Workspace:FindPartOnRay(Ray.new(arg1 + arg2 * 0.01, arg2 * arg3), WaitForChild_result1_upvr)
    if any_FindPartOnRay_result1_2 and any_FindPartOnRay_result2_2 then
        local var83 = arg3 - (any_FindPartOnRay_result2_2 - arg1).magnitude
        if RayIgnoreCheck(any_FindPartOnRay_result1_2, any_FindPartOnRay_result2_2) then
            if 0 < var83 then
                return RayCast(any_FindPartOnRay_result2_2, arg2, var83)
            end
        end
    end
    return any_FindPartOnRay_result1_2, any_FindPartOnRay_result2_2
end
local function Reload_upvr() -- Line 125, Named "Reload"
    --[[ Upvalues[6]:
        [1]: var67_upvw (read and write)
        [2]: var62_upvw (read and write)
        [3]: var60_upvw (read and write)
        [4]: var74_upvw (read and write)
        [5]: var65_upvw (read and write)
        [6]: var75_upvw (read and write)
    ]]
    if not var67_upvw then
        var67_upvw = true
        if var62_upvw ~= 10 and 0 < var60_upvw then
            if var74_upvw then
                var74_upvw:Stop()
            end
    
            if var75_upvw then
                var75_upvw:Play()
            end
            gunreferencegumibearz.Handle.Reload:Play()
            wait(0)
            local minimum = math.min(10 - var62_upvw, var60_upvw)
            var62_upvw += minimum
            var60_upvw -= minimum
            UpdateAmmo(var62_upvw)
            if var75_upvw then
                var75_upvw:Stop()
            end
        end
        var67_upvw = false
    end
end
local var85_upvw = false
local FireSound_upvr = gunreferencegumibearz.Handle.FireSound
local visual_upvr_2 = gunreferencegumibearz:WaitForChild("visual")
local dmg_upvr_2 = gunreferencegumibearz:WaitForChild("dmg")
local visual2_upvr_2 = gunreferencegumibearz:WaitForChild("visual2")
function OnFire() -- Line 157
    --[[ Upvalues[18]:
        [1]: var68_upvw (read and write)
        [2]: var71_upvw (read and write)
        [3]: var74_upvw (read and write)
        [4]: var62_upvw (read and write)
        [5]: var66_upvw (read and write)
        [6]: var67_upvw (read and write)
        [7]: var61_upvw (read and write)
        [8]: var85_upvw (read and write)
        [9]: WaitForChild_result1_upvr (readonly)
        [10]: FireSound_upvr (readonly)
        [11]: visual_upvr_2 (readonly)
        [12]: Flare_upvr (readonly)
        [13]: var73_upvw (read and write)
        [14]: dmg_upvr_2 (readonly)
        [15]: var65_upvw (read and write)
        [16]: var69_upvw (read and write)
        [17]: visual2_upvr_2 (readonly)
        [18]: Reload_upvr (readonly)
    ]]
    if var68_upvw then
    elseif var71_upvw and 0 < var71_upvw.Health then
        if var74_upvw and 0 < var62_upvw then
            var74_upvw:Play()
        end
        var68_upvw = true
        while var66_upvw and 0 < var62_upvw and not var67_upvw do
            if var61_upvw and not var85_upvw then
                var61_upvw = math.min(0.07, var61_upvw + 0.5)
            end
            var85_upvw = not var85_upvw
            if WaitForChild_result1_upvr:FindFirstChild("FireSound") then
                FireSound_upvr.Pitch = 0.8 + math.random() * 0.5
                WaitForChild_result1_upvr.FireSound:Play()
                visual_upvr_2:FireServer(WaitForChild_result1_upvr, Flare_upvr)
            end
            if var73_upvw then
                local RayCast_result1_upvr_2, _ = RayCast(WaitForChild_result1_upvr.Position, CFrame.Angles((0.5 - math.random()) * 2 * var61_upvw, (0.5 - math.random()) * 2 * var61_upvw, (0.5 - math.random()) * 2 * var61_upvw) * (var73_upvw.Hit.p - WaitForChild_result1_upvr.Position).unit, 300)
                local _, _ = pcall(function() -- Line 187
                    --[[ Upvalues[4]:
                        [1]: RayCast_result1_upvr_2 (readonly)
                        [2]: dmg_upvr_2 (copied, readonly)
                        [3]: var65_upvw (copied, read and write)
                        [4]: var69_upvw (copied, read and write)
                    ]]
                    local var93
                    local function INLINED_6() -- Internal function, doesn't exist in bytecode
                        var93 = RayCast_result1_upvr_2.Parent
                        return var93
                    end
                    local function INLINED_7() -- Internal function, doesn't exist in bytecode
                        var93 = RayCast_result1_upvr_2.Parent.Parent
                        return var93
                    end
                    local function INLINED_8() -- Internal function, doesn't exist in bytecode
                        var93 = RayCast_result1_upvr_2.Parent.Parent.Parent
                        return var93
                    end
                    if var93 and INLINED_6() or INLINED_7() or INLINED_8() then
                        var93 = RayCast_result1_upvr_2.Parent:FindFirstChild("Humanoid")
                        if not var93 then
                            var93 = RayCast_result1_upvr_2.Parent.Parent:FindFirstChild("Humanoid")
                            if not var93 then
                                var93 = RayCast_result1_upvr_2.Parent.Parent.Parent:FindFirstChild("Humanoid")
                            end
                        end
                        local dmglevel = RayCast_result1_upvr_2.Parent:FindFirstChild("dmglevel")
                        if dmglevel then
                            dmg_upvr_2:FireServer(dmglevel.Parent, 7, 2)
                            spawn(UpdateTargetHit)
                            return
                        end
                        local function INLINED_9() -- Internal function, doesn't exist in bytecode
                            local any_GetPlayerFromCharacter_result1_3 = game.Players:GetPlayerFromCharacter(var93.Parent)
                            return var69_upvw.Neutral
                        end
                        if var93 and (INLINED_9() or any_GetPlayerFromCharacter_result1_3 and any_GetPlayerFromCharacter_result1_3.TeamColor ~= var69_upvw.TeamColor) then
                            dmg_upvr_2:FireServer(var93, 7, 1)
                            spawn(UpdateTargetHit)
                        end
                    end
                end)
                var62_upvw -= 1
                UpdateAmmo(var62_upvw)
            end
            wait(0.01)
        end
        RayCast_result1_upvr_2 = WaitForChild_result1_upvr
        visual2_upvr_2:FireServer(RayCast_result1_upvr_2, Flare_upvr)
        var68_upvw = false
        if var62_upvw == 0 then
            WaitForChild_result1_upvr.Tick:Play()
            Reload_upvr()
        end
        if var74_upvw then
            var74_upvw:Stop()
        end
    end
end
local var98_upvw = 0
function UpdateTargetHit() -- Line 238
    --[[ Upvalues[2]:
        [1]: var98_upvw (read and write)
        [2]: var65_upvw (read and write)
    ]]
    var98_upvw += 1
    wait(0.5)
    var98_upvw -= 1
end
function UpdateAmmo(arg1) -- Line 261
    --[[ Upvalues[3]:
        [1]: var65_upvw (read and write)
        [2]: var62_upvw (read and write)
        [3]: var60_upvw (read and write)
    ]]
    if var65_upvw and var65_upvw:FindFirstChild("AmmoHud") and var65_upvw.AmmoHud:FindFirstChild("ClipAmmo") then
        var65_upvw.AmmoHud.ClipAmmo.Text = var62_upvw
        if 0 < arg1 then
        end
    end
    if var65_upvw and var65_upvw:FindFirstChild("AmmoHud") and var65_upvw.AmmoHud:FindFirstChild("TotalAmmo") then
        var65_upvw.AmmoHud.TotalAmmo.Text = var60_upvw
    end
end
function OnMouseDown() -- Line 274
    --[[ Upvalues[1]:
        [1]: var66_upvw (read and write)
    ]]
    var66_upvw = true
    OnFire()
end
function OnMouseUp() -- Line 279
    --[[ Upvalues[1]:
        [1]: var66_upvw (read and write)
    ]]
    var66_upvw = false
end
function OnKeyDown(arg1) -- Line 283
    --[[ Upvalues[2]:
        [1]: Reload_upvr (readonly)
        [2]: var74_upvw (read and write)
    ]]
    if string.lower(arg1) == 'r' then
        Reload_upvr()
        if var74_upvw then
            var74_upvw:Stop()
        end
    end
end
local var99_upvw
local var100_upvw
local var101_upvw
function OnEquipped(arg1) -- Line 293
    --[[ Upvalues[15]:
        [1]: WaitForChild_result1_upvr (readonly)
        [2]: var99_upvw (read and write)
        [3]: WaitForChild_upvr (readonly)
        [4]: Parent_2_upvr (readonly)
        [5]: var100_upvw (read and write)
        [6]: var101_upvw (read and write)
        [7]: var70_upvw (read and write)
        [8]: var69_upvw (read and write)
        [9]: var71_upvw (read and write)
        [10]: var72_upvw (read and write)
        [11]: var73_upvw (read and write)
        [12]: var65_upvw (read and write)
        [13]: var62_upvw (read and write)
        [14]: var74_upvw (read and write)
        [15]: var75_upvw (read and write)
    ]]
    WaitForChild_result1_upvr.EquipSound:Play()
    WaitForChild_result1_upvr.equip:Play()
    WaitForChild_result1_upvr.unequip:Stop()
    var99_upvw = WaitForChild_upvr(Parent_2_upvr, "Recoil")
    var100_upvw = WaitForChild_upvr(Parent_2_upvr, "Reload")
    var101_upvw = WaitForChild_upvr(WaitForChild_result1_upvr, "FireSound")
    var70_upvw = Parent_2_upvr.Parent
    var69_upvw = game:GetService("Players"):GetPlayerFromCharacter(var70_upvw)
    var71_upvw = var70_upvw:FindFirstChild("Humanoid")
    var72_upvw = var70_upvw:FindFirstChild("Torso")
    var73_upvw = arg1
    if var65_upvw and var69_upvw then
        var65_upvw.Parent = var69_upvw.PlayerGui
        UpdateAmmo(var62_upvw)
    end
    if var99_upvw then
        var74_upvw = var71_upvw:LoadAnimation(var99_upvw)
    end
    if var100_upvw then
        var75_upvw = var71_upvw:LoadAnimation(var100_upvw)
    end
    if var73_upvw then
        var73_upvw.Button1Down:connect(OnMouseDown)
        var73_upvw.Button1Up:connect(OnMouseUp)
        var73_upvw.KeyDown:connect(OnKeyDown)
    end
end
local var102_upvw
function OnUnequipped() -- Line 330
    --[[ Upvalues[13]:
        [1]: WaitForChild_result1_upvr (readonly)
        [2]: var66_upvw (read and write)
        [3]: Flare_upvr (readonly)
        [4]: var67_upvw (read and write)
        [5]: var70_upvw (read and write)
        [6]: var71_upvw (read and write)
        [7]: var72_upvw (read and write)
        [8]: var69_upvw (read and write)
        [9]: var73_upvw (read and write)
        [10]: var102_upvw (read and write)
        [11]: var65_upvw (read and write)
        [12]: var74_upvw (read and write)
        [13]: var75_upvw (read and write)
    ]]
    WaitForChild_result1_upvr.unequip:Play()
    WaitForChild_result1_upvr.EquipSound:Stop()
    WaitForChild_result1_upvr.equip:Stop()
    var66_upvw = false
    Flare_upvr.MuzzleFlash.Enabled = false
    var67_upvw = false
    var70_upvw = nil
    var71_upvw = nil
    var72_upvw = nil
    var69_upvw = nil
    var73_upvw = nil
    if var102_upvw then
        var102_upvw = nil
    end
    if var65_upvw then
        var65_upvw.Parent = nil
        var65_upvw = nil
    end
    if var74_upvw then
        var74_upvw:Stop()
    end
    if var75_upvw then
        var75_upvw:Stop()
    end
end
Parent_2_upvr.Equipped:connect(OnEquipped)
Parent_2_upvr.Unequipped:connect(OnUnequipped)

   end, --final
})
local Button = Tab:CreateButton({
   Name = "Fortnite Dance",
   Callback = function()
       local hypedreferencegumibearz
       if not game.Players.LocalPlayer.Backpack:FindFirstChild("hyped") then
           if not game.Players.LocalPlayer.Character:FindFirstChild("hyped") then
               if not game.Players.LocalPlayer.PlayerGui:FindFirstChild("hyped") then
                  Rayfield:Notify({
                    Title = "The fortnite emote is not in PlayerGui",
                    Content = "",
                    Duration = 4,
                    Image = "circle-alert",
                })
               else
                   game.Players.LocalPlayer.PlayerGui.hyped.Parent = game.Players.LocalPlayer.Backpack
               end
           end
       end
       if game.Players.LocalPlayer.Character:FindFirstChild("hyped") then
           game.Players.LocalPlayer.Character.hyped.Parent = game.Players.LocalPlayer.Backpack
       end
       hypedreferencegumibearz = game.Players.LocalPlayer.Backpack:FindFirstChild("hyped")
       if hypedreferencegumibearz == nil then
           return
       end
       local hypedscriptgumibearz = hypedreferencegumibearz:FindFirstChild("LocalScript")
       if hypedscriptgumibearz then
           hypedscriptgumibearz:Destroy()
       end
       

local Character = game.Players.LocalPlayer.Character
local Humanoid_upvr = Character:WaitForChild("Humanoid")
local Parent_upvr = hypedreferencegumibearz
epic = Humanoid_upvr:LoadAnimation(hypedreferencegumibearz.Animation) -- Setting global
Parent_upvr.Equipped:connect(function(arg1) -- Line 14
    --[[ Upvalues[2]:
        [1]: Humanoid_upvr (readonly)
        [2]: Parent_upvr (readonly)
    ]]
    if epic then
        epic:Play()
        wait(0.03)
    end
end)
Parent_upvr.Unequipped:connect(function(arg1) -- Line 25
    --[[ Upvalues[2]:
        [1]: Humanoid_upvr (readonly)
        [2]: Parent_upvr (readonly)
    ]]
    if epic then
        epic:Stop()
    end
end)


   end, --final
})
local Button = Tab:CreateButton({
   Name = "Fix Right Dab (You only have to run this once)",
   Callback = function()
       local rdabreferencegumibearz
       if not game.Players.LocalPlayer.Backpack:FindFirstChild("rdab") then
           if not game.Players.LocalPlayer.Character:FindFirstChild("rdab") then
                Rayfield:Notify({
                    Title = "You don't have right dab",
                    Content = "also how?? you cant even remove it!",
                    Duration = 4,
                    Image = "circle-alert",
                })
           end
        end
       if game.Players.LocalPlayer.Character:FindFirstChild("rdab") then
           game.Players.LocalPlayer.Character.rdab.Parent = game.Players.LocalPlayer.Backpack
       end
       rdabreferencegumibearz = game.Players.LocalPlayer.Backpack:FindFirstChild("rdab")
       if rdabreferencegumibearz == nil then
           return
       end
       local rdabscriptgumibearz = rdabreferencegumibearz:FindFirstChild("LocalScript")
       if rdabscriptgumibearz then
           rdabscriptgumibearz:Destroy()
       end
       
       
       
wait(0.4)
local Parent_upvr = rdabreferencegumibearz
playAnim = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(rdabreferencegumibearz.Animation) -- Setting global
Parent_upvr.Equipped:Connect(function() -- Line 11
    --[[ Upvalues[2]:
        [1]: game.Players.LocalPlayer.Character (readonly)
        [2]: Parent_upvr (readonly)
    ]]
    if playAnim then
        playAnim:Play()
        rdabreferencegumibearz:WaitForChild("dabe"):FireServer(game.Players.LocalPlayer.Character, "right")
        Parent_upvr.Handle.dab:Play()
    end
end)
Parent_upvr.Unequipped:Connect(function() -- Line 22
    --[[ Upvalues[1]:
        [1]: game.Players.LocalPlayer.Character (readonly)
    ]]
    if playAnim then
        playAnim:Stop()
        rdabreferencegumibearz:WaitForChild("undabe"):FireServer(game.Players.LocalPlayer.Character)
    end
end)
game.Players.LocalPlayer.CharacterAdded:Connect(function()
     rdabreferencegumibearz = game.Players.LocalPlayer.Backpack:FindFirstChild("rdab")
       if rdabreferencegumibearz == nil then
           return
       end
       local rdabscriptgumibearz = rdabreferencegumibearz:FindFirstChild("LocalScript")
       if rdabscriptgumibearz then
           rdabscriptgumibearz:Destroy()
       end
       
       
       wait(0.4)
        local Parent_upvr = rdabreferencegumibearz
       playAnim = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(rdabreferencegumibearz.Animation) -- Setting global
        Parent_upvr.Equipped:Connect(function() -- Line 11
         --[[ Upvalues[2]:
                [1]: game.Players.LocalPlayer.Character (readonly)
               [2]: Parent_upvr (readonly)
         ]]
            if playAnim then
                playAnim:Play()
            rdabreferencegumibearz:WaitForChild("dabe"):FireServer(game.Players.LocalPlayer.Character, "right")
            Parent_upvr.Handle.dab:Play()
        end
    end)
    Parent_upvr.Unequipped:Connect(function() -- Line 22
        --[[ Upvalues[1]:
            [1]: game.Players.LocalPlayer.Character (readonly)
        ]]
        if playAnim then
            playAnim:Stop()
            rdabreferencegumibearz:WaitForChild("undabe"):FireServer(game.Players.LocalPlayer.Character)
        end
    end)
end)

   end, --final
})
local Button = Tab:CreateButton({
   Name = "Fix Left Dab (You only have to run this once)",
   Callback = function()
       local dabreferencegumibearz
       if not game.Players.LocalPlayer.Backpack:FindFirstChild("dab") then
           if not game.Players.LocalPlayer.Character:FindFirstChild("dab") then
                Rayfield:Notify({
                    Title = "You don't have left dab",
                    Content = "also how?? you cant even remove it!",
                    Duration = 4,
                    Image = "circle-alert",
                })
           end
        end
       if game.Players.LocalPlayer.Character:FindFirstChild("dab") then
           game.Players.LocalPlayer.Character.dab.Parent = game.Players.LocalPlayer.Backpack
       end
       dabreferencegumibearz = game.Players.LocalPlayer.Backpack:FindFirstChild("dab")
       if dabreferencegumibearz == nil then
           return
       end
       local dabscriptgumibearz = dabreferencegumibearz:FindFirstChild("LocalScript")
       if dabscriptgumibearz then
           dabscriptgumibearz:Destroy()
       end
       
       
       
wait(0.5)
local Parent_upvr = dabreferencegumibearz
playAnim2 = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(dabreferencegumibearz.Animation) -- Setting global
Parent_upvr.Equipped:Connect(function() -- Line 11
    --[[ Upvalues[2]:
        [1]: game.Players.LocalPlayer.Character (readonly)
        [2]: Parent_upvr (readonly)
    ]]
    if playAnim2 then
        playAnim2:Play()
        dabreferencegumibearz:WaitForChild("dabe"):FireServer(game.Players.LocalPlayer.Character, "left")
        Parent_upvr.Handle.dab:Play()
    end
end)
Parent_upvr.Unequipped:Connect(function() -- Line 22
    --[[ Upvalues[1]:
        [1]: game.Players.LocalPlayer.Character (readonly)
    ]]
    if playAnim2 then
        playAnim2:Stop()
        dabreferencegumibearz:WaitForChild("undabe"):FireServer(game.Players.LocalPlayer.Character)
    end
end)
game.Players.LocalPlayer.CharacterAdded:Connect(function()
     dabreferencegumibearz = game.Players.LocalPlayer.Backpack:FindFirstChild("dab")
       if dabreferencegumibearz == nil then
           return
       end
       local dabscriptgumibearz = dabreferencegumibearz:FindFirstChild("LocalScript")
       if dabscriptgumibearz then
           dabscriptgumibearz:Destroy()
       end
       
       
       wait(0.5)
        local Parent_upvr = dabreferencegumibearz
       playAnim2 = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(dabreferencegumibearz.Animation) -- Setting global
        Parent_upvr.Equipped:Connect(function() -- Line 11
         --[[ Upvalues[2]:
                [1]: game.Players.LocalPlayer.Character (readonly)
               [2]: Parent_upvr (readonly)
         ]]
            if playAnim2 then
                playAnim2:Play()
            dabreferencegumibearz:WaitForChild("dabe"):FireServer(game.Players.LocalPlayer.Character, "left")
            Parent_upvr.Handle.dab:Play()
        end
    end)
    Parent_upvr.Unequipped:Connect(function() -- Line 22
        --[[ Upvalues[1]:
            [1]: game.Players.LocalPlayer.Character (readonly)
        ]]
        if playAnim2 then
            playAnim2:Stop()
            dabreferencegumibearz:WaitForChild("undabe"):FireServer(game.Players.LocalPlayer.Character)
        end
    end)
end)

   end, --final
})
local Button = Tab:CreateButton({
   Name = "Fork Spam",
   Callback = function()
       local forkreferencegumibearz
       if not game.Players.LocalPlayer.Backpack:FindFirstChild("Fork") then
           if not game.Players.LocalPlayer.Character:FindFirstChild("Fork") then
                Rayfield:Notify({
                    Title = "You don't have the fork",
                    Content = "also how?? you cant even remove it!",
                    Duration = 4,
                    Image = "circle-alert",
                })
           end
        end
       if game.Players.LocalPlayer.Character:FindFirstChild("Fork") then
           game.Players.LocalPlayer.Character.Fork.Parent = game.Players.LocalPlayer.Backpack
       end
       forkreferencegumibearz = game.Players.LocalPlayer.Backpack:FindFirstChild("Fork")
       if forkreferencegumibearz == nil then
           return
       end
       local forkscriptgumibearz = forkreferencegumibearz:FindFirstChild("LocalScript")
       if forkscriptgumibearz then
           forkscriptgumibearz:Destroy()
       end
      -- Decompiler will be improved soon!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-01-16 18:17:23
-- Luau version 6, Types version 3
-- Time taken: 0.002280 seconds

local Parent_upvr = forkreferencegumibearz
cooldown = 0 -- Setting global
debris = game:GetService("Debris") -- Setting global
check = true -- Setting global
function waitfor(arg1, arg2) -- Line 13
    while true do
        local SOME = arg1:FindFirstChild(arg2)
        if SOME ~= nil then
            return SOME
        end
        wait()
    end
end
local waitfor_result1_upvr = waitfor(Parent_upvr, "Handle")
local fork_upvr = game:GetService("ReplicatedStorage"):WaitForChild("fork")
local Debris_upvr = game:GetService("Debris")
function onButton1Down(arg1) -- Line 27
    --[[ Upvalues[4]:
        [1]: Parent_upvr (readonly)
        [2]: waitfor_result1_upvr (readonly)
        [3]: fork_upvr (readonly)
        [4]: Debris_upvr (readonly)
    ]]
    if check then
        arg1.Icon = "rbxasset://textures\\GunWaitCursor.png"
        local Humanoid_2 = Parent_upvr.Parent:FindFirstChild("Humanoid")
        local RightSlash_2 = Parent_upvr:FindFirstChild("RightSlash")
        if RightSlash_2 and Parent_upvr.Parent:FindFirstChild("Torso") and Humanoid_2 then
            theanim = Humanoid_2:LoadAnimation(RightSlash_2) -- Setting global
            theanim:Play(nil, nil, 5)
            if theanim and 0 < Humanoid_2.Health then
                local SlashSound = Parent_upvr.Handle:FindFirstChild("SlashSound")
                if SlashSound then
                    SlashSound:Play()
                end
                wait(0)
                waitfor_result1_upvr.Transparency = 1
                -- KONSTANTERROR: Expression was reused, decompilation is incorrect
                fork_upvr:FireServer(Humanoid_2, Parent_upvr.Parent:FindFirstChild("Torso"), Parent_upvr, arg1.Hit.p, Debris_upvr, waitfor_result1_upvr)
            end
        end
        wait(0)
        arg1.Icon = "rbxasset://textures\\GunCursor.png"
        waitfor_result1_upvr.Transparency = 0
        check = true -- Setting global
    end
end
Parent_upvr.Equipped:connect(function(arg1) -- Line 55
    if arg1 == nil then
        print("Mouse not found")
    else
        equipped = true -- Setting global
        arg1.Icon = "rbxasset://textures\\GunCursor.png"
        arg1.Button1Down:connect(function() -- Line 62
            --[[ Upvalues[1]:
                [1]: arg1 (readonly)
            ]]
            onButton1Down(arg1)
        end)
    end
end)
Parent_upvr.Unequipped:connect(function() -- Line 67
    --[[ Upvalues[1]:
        [1]: waitfor_result1_upvr (readonly)
    ]]
    equipped = false -- Setting global
    waitfor_result1_upvr.Transparency = 0
end)


   end, --final
})
local Button = Tab:CreateButton({
   Name = "Quick refill cake batter",
   Callback = function()
   -- The function that takes place when the button is pressed
        local lastposition = game.Players.LocalPlayer.Character.Torso.Position
        local icing
        local backpack
        if game.Players.LocalPlayer.Backpack:FindFirstChild("Icing") then
            if game.Players.LocalPlayer.Backpack.Icing.ammo.Value ~= 0 then
                return
            end
            game.Players.LocalPlayer.Backpack.Icing.Parent = game.Players.LocalPlayer.Character
            icing = game.Players.LocalPlayer.Character.Icing
            backpack = true
        else
            if game.Players.LocalPlayer.Character:FindFirstChild("Icing") then
                if game.Players.LocalPlayer.Character.Icing.ammo.Value ~= 0 then
                    return
                end
                icing = game.Players.LocalPlayer.Character.Icing
                backpack = false
            else
                return
            end
        end
        local numam = 0
        repeat
            numam = numam + 1
            game.Players.LocalPlayer.Character:MoveTo(workspace["rocky refill"].r.Position)
            wait(0.2)
        until icing.ammo.Value ~= 0 or numam == 50
        game.Players.LocalPlayer.Character:MoveTo(lastposition)
   end,
})
local Tab = Window:CreateTab("Place Teleports", "map-pin")
local Divider = Tab:CreateDivider()
local Button = Tab:CreateButton({
   Name = "Steakhouse",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(workspace.steakhouse.benches.Model.Model.Seat.Position)
   end,
})
local Button = Tab:CreateButton({
   Name = "Swings",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-175, 4, -131))
   end,
})
local Button = Tab:CreateButton({
   Name = "Spawn",
   Callback = function()
   -- The function that takes place when the button is pressed
   local tp = workspace.jaw:FindFirstChildWhichIsA("SpawnLocation")
        game.Players.LocalPlayer.Character:MoveTo(tp.Position)
   end,
})
local Button = Tab:CreateButton({
   Name = "Bathrooms",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(workspace.lavatory.lava.Part.Position)
   end,
})
local Button = Tab:CreateButton({
   Name = "Stairs (Bottom)",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(460.3690490722656, 4.49951171875, 51.81787109375))
   end,
})
local Button = Tab:CreateButton({
   Name = "Stairs (Top)",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(460.6348876953125, 638.74951171875, -587.9181518554688))
   end,
})
local Button = Tab:CreateButton({
   Name = "Paper airplanes",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(80.4104232788086, 29.775867462158203, -903.89599609375))
   end,
})
local Button = Tab:CreateButton({
   Name = "Cliffside",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-4789.03466796875, 148.3716278076172, 475.7809143066406))
   end,
})
local Button = Tab:CreateButton({
   Name = "The pillary ruins (North goiky)",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1174.0126953125, 173.1680450439453, -3105.033203125))
   end,
})
local Button = Tab:CreateButton({
   Name = "Liar Ball Island",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-563.0001831054688, 6.816127777099609, -1582.60546875))
   end,
})
local Button = Tab:CreateButton({
   Name = "Cakeover",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-292.27496337890625, 4.498729228973389, 571.5723266601562))
   end,
})
local Button = Tab:CreateButton({
   Name = "Buzzers",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-81.88142395019531, 4.489599704742432, 255.05612182617188))
   end,
})
local Section = Tab:CreateSection("Note: i just found out on 1/28/25 that theres an actual morph room like what")
local Section = Tab:CreateSection("sadly it doesnt work tho")
local Button = Tab:CreateButton({
   Name = "Actual Morph Room??",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-305.27398681640625, -415.8878173828125, -42041.64453125))
   end,
})


local Tab = Window:CreateTab("Character Teleports", "map-pin")
local Section = Tab:CreateSection("Note: I haven't put the characters in any specific order")
local Section = Tab:CreateSection("also another note: there is a lot of characters")
local Divider = Tab:CreateDivider()
local Button = Tab:CreateButton({
   Name = "Cornbread",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(workspace.CORN.Position)
   end,
})
local Button = Tab:CreateButton({
   Name = "Bracelety",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(workspace.bracelety.Seat.Position)
   end,
})
local Button = Tab:CreateButton({
   Name = "Naily",
   Callback = function()
   -- The function that takes place when the button is pressed
   if workspace:FindFirstChild("Naily") then
        game.Players.LocalPlayer.Character:MoveTo(workspace.Naily.Handle.Position)
    else
        Rayfield:Notify({
            Title = "Naily is gone",
            Content = "Please wait for Naily to come back",
            Duration = 4,
            Image = "circle-alert",
        })
    end
   end,
})
local Button = Tab:CreateButton({
   Name = "Bell",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(workspace.bell.Model.Dent.Position)
   end,
})
local Button = Tab:CreateButton({
   Name = "Firey",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(314.72552490234375, 2.1602821350097656, -184.8592071533203))
   end,
})
local Button = Tab:CreateButton({
   Name = "Liy",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(workspace.liy.Model.Union.Position)
   end,
})
local Button = Tab:CreateButton({
   Name = "Black Hole",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(workspace.blackhole.Position)
   end,
})
local Button = Tab:CreateButton({
   Name = "Blocky",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(11.514331817626953, 2.37904691696167, -77.28327178955078))
   end,
})
local Button = Tab:CreateButton({
   Name = "Leafy and Balloony",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(workspace.leafy.Part.Position)
   end,
})
local Button = Tab:CreateButton({
   Name = "Two",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(workspace.Two.Position)
   end,
})
local Button = Tab:CreateButton({
   Name = "Donut",
   Callback = function()
   -- The function that takes place when the button is pressed
   --1304.1893310546875, 140.36788940429688, -3193.624267578125
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-69.82012176513672, 5.8059234619140625, 243.40179443359375))
   end,
})
local Button = Tab:CreateButton({
   Name = "Teardrop",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-90.85347747802734, 8.62852668762207, 83.69060516357422))
   end,
})
local Button = Tab:CreateButton({
   Name = "Teardrop (The Pillary Ruins)",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1304.1893310546875, 140.36788940429688, -3193.624267578125))
   end,
})
local Button = Tab:CreateButton({
   Name = "Spongy",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1.4866180419921875, 5.726898193359375, 500.79705810546875))
   end,
})
local Button = Tab:CreateButton({
   Name = "Rocky",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(workspace["rocky refill"].r.Position)
   end,
})
local Button = Tab:CreateButton({
   Name = "Remote",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-405.4050598144531, 3.2114920616149902, 629.2705688476562))
   end,
})
local Button = Tab:CreateButton({
   Name = "Tennis Ball",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(workspace["tennis ball"].Position)
   end,
})
local Button = Tab:CreateButton({
   Name = "X",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(workspace["X and emeralds"].Part.Position)
   end,
})
local Button = Tab:CreateButton({
   Name = "David",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(98.78348541259766, 4.483013153076172, -859.9462890625))
   end,
})
local Button = Tab:CreateButton({
   Name = "Yellow Face",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(56.485740661621094, 4.4993896484375, -859.4707641601562))
   end,
})
local Button = Tab:CreateButton({
   Name = "Profily",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(workspace.User.Part.Position)
   end,
})
local Button = Tab:CreateButton({
   Name = "Liar Ball",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(workspace.Liarball.Model.Part.Position)
   end,
})
local Button = Tab:CreateButton({
   Name = "Loser",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(workspace.Loser.Part.Position)
   end,
})
local Button = Tab:CreateButton({
   Name = "Four",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(workspace.Four.Position)
   end,
})
local Button = Tab:CreateButton({
   Name = "Spongy (The Pillary Ruins)",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(workspace.spongy.spongy.Position)
   end,
})
local Button = Tab:CreateButton({
   Name = "Firey (The Pillary Ruins)",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1454.46240234375, 196.16783142089844, -3113.443603515625))
   end,
})
local Button = Tab:CreateButton({
   Name = "Lollipop",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1305.475830078125, 225.5721893310547, -2989.552490234375))
   end,
})
local Button = Tab:CreateButton({
   Name = "Gelatin",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1313.5054931640625, 265.07830810546875, -3011.936279296875))
   end,
})
local Button = Tab:CreateButton({
   Name = "Gelatin (Steakhouse)",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-467.91607666015625, 42.871055603027344, -147.32684326171875))
   end,
})
local Button = Tab:CreateButton({
   Name = "Tree",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(workspace.tree.Part.Position)
   end,
})
local Button = Tab:CreateButton({
   Name = "Golf Ball",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-5208.0576171875, 151.7541046142578, 557.481689453125))
   end,
})
local Button = Tab:CreateButton({
   Name = "Bubble",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(workspace.bubble.Part.Position)
   end,
})
local Button = Tab:CreateButton({
   Name = "Pie",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(workspace.pie.pie.pie.Position)
   end,
})
local Button = Tab:CreateButton({
   Name = "Fanny",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(workspace.morphroom.fanny.Part.Position)
   end,
})
local Button = Tab:CreateButton({
   Name = "Fanny (Actual Morph Room??)",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.Players.LocalPlayer.Character:MoveTo(workspace.morphroom.morphroom.fanny.Model.Part.Position)
   end,
})
local Label = Tab:CreateLabel("Pencil and Match are on the iance swing")
local Label = Tab:CreateLabel("Fries is on the Free Food swing")
local Label = Tab:CreateLabel("Clock is on The Losers swing")

local Tab = Window:CreateTab("Steakhouse Menu", "utensils") -- Title, Image
local Section = Tab:CreateSection("The steakhouse menu doesn't work sometimes so I added it here")

local Button = Tab:CreateButton({
   Name = "Rare Steak",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.ReplicatedStorage.steakhouseItem:FireServer("Rare")
   end,
})
local Button = Tab:CreateButton({
   Name = "Medium Steak",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.ReplicatedStorage.steakhouseItem:FireServer("Medium")
   end,
})
local Button = Tab:CreateButton({
   Name = "Well Done Steak",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.ReplicatedStorage.steakhouseItem:FireServer("WellDone")
   end,
})
local Button = Tab:CreateButton({
   Name = "Burnt Steak",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.ReplicatedStorage.steakhouseItem:FireServer("Burnt")
   end,
})
local Button = Tab:CreateButton({
   Name = "Bubbly Pop",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.ReplicatedStorage.steakhouseItem:FireServer("BubblyPop")
   end,
})
local Button = Tab:CreateButton({
   Name = "Ice Cube",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.ReplicatedStorage.steakhouseItem:FireServer("IceCube")
   end,
})
local Button = Tab:CreateButton({
   Name = "Fry",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.ReplicatedStorage.steakhouseItem:FireServer("Fry")
   end,
})
local Button = Tab:CreateButton({
   Name = "Gelatin",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.ReplicatedStorage.steakhouseItem:FireServer("Gelatin")
   end,
})
local Button = Tab:CreateButton({
   Name = "Donut",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.ReplicatedStorage.steakhouseItem:FireServer("Donut")
   end,
})
local Button = Tab:CreateButton({
   Name = "Burger",
   Callback = function()
   -- The function that takes place when the button is pressed
        game.ReplicatedStorage.steakhouseItem:FireServer("Burger")
   end,
})
local Tab = Window:CreateTab("Other", "circle-help") -- Title, Image
local Section = Tab:CreateSection("Hi")
local Section = Tab:CreateSection("I made a script for this game for fun")
local Section = Tab:CreateSection("I hope you enjoy this :)")
local Divider = Tab:CreateDivider()
local Section = Tab:CreateSection("this took literally forever to make")
local Divider = Tab:CreateDivider()
local Button = Tab:CreateButton({
   Name = "Remove Rayfield (Unload script)",
   Callback = function()
   -- The function that takes place when the button is pressed
   Rayfield:Destroy()
   end,
})