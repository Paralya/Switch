
scoreboard players add #next_id switch.id 1
scoreboard players operation @s switch.id = #next_id switch.id

# Update player stats
function switch:player/update_stats_storage/main
function switch:stats/sort_player_stats
kill @e[tag=switch.stat_display]

# Launch tutorial
function switch:player/tutorial/start

