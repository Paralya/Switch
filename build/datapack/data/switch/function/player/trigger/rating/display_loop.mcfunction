
#> switch:player/trigger/rating/display_loop
#
# @within	switch:player/trigger/rating/display with storage switch:temp copy[0]
#			switch:player/trigger/rating/display_loop with storage switch:temp copy[0]
#

# Tellraw
data modify storage switch:temp temp set from storage switch:temp copy[0]
$data modify storage switch:temp Name set from storage switch:main minigames[{id:"$(id)"}].Name
execute store result score #digits switch.data run data get storage switch:temp temp.digits
execute store result score #nb_ratings switch.data if data storage switch:temp temp.players[]
function switch:translations/player_trigger_rating_display_loop with storage switch:temp temp

# Continue loop
data remove storage switch:temp copy[0]
execute if data storage switch:temp copy[0] run function switch:player/trigger/rating/display_loop with storage switch:temp copy[0]

