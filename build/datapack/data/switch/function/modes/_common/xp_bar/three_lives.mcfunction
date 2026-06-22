
#> switch:modes/_common/xp_bar/three_lives
#
# @within	switch:modes/fish_fight/xp_bar
#			switch:modes/pitchout/xp_bar
#

execute if entity @s[scores={switch.alive=1}] run scoreboard players set #points switch.data 333
execute if entity @s[scores={switch.alive=2}] run scoreboard players set #points switch.data 666
execute if entity @s[scores={switch.alive=3}] run scoreboard players set #points switch.data 1000
function switch:modes/_common/xp_bar/points_at_s

