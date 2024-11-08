
#> switch:modes/murder_mystery/throw/player_tick
#
# @within	switch:modes/murder_mystery/tick
#

# Reload
execute if score @s switch.temp.throw_reload matches 1.. run scoreboard players remove @s switch.temp.throw_reload 1

# Detect if right click
execute if score @s switch.temp.throw_reload matches 188 run function switch:modes/murder_mystery/throw/throw
execute if score @s switch.temp.throw_reload matches 189.. run function switch:modes/murder_mystery/throw/feedback

