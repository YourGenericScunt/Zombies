util.AddNetworkString("open_lobby")
util.AddNetworkString("start_game")

function enterLobby()

    net.Start("open_lobby")
    net.Broadcast()
    
end

net.Receive("start_game",function ()
    
    beginRound()

end)

hook.Add("PlayerInitialSpawn", "Openplayerlobby", enterLobby)

