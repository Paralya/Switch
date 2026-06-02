
#> switch:modes/pitchout/xp_bar
#
# @within	switch:modes/pitchout/_tp_give_common
#			switch:modes/pitchout/start [ as @a[tag=!detached] ]
#

execute if entity @s[scores={switch.alive=1}] run scoreboard players set #points switch.data 333
execute if entity @s[scores={switch.alive=2}] run scoreboard players set #points switch.data 666
execute if entity @s[scores={switch.alive=3}] run scoreboard players set #points switch.data 1000
function switch:modes/_common/xp_bar/points_at_s

