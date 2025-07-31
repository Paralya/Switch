
#> switch:modes/warden_escape/suicidaire_advancement
#
# @executed	as @a[tag=!detached]
#
# @within	switch:modes/warden_escape/second [ as @a[tag=!detached] ]
#

scoreboard players set #count switch.data 0
tag @s add switch.temp
execute as @e[type=warden] on target if entity @s[tag=switch.temp] run scoreboard players add #count switch.data 1
tag @s remove switch.temp
execute unless score #test_mode switch.data matches 1 if score #count switch.data matches 8.. run advancement grant @s only switch:visible/26

