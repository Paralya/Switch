
scoreboard players set #count switch.data 0
execute store result score #count switch.data run clear @s gold_ingot 0

# If count >= 10, give bow and arrow
execute if score #count switch.data matches 10.. run clear @s gold_ingot 10
execute if score #count switch.data matches 10.. unless data entity @s Inventory[{id:"minecraft:bow"}] run give @s bow[unbreakable={}]
execute if score #count switch.data matches 10.. run give @s arrow
execute if score #count switch.data matches 10.. run scoreboard players add @s switch.temp.nb_arrows_get 1
execute unless score #test_mode switch.data matches 1 if score #count switch.data matches 10.. if score @s switch.temp.nb_arrows_get matches 2.. run advancement grant @s only switch:visible/34
