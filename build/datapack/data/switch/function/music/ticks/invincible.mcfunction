
#> switch:music/ticks/invincible
#
# @within	switch:music/player_tick
#

## This file is auto-generated by the script in the same folder, do not edit this file
scoreboard players add @s switch.music.progress 1
data modify storage switch:temp input set value {tick:0,name:"invincible"}
scoreboard players operation #temp switch.data = @s switch.music.progress
scoreboard players remove #temp switch.data 20
execute store result storage switch:temp input.tick int 1 run scoreboard players get #temp switch.data
function switch:music/tick_macro with storage switch:temp input

# Stop if the music is over
execute if score #temp switch.data >= #invincible switch.music.progress run function switch:music/music_over


scoreboard players add @s switch.music.progress 1
data modify storage switch:temp input set value {tick:0,name:"invincible"}
scoreboard players operation #temp switch.data = @s switch.music.progress
scoreboard players remove #temp switch.data 20
execute store result storage switch:temp input.tick int 1 run scoreboard players get #temp switch.data
function switch:music/tick_macro with storage switch:temp input

# Stop if the music is over
execute if score #temp switch.data >= #invincible switch.music.progress run function switch:music/music_over

