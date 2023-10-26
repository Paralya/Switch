
scoreboard players add @s switch.temp.cooldown 0
scoreboard players add @s switch.temp.dead_cooldown 0
scoreboard players add @s[scores={switch.temp.cooldown=..-1}] switch.temp.cooldown 1
scoreboard players add @s[scores={switch.temp.dead_cooldown=..-1}] switch.temp.dead_cooldown 1
tag @s[tag=global.ignore,scores={switch.temp.dead_cooldown=0}] remove global.ignore

scoreboard players set #is_alive switch.data 0
execute if score @s switch.temp.dead_cooldown matches 0 run scoreboard players set #is_alive switch.data 1

## When the player is alive: switch.temp.cooldown (Shoot cooldown)
# -20 ticks = 100%
# 0 ticks = 0%
execute if score #is_alive switch.data matches 1 run scoreboard players operation #temp switch.data = @s switch.temp.cooldown
execute if score #is_alive switch.data matches 1 run scoreboard players operation #temp switch.data *= #-1 switch.data
execute if score #is_alive switch.data matches 1 run scoreboard players operation #temp switch.data *= #50 switch.data
execute if score #is_alive switch.data matches 1 if entity @s[tag=switch.bonus.fast] run scoreboard players operation #temp switch.data *= #5 switch.data
execute if score #is_alive switch.data matches 1 run scoreboard players set #points switch.data 1000
execute if score #is_alive switch.data matches 1 run scoreboard players operation #points switch.data -= #temp switch.data

## When the player is dead: switch.temp.dead_cooldown (Disabled cooldown)
# -100 ticks = 100%
# 0 ticks = 0%
execute if score #is_alive switch.data matches 0 run scoreboard players operation #points switch.data = @s switch.temp.dead_cooldown
execute if score #is_alive switch.data matches 0 run scoreboard players operation #points switch.data *= #-10 switch.data

# Apply
function switch:engine/xp_bar_at_s

