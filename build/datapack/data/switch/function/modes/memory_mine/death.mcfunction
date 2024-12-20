
#> switch:modes/memory_mine/death
#
# @within	switch:modes/memory_mine/joined
#			switch:modes/memory_mine/mine_tick
#			switch:modes/memory_mine/process_end
#			switch:modes/memory_mine/zone/end
#

scoreboard players set #success switch.data 1

execute unless score #test_mode switch.data matches 1 if entity @s[gamemode=!spectator] if score @s switch.id = #owner_id switch.data run advancement grant @s only switch:visible/36
execute if entity @s[gamemode=!spectator] run effect give @s glowing infinite 255 true
execute if entity @s[gamemode=!spectator] run particle explosion ~ ~ ~ 0 0 0 1 1 force @a[distance=..50]
execute if entity @s[gamemode=!spectator] run playsound switch:explosion ambient @a[distance=..50]
function switch:translations/modes_memory_mine_death
execute if entity @s[gamemode=!spectator] run scoreboard players add @s switch.stats.deaths 1
scoreboard players reset @s switch.temp.cooldown

gamemode spectator @s
effect clear @s
execute at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~
clear @s

