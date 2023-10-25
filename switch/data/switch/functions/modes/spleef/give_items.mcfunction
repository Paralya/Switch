
tag @s add switch.temp

loot spawn ~ ~ ~ loot simplenergy:i/simplunium_shovel
item replace entity @s hotbar.1 with ender_pearl
item replace entity @s hotbar.8 with snow_block 8

xp set @s 0 levels
xp set @s 0 points

execute as @e[type=item,tag=!switch.done,nbt={Item:{id:"minecraft:diamond_shovel"}}] run data modify entity @s Item.tag.Enchantments set value [{id:"minecraft:efficiency",lvl:10s}]
execute as @e[type=item,tag=!switch.done] run data modify entity @s Owner set from entity @p[tag=switch.temp] UUID
execute as @e[type=item,tag=!switch.done] run data modify entity @s PickupDelay set value 0s
execute as @e[type=item,tag=!switch.done] run tag @s add switch.done

tag @s remove switch.temp

