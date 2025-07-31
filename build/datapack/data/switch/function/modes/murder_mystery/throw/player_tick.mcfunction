
#> switch:modes/murder_mystery/throw/player_tick
#
# @executed	as @a[scores={switch.temp.role=3}] & at @s
#
# @within	switch:modes/murder_mystery/tick [ as @a[scores={switch.temp.role=3}] & at @s ]
#

# Reload
execute if score @s switch.temp.throw_reload matches 1.. run scoreboard players remove @s switch.temp.throw_reload 1

# Detect if right click
execute if score @s switch.temp.throw_reload matches 188 run function switch:modes/murder_mystery/throw/throw
execute if score @s switch.temp.throw_reload matches 189.. run function switch:modes/murder_mystery/throw/feedback

