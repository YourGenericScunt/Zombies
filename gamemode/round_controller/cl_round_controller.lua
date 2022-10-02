local round_status = 0

net.Receive("UpdateRoundStatus", function ()

    round_status = nert.ReadInt(4)
    
end)

function getRoundStatus()

    return round_status
    
end