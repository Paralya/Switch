
#> switch:modes/castagne/entity_hurt_player
#
# @executed	as the player & at current position
#
# @within	switch:modes/castagne/calls/entity_hurt_player
#

data modify storage switch:temp input set value {my_id:0,attacker_id:0}
execute on attacker store result storage switch:temp input.attacker_id int 1 run scoreboard players get @s switch.id
execute store result storage switch:temp input.my_id int 1 run scoreboard players get @s switch.id
function switch:modes/castagne/hurt_macro with storage switch:temp input

