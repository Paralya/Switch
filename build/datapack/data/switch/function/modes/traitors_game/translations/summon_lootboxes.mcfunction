
#> switch:modes/traitors_game/translations/summon_lootboxes
#
# @within	switch:modes/traitors_game/summon_lootboxes
#

# French
execute unless score #count switch.data matches 6.. run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"Une lootbox est apparue !","color":"#2EFF8B"}]
execute if score #count switch.data matches 6.. run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"Plusieurs lootboxes sont apparues !","color":"#2EFF8B"}]

# English
execute unless score #count switch.data matches 6.. run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"A lootbox has appeared!","color":"#2EFF8B"}]
execute if score #count switch.data matches 6.. run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"Several lootboxes have appeared!","color":"#2EFF8B"}]

