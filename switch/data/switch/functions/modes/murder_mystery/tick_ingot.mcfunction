
scoreboard players set #count switch.data 0
execute store result score #count switch.data run clear @s gold_ingot 0

# If count >= 10, give bow and arrow
execute if score #count switch.data matches 10.. run clear @s gold_ingot 10
execute if score #count switch.data matches 10.. unless data entity @s Inventory[{id:"minecraft:bow"}] run give @s bow{Unbreakable:1}
execute if score #count switch.data matches 10.. run give @s arrow


