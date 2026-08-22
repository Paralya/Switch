
#> switch:player/trigger/succes/mode_collect
#
# @within	switch:player/trigger/succes/mode_collect with storage switch:temp ids[0]
#			switch:player/trigger/succes/mode_section with storage switch:temp ids[0]
#
# @args		id (unknown)
#

$data modify storage switch:temp mode_copy append from storage switch:advancements all[{id:$(id)}]
data remove storage switch:temp ids[0]
execute if data storage switch:temp ids[0] run function switch:player/trigger/succes/mode_collect with storage switch:temp ids[0]

