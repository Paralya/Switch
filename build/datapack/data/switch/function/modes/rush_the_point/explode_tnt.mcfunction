
#> switch:modes/rush_the_point/explode_tnt
#
# @executed	as @e[type=tnt,nbt={Fuse:1s}] & at @s
#
# @within	switch:modes/rush_the_point/tick_common [ as @e[type=tnt,nbt={Fuse:1s}] & at @s ]
#			switch:modes/rush_the_point/tick_common [ as @e[type=armor_stand,tag=switch.fireball,predicate=!switch:has_vehicle] & at @s & positioned ~ ~-1 ~ ]
#

kill @s
playsound switch:explosion ambient @a[distance=..20]
particle minecraft:explosion ~ ~ ~ .5 .5 .5 1 10 force @a[distance=..50]
fill ~2 ~3 ~ ~-2 ~-3 ~ air replace #switch:rush_the_point/can_break
fill ~ ~3 ~2 ~ ~-3 ~-2 air replace #switch:rush_the_point/can_break
fill ~3 ~2 ~ ~-3 ~-2 ~ air replace #switch:rush_the_point/can_break
fill ~ ~2 ~3 ~ ~-2 ~-3 air replace #switch:rush_the_point/can_break
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace #switch:rush_the_point/can_break
fill ~-2 ~ ~-3 ~2 ~ ~3 air replace #switch:rush_the_point/can_break
fill ~-3 ~ ~-2 ~3 ~ ~2 air replace #switch:rush_the_point/can_break

