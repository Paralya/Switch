
#> switch:modes/pvpswap/hurt_macro
#
# @within	switch:modes/pvpswap/entity_hurt_player with storage switch:temp input
#

$execute unless data storage switch:temp pvpswap[{id:$(attacker_id)}].hurt[{id:$(my_id)}] run data modify storage switch:temp pvpswap[{id:$(attacker_id)}].hurt append value {id:$(my_id)}
$execute store result score #count switch.data run data get storage switch:temp pvpswap[{id:$(attacker_id)}].hurt
execute unless score #test_mode switch.data matches 1 if score #count switch.data >= #initial_count switch.data on attacker run advancement grant @s only switch:visible/29
