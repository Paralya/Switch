
#> switch:player/trigger/coupdetat/launch_vote
#
# @within	switch:player/trigger/coupdetat/action with storage switch:temp input
#

# Extract the wanted minigame by using the index_hundred
$data modify storage switch:main coupdetat set from storage switch:main minigames[{index_hundred:$(index_hundred)}]

# Set up score vote
scoreboard objectives remove switch.coupdetat_vote
scoreboard objectives add switch.coupdetat_vote trigger
scoreboard players enable @a[tag=!detached] switch.coupdetat_vote
scoreboard players set #coupdetat switch.data 1

# Remove 100 sapphires from the player
scoreboard players remove @s switch.money 100
function switch:stats/util_update_player

# Tag player to indicate they are in a coup d'état
tag @a remove switch.coupdetat
tag @s add switch.coupdetat

# Ask players to support the coup d'état
function switch:translations/player_trigger_coupdetat_launch_vote

