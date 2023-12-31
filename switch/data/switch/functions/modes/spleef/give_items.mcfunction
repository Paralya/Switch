
setblock 0 0 0 air
setblock 0 0 0 yellow_shulker_box
loot insert 0 0 0 loot simplenergy:i/simplunium_shovel
data modify block 0 0 0 Items[0].tag.Enchantments set value [{id:"minecraft:efficiency",lvl:10s}]
data modify block 0 0 0 Items append value {id:"minecraft:white_shulker_box",Count:1b,Slot:1b,tag:{display:{Name:'{"text":"Powder Snow","color":"white","italic":false}'}}}
execute if score @s switch.spleef.powder_snow matches 1 run data modify block 0 0 0 Items[1].Count set value 2b
execute if score @s switch.spleef.powder_snow matches 2 run data modify block 0 0 0 Items[1].Count set value 3b
execute if score @s switch.spleef.powder_snow matches 3 run data modify block 0 0 0 Items[1].Count set value 4b
execute if score @s switch.spleef.powder_snow matches 4 run data modify block 0 0 0 Items[1].Count set value 5b
execute if score @s switch.spleef.powder_snow matches 5 run data modify block 0 0 0 Items[1].Count set value 6b

item replace entity @s hotbar.0 from block 0 0 0 container.0
item replace entity @s hotbar.1 with ender_pearl
item replace entity @s hotbar.8 with snow_block 4
execute if score @s switch.spleef.snow_block matches 1 run item replace entity @s hotbar.8 with snow_block 6
execute if score @s switch.spleef.snow_block matches 2 run item replace entity @s hotbar.8 with snow_block 8
execute if score @s switch.spleef.snow_block matches 3 run item replace entity @s hotbar.8 with snow_block 10
execute if score @s switch.spleef.snow_block matches 4 run item replace entity @s hotbar.8 with snow_block 12
execute if score @s switch.spleef.snow_block matches 5 run item replace entity @s hotbar.8 with snow_block 16
item replace entity @s hotbar.7 from block 0 0 0 container.1

setblock 0 0 0 air

