
#> switch:second
#
# @within	switch:tick
#

# Timer
scoreboard players set #tick switch.data 0
scoreboard players add #global_second switch.data 1
scoreboard players add #score switch.reconnect 1
scoreboard players operation @a switch.reconnect = #score switch.reconnect

# Others
execute if score #engine_state switch.data matches 3 run function switch:engine/signals/second

# Last death timer & play time
scoreboard players add @a switch.last_death 1
scoreboard players add @a switch.play_time 1

# Second Right click reset
scoreboard players reset @a switch.second_right_click

# Stat display life
scoreboard players add @e[type=text_display,tag=switch.stat_display] switch.data 1
kill @e[type=text_display,tag=switch.stat_display,scores={switch.data=60..}]

# Kill items out of the map
execute if score #engine_state switch.data matches 3 as @e[type=item] at @s if block ~ ~-1 ~ barrier if block ~ ~-2 ~ #switch:out_of_map run kill @s
execute if score #engine_state switch.data matches 3 as @e[type=item] at @s if block ~ ~-1 ~ barrier if block ~ ~ ~ #switch:out_of_map run kill @s

# Tutorial 5 seconds loop (1/5 times)
scoreboard players operation #temp switch.data = #global_second switch.data
scoreboard players operation #temp switch.data %= #5 switch.data
execute if score #temp switch.data matches 0 as @a[team=switch.tutorial] at @s run function switch:player/tutorial/second

# Lobby second
execute if score #players_in_lobby switch.data matches 1.. in minecraft:overworld positioned 0 69 0 run function switch:lobby_second

