
#> switch:build_groups_games
#
# @within	switch:build_groups_games with storage switch:temp copy[0]
#			switch:load with storage switch:temp copy[0]
#
# @args		group (unknown)
#

# Append the first minigame of the copy to its group list
$data modify storage switch:main groups_games.$(group) append from storage switch:temp copy[0]

# Remove it from the copy and continue
data remove storage switch:temp copy[0]
execute if data storage switch:temp copy[0] run function switch:build_groups_games with storage switch:temp copy[0]

