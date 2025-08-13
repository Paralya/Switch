
#> switch:modes/moutron/adv_kill
#
# @executed	at @s & as @p[tag=switch.moutron_killer]
#
# @within	switch:modes/moutron/death [ at @s & as @p[tag=switch.moutron_killer] ]
#

scoreboard players add @s switch.temp.kill 1
execute unless score #test_mode switch.data matches 1 if score @s switch.temp.kill matches 3 run advancement grant @s only switch:visible/27

