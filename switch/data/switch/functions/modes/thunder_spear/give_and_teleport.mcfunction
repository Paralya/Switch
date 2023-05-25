
## Starter kit
# Effects
clear @s
effect clear @s
effect give @s speed infinite 1 true
effect give @s jump_boost infinite 4 true
effect give @s resistance 5 255 true

# Give items
setblock 0 0 0 yellow_shulker_box
loot insert 0 0 0 loot e.anchor:item/monemtum_hookshot
item replace entity @s weapon.offhand from block 0 0 0 container.0
setblock 0 0 0 air
give @s crossbow{Enchantments:[{id:"minecraft:quick_charge",lvl:5s}]}

# Teleport player
function switch:maps/spread_one_player

# Clear scoreboard & xp
scoreboard players reset @s switch.temp.deathCount
xp set @s 0 levels
xp set @s 0 points

