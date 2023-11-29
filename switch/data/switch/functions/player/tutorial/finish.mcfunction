
team leave @s
scoreboard players reset @s switch.tutorial
gamerule announceAdvancements true
advancement grant @s only switch:tutorial
clear @s

function switch:player/update_stats_storage/main
function switch:stats/sort_player_stats
kill @e[tag=switch.stat_display]

