local contestants = {
    "AVOCADO", "BALLOONY", "BALLY", "BARBECUESAUCE", "BARFBAG", "BASKETBALL", "BATTERY", "BELL", "BLACKHOLE", "BLENDER",
    "BLOCKY", "BOMBY", "BOOK", "BOOMBOX", "BOTTLE", "BRACELETY", "BUBBLE", "BUG", "CAKE", "CAMERA", "CHEESEORB", "CLIP",
    "CLOCK", "CLOUDY", "COINY", "CRT", "DAVID", "DISCY", "DONUT", "DORA", "EGGY", "EIGHTBALL", "ERASER", "EVILLEAFY", "FANNY",
    "FIREY", "FIREYJUNIOR", "FLOWER", "FOLDY", "FRIES", "GATY", "GELATIN", "GOLFBALL", "GRASSY", "ICECUBE", "INCOMETAXRETURNDOCUMENT",
    "LEAFY", "LEEK", "LEGOBRICK", "LEWIS", "LIGHTNING", "LIY", "LOLLIPOP", "LOSER", "MARBLE", "MARKER", "MATCH", "NAILY",
    "NEEDLE", "NICKEL", "NINEBALL", "ONIGIRI", "PANFLUTE", "PDA", "PEN", "PENCIL", "PIE", "PILLOW", "PIN", "PINEAPPLE", "PRICETAG",
    "PROFILY", "PUFFBALL", "PURPLEFACE", "REDBUG", "REMOTE", "ROBOTFLOWER", "ROBOTY", "ROCKY", "RUBBERSPATULA", "RUBY", "RUSTYCOIN",
    "SAW", "SHAMPOO", "SHOPPINGCART", "SNOWBALL", "SPONGY", "STAPY", "STEAMY", "TACO", "TAPE", "TEARDROP", "TENNISBALL", "TREE",
    "TUNE", "TV", "VHSY", "WAFFLE", "WINNER", "WOODY", "YELLOWFACE"
}

for _, contestant in ipairs(contestants) do
    if workspace.Contestants[contestant] and workspace.Contestants[contestant]:FindFirstChild("Torso") then
        game.Players.LocalPlayer.Character["Zap Ray"].ZapShoot:FireServer(workspace.Contestants[contestant].Torso.Position)
        wait(0.05)
    end
end
