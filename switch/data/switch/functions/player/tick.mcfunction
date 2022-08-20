
function switch:player/trigger/main

execute unless score @s switch.leave matches 0 run function switch:player/joined
scoreboard players operation @s last_total_games = #total_games switch.data
