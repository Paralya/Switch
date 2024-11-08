
#> switch:stats/increment_minigame_played
#
# @within	switch:engine/signals/start with storage switch:main input
#

scoreboard players set #total_games switch.data 0
$execute store result score #total_games switch.data run data get storage switch:stats all.modes.$(id).total_games
scoreboard players add #total_games switch.data 1
$execute store result storage switch:stats all.modes.$(id).total_games int 1 run scoreboard players get #total_games switch.data

