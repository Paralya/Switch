
#> switch:player/trigger/coupdetat/action
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/trigger/coupdetat/main
#

# Error if a game is not running or someone is already in a coup d'état
execute unless score #engine_state switch.data matches 3 run return run function switch:player/trigger/coupdetat/error
execute if score #coupdetat switch.data matches 1 run return run function switch:player/trigger/coupdetat/error

# Start the vote for coup d'état
data modify storage switch:temp input set value {index_hundred:0}
execute store result storage switch:temp input.index_hundred int 1 run scoreboard players get @s switch.trigger.coupdetat
function switch:player/trigger/coupdetat/launch_vote with storage switch:temp input

