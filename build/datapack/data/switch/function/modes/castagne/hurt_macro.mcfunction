
#> switch:modes/castagne/hurt_macro
#
# @executed	as the player & at current position
#
# @within	switch:modes/castagne/entity_hurt_player with storage switch:temp input
#
# @args		attacker_id (int)
#			my_id (int)
#

$execute unless data storage switch:temp castagne[{id:$(attacker_id)}].hurt[{id:$(my_id)}] run data modify storage switch:temp castagne[{id:$(attacker_id)}].hurt append value {id:$(my_id)}
$execute store result score #count switch.data run data get storage switch:temp castagne[{id:$(attacker_id)}].hurt
execute unless score #test_mode switch.data matches 1 if score #count switch.data >= #initial_count switch.data on attacker run advancement grant @s only switch:visible/29

