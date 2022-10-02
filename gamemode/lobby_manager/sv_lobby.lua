util.AddNetworkString("open_lobby")

function enterLobby()

    net.Start("open_lobby")
    net.Broadcast()
    
end

hook.Add("PlayerInitialSpawn", "Openplayerlobby", enterLobby()
    
end
