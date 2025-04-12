
# Increment the current game time_since_last_play
scoreboard players set #temp switch.data 0
$execute store result score #temp switch.data run data get storage switch:main history.time_since_last_play.$(id)
scoreboard players add #temp switch.data 1
$execute store result storage switch:main history.time_since_last_play.$(id) int 1 run scoreboard players get #temp switch.data

# Continue loop until the list is empty
data remove storage switch:temp copy[0]
execute if data storage switch:temp copy[0] run function switch:engine/launch_game/increment_time_since_last_play with storage switch:temp copy[0]

