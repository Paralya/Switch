
setblock 0 0 0 air
setblock 0 0 0 yellow_shulker_box
loot insert 0 0 0 loot stardust:i/reinforced_stardust_sword
loot insert 0 0 0 loot stardust:i/reinforced_stardust_pickaxe
loot insert 0 0 0 loot stardust:i/reinforced_stardust_helmet
loot insert 0 0 0 loot stardust:i/reinforced_stardust_chestplate
loot insert 0 0 0 loot stardust:i/reinforced_stardust_leggings
loot insert 0 0 0 loot stardust:i/reinforced_stardust_boots
loot insert 0 0 0 loot stardust:i/stardust_bow
loot insert 0 0 0 loot crazy_adventure:i/banana
data modify block 0 0 0 Items[0].tag.CanDestroy set value ["minecraft:cut_sandstone","minecraft:fire","minecraft:tnt"]
data remove block 0 0 0 Items[1].tag.Enchantments
data modify block 0 0 0 Items[1].tag.CanDestroy set value ["minecraft:cut_sandstone","minecraft:fire","minecraft:tnt"]
data remove block 0 0 0 Items[2].tag.AttributeModifiers[{AttributeName:"generic.max_health"}]
data remove block 0 0 0 Items[3].tag.AttributeModifiers[{AttributeName:"generic.knockback_resistance"}]
data remove block 0 0 0 Items[4].tag.AttributeModifiers[{AttributeName:"generic.movement_speed"}]
data modify block 0 0 0 Items[6].tag.Enchantments append value {id:"minecraft:infinity",lvl:1s}
data modify block 0 0 0 Items[7].Count set value 42b
execute if entity @s[team=switch.rush_the_point.red] run data modify block 0 0 0 Items[2].tag.display.color set value 16731469
execute if entity @s[team=switch.rush_the_point.red] run data modify block 0 0 0 Items[3].tag.display.color set value 16731469
execute if entity @s[team=switch.rush_the_point.red] run data modify block 0 0 0 Items[4].tag.display.color set value 16731469
execute if entity @s[team=switch.rush_the_point.red] run data modify block 0 0 0 Items[5].tag.display.color set value 16731469

clear @s
item replace entity @s armor.head from block 0 0 0 container.2 switch:enchant_protection_2
item replace entity @s armor.chest from block 0 0 0 container.3 switch:enchant_protection_2
item replace entity @s armor.legs from block 0 0 0 container.4 switch:enchant_protection_2
item replace entity @s armor.feet from block 0 0 0 container.5 switch:enchant_protection_2
item replace entity @s hotbar.0 from block 0 0 0 container.0
item replace entity @s hotbar.1 from block 0 0 0 container.6
item replace entity @s hotbar.2 from block 0 0 0 container.1
item replace entity @s hotbar.3 with cut_sandstone{CanPlaceOn:["#switch:rush_the_point"]} 64
item replace entity @s hotbar.4 with cut_sandstone{CanPlaceOn:["#switch:rush_the_point"]} 64
item replace entity @s hotbar.5 with potion{Potion:"minecraft:strong_healing"}
item replace entity @s hotbar.6 with potion{Potion:"minecraft:strong_healing"}
item replace entity @s hotbar.8 from block 0 0 0 container.7
item replace entity @s inventory.0 with arrow

attribute @s generic.attack_speed base set 1024
setblock 0 0 0 air

