
# Get which class got chosen
execute if score @s switch.temp.choosen_class matches 0 unless data entity @s Inventory[{Slot:0b}] run scoreboard players set @s switch.temp.choosen_class 1
execute if score @s switch.temp.choosen_class matches 0 unless data entity @s Inventory[{Slot:2b}] run scoreboard players set @s switch.temp.choosen_class 2
execute if score @s switch.temp.choosen_class matches 0 unless data entity @s Inventory[{Slot:4b}] run scoreboard players set @s switch.temp.choosen_class 3
execute if score @s switch.temp.choosen_class matches 0 unless data entity @s Inventory[{Slot:6b}] run scoreboard players set @s switch.temp.choosen_class 4
execute if score @s switch.temp.choosen_class matches 0 unless data entity @s Inventory[{Slot:8b}] run scoreboard players set @s switch.temp.choosen_class 5
execute if score @s switch.temp.choosen_class matches 0 if score @s switch.right_click matches 1.. if data entity @s SelectedItem.tag.switch.class_item store result score @s switch.temp.choosen_class run data get entity @s SelectedItem.tag.switch.class_item

# Elytra cooldown
scoreboard players add @s switch.temp.elytra_cooldown 0
execute if score @s switch.temp.choosen_class matches 3 unless score @s switch.temp.elytra_cooldown matches 0 run tellraw @s [{"text":"Erreur : Vous devez attendre encore ","color":"red"},{"score":{"name":"@s","objective":"switch.temp.elytra_cooldown"},"color":"dark_red"},{"text":" secondes avant de choisir cette classe","color":"red"}]
execute if score @s switch.temp.choosen_class matches 3 unless score @s switch.temp.elytra_cooldown matches 0 at @s run playsound entity.villager.no ambient @s
execute if score @s switch.temp.choosen_class matches 3 unless score @s switch.temp.elytra_cooldown matches 0 run function switch:modes/rush_the_point/teleport_to_spawn

# Switch case
execute if score @s switch.temp.choosen_class matches 1 run function switch:modes/rush_the_point/classes/guerrier
execute if score @s switch.temp.choosen_class matches 2 run function switch:modes/rush_the_point/classes/archer
execute if score @s switch.temp.choosen_class matches 3 run function switch:modes/rush_the_point/classes/aviateur
execute if score @s switch.temp.choosen_class matches 4 run function switch:modes/rush_the_point/classes/builder
execute if score @s switch.temp.choosen_class matches 5 run function switch:modes/rush_the_point/classes/destroyer

