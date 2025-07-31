
#> switch:modes/fish_fight/block_disappear/marker_tick
#
# @executed	as @e[tag=switch.fish_fight_block]
#
# @within	switch:modes/fish_fight/block_disappear/global_tick [ as @e[tag=switch.fish_fight_block] ]
#

scoreboard players remove @s switch.data 1
execute if score @s switch.data matches ..0 at @s run setblock ~ ~ ~ air destroy
execute if score @s switch.data matches ..0 run kill @e[type=item,sort=nearest,limit=1]
execute if score @s switch.data matches ..0 run kill @s

