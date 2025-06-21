
#> switch:utils/safe_kill_macro
#
# @within	switch:engine/force_start_macro {selector:"@e[type=!player,tag=!detached]"}
#			switch:engine/launch_game/main {selector:"@e[type=!player]"}
#			switch:engine/stop {selector:"@e[type=!player]"}
#			switch:modes/boat_race/second {selector:"@e[type=#minecraft:boat]"}
#			switch:modes/infected/secrets/area_51/giant {selector:"@e[tag=switch.giant,distance=..100]"}
#			switch:modes/infected/secrets/area_51/slime {selector:"@e[type=slime,distance=..500]"}
#			switch:modes/kart_racer/process_end {selector:"@e[tag=shopping_kart.kart]"}
#			switch:modes/kart_racer/process_end {selector:"@e[tag=switch.checkpoint]"}
#			switch:modes/kart_racer/stop {selector:"@e[tag=shopping_kart.kart]"}
#			switch:modes/kart_racer/stop {selector:"@e[tag=switch.checkpoint]"}
#			switch:modes/pitch_creep/second {selector:"@e[type=creeper,distance=..100]"}
#

$execute as $(selector) on passengers run ride @s[type=player] dismount
$tp $(selector) 0 -10000 0
$kill $(selector)

