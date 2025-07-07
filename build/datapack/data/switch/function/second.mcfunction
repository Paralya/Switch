
#> switch:second
#
# @within	switch:tick
#

# Timer
scoreboard players set #tick switch.data 0
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

# Tutorial second loop
execute as @a[team=switch.tutorial] at @s run function switch:player/tutorial/second

# If players in the lobby, show title action bar with the current game and number of players
execute if score #players_in_lobby switch.data matches 1.. run function switch:player/detached_action_bar

