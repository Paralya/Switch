
# Get all players and loop
data modify storage switch:temp players set from storage switch:stats all.player.total_money
function switch:player/update_stats_storage/every_player_loop with storage switch:temp players[0]

