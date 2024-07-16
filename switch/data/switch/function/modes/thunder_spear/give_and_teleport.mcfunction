
## Starter kit
# Effects
clear @s
effect clear @s
effect give @s speed infinite 1 true
effect give @s jump_boost infinite 4 true
effect give @s resistance 5 255 true
gamemode survival @s
scoreboard players add @s switch.temp.kills 0

# Give items
setblock 0 0 0 yellow_shulker_box
loot insert 0 0 0 loot e.anchor:item/monemtum_hookshot
item replace entity @s weapon.offhand from block 0 0 0 container.0
setblock 0 0 0 air
give @s crossbow[charged_projectiles=[{id:"arrow"}]]

# Teleport player
function switch:maps/spread_one_player

