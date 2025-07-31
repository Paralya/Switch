
#> switch:modes/build_battle/add_money
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/build_battle/process_end [ as @a[tag=!detached] & at @s ]
#

scoreboard players set #add_override switch.money 50
function switch:engine/add_money

