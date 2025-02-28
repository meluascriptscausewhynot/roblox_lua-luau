game.StarterGui:SetCore("SendNotification", {
  Title = "hi", -- Notification title
  Text = "i didn't make infinite yield, i created this script to load infinite yield without me having to click out of roblox", -- Notification text
  Icon = "", -- Notification icon (optional)
  Duration = 5, -- Duration of the notification (optional, may be overridden if more than 3 notifs appear)
  Callback = nil, -- Bindable Event (will provide docs if wanted)
  Button1 = "OK", -- button 1 text (optional)
})
loadstring(game:HttpGet("https://infyiff.github.io/resources/IY_FE.txt", true))()
