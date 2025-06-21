
#> switch:modes/pitchout/xp_bar
#
# @within	switch:modes/pitchout/map_1/tp_give
#			switch:modes/pitchout/map_halloween/tp_give
#			switch:modes/pitchout/start
#

execute if entity @s[scores={switch.alive=1}] run scoreboard players set #points switch.data 333
execute if entity @s[scores={switch.alive=2}] run scoreboard players set #points switch.data 666
execute if entity @s[scores={switch.alive=3}] run scoreboard players set #points switch.data 1000
function switch:engine/xp_bar_at_s

