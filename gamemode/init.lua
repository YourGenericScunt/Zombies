AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

--Include Other Scripts

AddCSLuaFile("round_controller/cl_round_controller.lua")
include("round_controller/sv_round_controller.lua")



function GM:PlayerInitialSpawn(ply)

    print("Player"..ply:Name().." has been enrolled")

end