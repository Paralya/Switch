
#> switch:modes/infected/secrets/area_51/giant
#
# @within	switch:modes/infected/secrets/area_51/_load
#

execute positioned 2000 4 2041 run function switch:utils/safe_kill_macro {selector:"@e[tag=switch.giant]"}
summon zombie 2000 4 2041 {NoAI:true,Rotation:[180.0f,0.0f],Tags:["switch.giant"],Invulnerable:true,Team:"switch.temp.zombie",attributes:[{id:"minecraft:scale",base:6.4d}]}
summon zombie 2000 104 2041 {NoAI:true,Rotation:[180.0f,0.0f],Tags:["switch.giant"],Invulnerable:true,Team:"switch.temp.zombie",attributes:[{id:"minecraft:scale",base:6.4d}]}

