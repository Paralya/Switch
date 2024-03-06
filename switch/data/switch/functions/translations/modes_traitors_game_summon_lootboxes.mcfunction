
# French
execute unless score #count switch.data matches 6.. run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"Une lootbox est apparue !","color":"green"}]
execute if score #count switch.data matches 6.. run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"Plusieurs lootboxes sont apparues !","color":"green"}]

# English
execute unless score #count switch.data matches 6.. run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"A lootbox has appeared!","color":"green"}]
execute if score #count switch.data matches 6.. run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"Several lootboxes have appeared!","color":"green"}]

