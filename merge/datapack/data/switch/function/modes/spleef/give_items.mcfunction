
setblock 0 10 0 air
setblock 0 10 0 yellow_shulker_box
loot insert 0 10 0 loot switch:i/ruby_shovel
data modify block 0 10 0 Items[0].components."minecraft:enchantments" set value {"levels":{"minecraft:efficiency":10}}
data modify block 0 10 0 Items append value {id:"white_shulker_box",count:1,Slot:1b,components:{"minecraft:item_name":{"text":"Powder Snow","color":"white","italic":false},"minecraft:item_model":"minecraft:powder_snow_bucket"}}
execute if score @s switch.spleef.powder_snow matches 0 run data modify block 0 10 0 Items[1].count set value 4
execute if score @s switch.spleef.powder_snow matches 1 run data modify block 0 10 0 Items[1].count set value 5
execute if score @s switch.spleef.powder_snow matches 2 run data modify block 0 10 0 Items[1].count set value 6
execute if score @s switch.spleef.powder_snow matches 3 run data modify block 0 10 0 Items[1].count set value 7
execute if score @s switch.spleef.powder_snow matches 4.. run data modify block 0 10 0 Items[1].count set value 8

item replace entity @s hotbar.0 from block 0 10 0 container.0
item replace entity @s hotbar.1 with ender_pearl
execute if score @s switch.spleef.snow_block matches 0 run item replace entity @s hotbar.8 with snow_block 4
execute if score @s switch.spleef.snow_block matches 1 run item replace entity @s hotbar.8 with snow_block 5
execute if score @s switch.spleef.snow_block matches 2 run item replace entity @s hotbar.8 with snow_block 6
execute if score @s switch.spleef.snow_block matches 3 run item replace entity @s hotbar.8 with snow_block 7
execute if score @s switch.spleef.snow_block matches 4 run item replace entity @s hotbar.8 with snow_block 8
execute if score @s switch.spleef.snow_block matches 5 run item replace entity @s hotbar.8 with snow_block 9
execute if score @s switch.spleef.snow_block matches 6.. run item replace entity @s hotbar.8 with snow_block 10
item replace entity @s hotbar.7 from block 0 10 0 container.1

setblock 0 10 0 air

