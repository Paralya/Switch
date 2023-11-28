
setblock 0 0 0 air
setblock 0 0 0 yellow_shulker_box
loot insert 0 0 0 loot simplenergy:i/simplunium_shovel
data modify block 0 0 0 Items[0].tag.Enchantments set value [{id:"minecraft:efficiency",lvl:10s}]
data modify block 0 0 0 Items append value {id:"minecraft:white_shulker_box",Count:4b,Slot:1b,tag:{display:{Name:'{"text":"Powder Snow","color":"white","italic":false}'}}}

item replace entity @s hotbar.0 from block 0 0 0 container.0
item replace entity @s hotbar.1 with ender_pearl
item replace entity @s hotbar.8 with snow_block 8
item replace entity @s hotbar.7 from block 0 0 0 container.1

setblock 0 0 0 air

