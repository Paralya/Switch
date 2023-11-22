
loot spawn ~ ~ ~ loot simplenergy:i/simplunium_shovel
item replace entity @s hotbar.1 with ender_pearl
item replace entity @s hotbar.8 with snow_block 8
item replace entity @s hotbar.7 with powder_snow_bucket
item replace entity @s hotbar.6 with powder_snow_bucket
item replace entity @s hotbar.5 with powder_snow_bucket
item replace entity @s hotbar.4 with powder_snow_bucket
item replace entity @s hotbar.3 with powder_snow_bucket
item replace entity @s hotbar.2 with powder_snow_bucket

execute as @e[type=item,tag=!switch.done,nbt={Item:{id:"minecraft:diamond_shovel"}}] run data modify entity @s Item.tag.Enchantments set value [{id:"minecraft:efficiency",lvl:10s}]
data modify storage switch:main UUID set from entity @s UUID
execute as @e[type=item,tag=!switch.done] run data modify entity @s Owner set from storage switch:main UUID
execute as @e[type=item,tag=!switch.done] run data modify entity @s PickupDelay set value 0s
execute as @e[type=item,tag=!switch.done] run tag @s add switch.done

