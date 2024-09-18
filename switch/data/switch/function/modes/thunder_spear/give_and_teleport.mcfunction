
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
loot replace entity @s weapon.offhand loot grappling_hook:v1.1.1/items/advanced_grappling_hook
give @s crossbow[charged_projectiles=[{id:"arrow"}]]

# Teleport player
function switch:maps/spread_one_player

