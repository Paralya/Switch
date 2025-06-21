
#> switch:player/trigger/rating/display
#
# @within	switch:player/trigger/rating/main
#

## For each of the game, print it in order
function switch:translations/player_trigger_rating_display

# Done advancements
data modify storage switch:temp copy set from storage switch:ratings all
execute if data storage switch:temp copy[0] run function switch:player/trigger/rating/display_loop with storage switch:temp copy[0]

scoreboard players set @s switch.trigger.rating 0

