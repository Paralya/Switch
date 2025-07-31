
#> switch:player/trigger/rating/print
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/trigger/rating/action with storage switch:temp input
#

# Macro input {index:0,index_hundred:0,digits:0}

data remove storage switch:temp temp
$data modify storage switch:temp temp set from storage switch:ratings all[{index:$(index)}].players[{name:"$(player)"}].value
function switch:translations/player_trigger_rating_print with storage switch:temp input

