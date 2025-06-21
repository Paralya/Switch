
#> switch:player/tick
#
# @within	switch:tick
#

# Check if new username
execute unless score @s switch.reconnect = #score switch.reconnect run function switch:player/username_change/check

# Handle player trigger inputs
function switch:player/trigger/main

# Ask for a lang if not set
execute unless score @s switch.lang matches 0.. run function switch:player/trigger/lang/tick_undefined
execute unless score @s switch.lang matches 0.. run tag @s add detached
execute unless score @s switch.lang matches 0.. run return 1

# Set player id
execute unless score @s switch.id matches 1.. run function switch:player/set_id

# Check if player reconnected
execute unless score @s switch.reconnect = #score switch.reconnect run function switch:player/joined
scoreboard players operation @s switch.last_total_games = total_games switch.last_total_games

# 1 money per kill
execute if score @s switch.kill matches 1.. run scoreboard players operation @s switch.money += @s switch.kill
execute if score @s switch.kill matches 1.. run scoreboard players reset @s switch.kill

# Detach tick at spawn
execute if dimension minecraft:overworld if entity @s[tag=detached,x=0,y=69,z=0,distance=..200] run function switch:player/tick_detach

# Noteblock
execute at @s if score @s switch.music.progress matches 1.. run function switch:music/player_tick

