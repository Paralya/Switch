
#> switch:player/update_stats_storage/every_player
#
# @within	switch:stats/_update_every_single_stat
#

# Get all players and loop
data modify storage switch:temp players set from storage switch:main UUIDs
function switch:player/update_stats_storage/every_player_loop with storage switch:temp players[0]

