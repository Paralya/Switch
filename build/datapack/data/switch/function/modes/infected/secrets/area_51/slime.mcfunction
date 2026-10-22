
#> switch:modes/infected/secrets/area_51/slime
#
# @within	switch:modes/infected/secrets/area_51/_load
#

execute positioned 92 122 2087 run function switch:utils/safe_kill_macro {selector:"@e[type=slime,distance=..500]"}
summon slime 92 122 2087 {Size:5,Silent:true,Tags:["switch.infected.slime"]}

