
#> switch:modes/block_party/death
#
# @within	switch:modes/block_party/joined
#			switch:modes/block_party/tick
#

function switch:translations/modes_block_party_death
execute if entity @s[gamemode=!spectator] run scoreboard players add @s switch.stats.deaths 1
execute if entity @s[gamemode=!spectator] run summon lightning_bolt ~ ~-5 ~
execute if entity @s[gamemode=!spectator] run tag @s add switch.temp
execute unless score #test_mode switch.data matches 1 if entity @s[gamemode=!spectator] on attacker if entity @s[type=ravager] run advancement grant @p[tag=switch.temp] only switch:visible/31
execute if entity @s[gamemode=!spectator] run tag @s remove switch.temp
execute unless score #test_mode switch.data matches 1 if entity @s[gamemode=!spectator] if score #block_party_round switch.data matches ..2 run advancement grant @s only switch:visible/35

gamemode spectator @s
execute unless score #process_end switch.data matches 1 at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~
effect clear @s
clear @s

