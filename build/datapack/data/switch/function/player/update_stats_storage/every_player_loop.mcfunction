
#> switch:player/update_stats_storage/every_player_loop
#
# @within	switch:player/update_stats_storage/every_player with storage switch:temp players[0]
#			switch:player/update_stats_storage/every_player_loop with storage switch:temp players[0]
#

$function switch:player/update_stats_storage/of_player {player:"$(name)"}

# Continue loop
data remove storage switch:temp players[0]
function switch:player/update_stats_storage/every_player_loop with storage switch:temp players[0]

