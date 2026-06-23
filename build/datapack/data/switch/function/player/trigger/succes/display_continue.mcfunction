
#> switch:player/trigger/succes/display_continue
#
# @within	switch:player/trigger/succes/display_loop with storage switch:temp copy[0]
#			switch:player/trigger/succes/display_loop_2 with storage switch:temp copy[0]
#
# @args		player (unknown)
#

data remove storage switch:temp copy[0]
$execute if data storage switch:temp copy[0] run data modify storage switch:temp copy[0].player set value $(player)

