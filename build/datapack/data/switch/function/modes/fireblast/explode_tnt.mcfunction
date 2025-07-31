
#> switch:modes/fireblast/explode_tnt
#
# @executed	as @e[type=armor_stand,tag=switch.fireball,predicate=!switch:has_vehicle] & at @s
#
# @within	switch:modes/fireblast/tick [ as @e[type=armor_stand,tag=switch.fireball,predicate=!switch:has_vehicle] & at @s ]
#

kill @s
summon creeper ~ ~ ~ {Fuse:0s,ignited:true}
playsound switch:explosion ambient @a[distance=..50]
#summon tnt ~ ~ ~ {block_state:{name:"minecraft:air"}}

