
#> switch:modes/infected/secrets/area_51/slime
#
# @within	switch:modes/infected/secrets/area_51/_load
#

execute positioned 2039 21 2024 run function switch:utils/safe_kill_macro {selector:"@e[type=slime,distance=..500]"}
summon slime 2039 21 2024 {Size:5,Silent:true}
summon slime 2039 121 2024 {Size:5,Silent:true}

