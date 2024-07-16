
execute positioned 2000 4 2041 run function switch:utils/safe_kill_macro {selector:"@e[tag=switch.giant]"}
summon giant 2000 4 2041 {NoAI:true,Rotation:[180.0f,0.0f],Tags:["switch.giant"],Invulnerable:true,Team:"switch.temp.zombie"}
summon giant 2000 104 2041 {NoAI:true,Rotation:[180.0f,0.0f],Tags:["switch.giant"],Invulnerable:true,Team:"switch.temp.zombie"}

