
#> switch:modes/rush_the_point/explode_tnt
#
# @executed	as @e[type=tnt,nbt={Fuse:1s}] & at @s
#
# @within	switch:modes/rush_the_point/tick_common [ as @e[type=tnt,nbt={Fuse:1s}] & at @s ]
#			switch:modes/rush_the_point/tick_common [ as @e[type=armor_stand,tag=switch.fireball,predicate=!switch:has_vehicle] & at @s & positioned ~ ~-1 ~ ]
#

kill @s
summon creeper ~ ~ ~ {Fuse:0s,ignited:true}
fill ~2 ~3 ~ ~-2 ~-3 ~ air replace #switch:rush_the_point/can_break
fill ~ ~3 ~2 ~ ~-3 ~-2 air replace #switch:rush_the_point/can_break
fill ~3 ~2 ~ ~-3 ~-2 ~ air replace #switch:rush_the_point/can_break
fill ~ ~2 ~3 ~ ~-2 ~-3 air replace #switch:rush_the_point/can_break
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace #switch:rush_the_point/can_break
fill ~-2 ~ ~-3 ~2 ~ ~3 air replace #switch:rush_the_point/can_break
fill ~-3 ~ ~-2 ~3 ~ ~2 air replace #switch:rush_the_point/can_break

