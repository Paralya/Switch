
##Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #rush_the_point_ticks switch.data 1

execute as @e[type=!marker] at @s run kill @s[y=0,dy=20]
execute as @e[type=item,tag=!switch.checked] run function switch:modes/rush_the_point/items_check
execute as @e[type=tnt,nbt={Fuse:1s}] at @s run function switch:modes/rush_the_point/explode_tnt
execute as @a[scores={switch.right_click=1..},nbt={SelectedItem:{tag:{switch:{fireball_stick:1b}}}}] if score @s crazy_adventure.cooldown matches 1.. at @s run function switch:modes/rush_the_point/fireball/no_cooldown
execute as @a[scores={switch.right_click=1..},nbt={SelectedItem:{tag:{switch:{fireball_stick:1b}}}}] if score @s crazy_adventure.cooldown matches 0 at @s run function switch:modes/rush_the_point/fireball/right_click
execute as @e[type=armor_stand,tag=switch.fireball,predicate=!shopping_kart:has_vehicle] at @s positioned ~ ~-1 ~ run function switch:modes/rush_the_point/explode_tnt
kill @e[type=arrow,nbt={inGround:1b}]

# Class System
execute as @a[scores={switch.temp.choosen_class=0}] run function switch:modes/rush_the_point/classes/

# Death System
execute as @e[type=player,tag=switch.to_tp] run function switch:modes/rush_the_point/teleport_to_death
execute as @a[scores={switch.temp.deathCount=1..},x=0,y=69,z=0,distance=..10] run function switch:modes/rush_the_point/death/player
execute if score #remaining_time switch.data matches 1.. as @e[type=marker,tag=switch.temp.player,tag=!switch.player_dead] run function switch:modes/rush_the_point/death/detect
execute if score #remaining_time switch.data matches 1.. as @e[type=marker,tag=switch.player_dead,tag=!switch.processed] run function switch:modes/rush_the_point/death/for_global

# Maps colors capture
scoreboard players set #color switch.data 0
execute if score #remaining_time switch.data matches 1.. if data storage switch:main {map:"rush_the_point_1"} run function switch:modes/rush_the_point/maps/rush_the_point_1

# Détection de fin de partie
execute if score #remaining_time switch.data matches 1.. if score #red_points switch.data matches 2000.. run scoreboard players set #remaining_time switch.data 0
execute if score #remaining_time switch.data matches 1.. if score #blue_points switch.data matches 2000.. run scoreboard players set #remaining_time switch.data 0
execute if score #remaining_time switch.data matches 0 run function switch:modes/rush_the_point/process_end

