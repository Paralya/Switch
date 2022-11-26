
tag @s add switch.temp

scoreboard players set #modulo_rand switch.data 4
function switch:math/get_random/
execute if score #random switch.data matches 0 run loot spawn ~ ~ ~ loot stardust:i/original_stardust_sword
execute if score #random switch.data matches 1 run loot spawn ~ ~ ~ loot stardust:i/legendarium_sword
execute if score #random switch.data matches 2 run loot spawn ~ ~ ~ loot stardust:i/solarium_sword
execute if score #random switch.data matches 3 run loot spawn ~ ~ ~ loot stardust:i/darkium_sword

scoreboard players set #modulo_rand switch.data 3
function switch:math/get_random/
execute if score #random switch.data matches 0 run loot spawn ~ ~ ~ loot stardust:i/stardust_bow
execute if score #random switch.data matches 1 run loot spawn ~ ~ ~ loot stardust:i/awakened_stardust_bow
execute if score #random switch.data matches 2 run loot spawn ~ ~ ~ loot stardust:i/ultimate_bow
item replace entity @s hotbar.2 with arrow 64

attribute @s generic.attack_speed base set 1024
xp set @s 0 levels
xp set @s 0 points

execute as @e[type=item,tag=!switch.done,distance=..1,nbt=!{Item:{id:"minecraft:bow"}}] run data remove entity @s Item.tag.stardust
execute as @e[type=item,tag=!switch.done,distance=..1,nbt=!{Item:{id:"minecraft:bow"}}] run data modify entity @s Item.tag.Enchantments append value {id:"minecraft:knockback",lvl:3}
execute as @e[type=item,tag=!switch.done,distance=..1,nbt={Item:{id:"minecraft:bow"}}] run data modify entity @s Item.tag.Enchantments append value {id:"minecraft:punch",lvl:3}
execute as @e[type=item,tag=!switch.done,distance=..1] run data modify entity @s Owner set from entity @p[tag=switch.temp] UUID
execute as @e[type=item,tag=!switch.done,distance=..1] run data modify entity @s PickupDelay set value 0s
execute as @e[type=item,tag=!switch.done,distance=..1] run tag @s add switch.done

tag @s remove switch.temp

