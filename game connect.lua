
--In game notif.
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "KANAO",
    Text = "https://discord.gg/jG738wsJYF"})

    --chat request
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("[LOADING KANAO]","all")
wait(3.0)
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("[KANAO HAS LOADED! COMMANDS ARE IN F9.]","all")
wait(0.5)
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("volms 0001","all")
game.Players.LocalPlayer.Chatted:connect(function(cmd)
end)
