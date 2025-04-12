
#> switch:player/update_stats_storage/of_player
#
# @within	switch:player/update_stats_storage/every_player_loop {player:"$(username)"}
#

# Get username
$data modify storage switch:main input set value {player:"$(player)"}

# Insert global stats
function switch:player/update_stats_storage/global_stats with storage switch:main input

# Insert stats per game
data modify storage switch:main copy set from storage switch:main minigames
execute if data storage switch:main copy[0] run data modify storage switch:main copy[0].player set from storage switch:main input.player
execute if data storage switch:main copy[0] run function switch:player/update_stats_storage/stats_per_minigame with storage switch:main copy[0]

