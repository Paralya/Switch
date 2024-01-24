
scoreboard players add @s switch.glassrunner.turtle_helmet 50

execute unless data entity @s Inventory[{tag:{ctc:{id:"glassrunner:bow"}}}] run loot give @s loot switch:glassrunner/bow
execute unless data entity @s Inventory[{tag:{ctc:{id:"glassrunner:fireball_wand"}}}] run loot give @s loot switch:glassrunner/fireball_wand
give @s arrow 4

function switch:modes/glassrunner/shop/reset_item


