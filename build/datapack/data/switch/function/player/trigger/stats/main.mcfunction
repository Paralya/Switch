
#> switch:player/trigger/stats/main
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/trigger/stats/entry with storage switch:main input
#

# Bases
function switch:translations/player_trigger_stats_main with storage switch:main input

# Prepare a compound list containing the number of games played and the name for each game
data modify storage switch:main stats set value []
data modify storage switch:main copy set from storage switch:main minigames
execute if data storage switch:main copy[0] run data modify storage switch:main copy[0].player set from storage switch:main input.player
execute if data storage switch:main copy[0] run function switch:player/trigger/stats/get_loop with storage switch:main copy[0]

# Sort the list by number of games played (descending)
data modify storage switch:temp sorted_stats set value []
execute if data storage switch:main stats[0] run function switch:player/trigger/stats/sort_loop

# Display the list
execute if data storage switch:temp sorted_stats[0] run function switch:player/trigger/stats/display_loop

# Total victories (all games)
$scoreboard players add $(player) switch.stats.wins 0

# Reset trigger
scoreboard players set @s switch.trigger.stats 0
data remove storage switch:main input

