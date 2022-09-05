
tag @s add switch.temp

loot spawn ~ ~ ~ loot stardust:i/original_stardust_sword
loot spawn ~ ~ ~ loot stardust:i/stardust_bow
summon item ~ ~ ~ {Item:{id:"minecraft:arrow",Count:1b}}

attribute @s generic.attack_speed base set 1024
xp set @s 100 levels
xp set @s 0 points

execute as @e[type=item,tag=!switch.done,nbt={Item:{id:"minecraft:diamond_sword"}}] run data modify entity @s Item.tag.Enchantments append value {id:"minecraft:knockback",lvl:3}
execute as @e[type=item,tag=!switch.done,nbt={Item:{id:"minecraft:bow"}}] run data modify entity @s Item.tag.Enchantments set value [{id:"minecraft:infinity",lvl:1},{id:"minecraft:punch",lvl:2}]
execute as @e[type=item,tag=!switch.done] run data modify entity @s Item.tag.Unbreakable set value 1b
execute as @e[type=item,tag=!switch.done] run data modify entity @s Owner set from entity @p[tag=switch.temp]
execute as @e[type=item,tag=!switch.done] run data modify entity @s PickupDelay set value 0s
execute as @e[type=item,tag=!switch.done] run tag @s add switch.done

tag @s remove switch.temp
