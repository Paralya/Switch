
##Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #rush_the_point_ticks switch.data 1

execute as @e[type=item,tag=!switch.checked] run function switch:modes/rush_the_point/items_check

#Class System
execute as @a[scores={switch.temp.choosen_class=0}] run function switch:modes/rush_the_point/classes/

#Death System
execute as @e[type=player,tag=switch.to_tp] run function switch:modes/rush_the_point/teleport_to_death
execute as @a[scores={switch.temp.deathCount=1..},x=0,y=69,z=0,distance=..5] run function switch:modes/rush_the_point/death/player
execute if score #remaining_time switch.data matches 1.. as @e[type=marker,tag=switch.temp.player,tag=!switch.player_dead] run function switch:modes/rush_the_point/death/detect
execute if score #remaining_time switch.data matches 1.. as @e[type=marker,tag=switch.player_dead,tag=!switch.processed] run function switch:modes/rush_the_point/death/for_global

#Maps
execute if data storage switch:main {map:"rush_the_point_1"} run place template switch:rush_the_point/center_anti_place 13989 98 13989
execute if data storage switch:main {map:"rush_the_point_1"} run place template switch:rush_the_point/blue_1 14060 98 13983
execute if data storage switch:main {map:"rush_the_point_1"} run place template switch:rush_the_point/red_1 13920 98 13983

#Détection de fin de partie
execute if score #remaining_time switch.data matches 1.. run function switch:modes/rush_the_point/detect_end
execute if score #remaining_time switch.data matches 0 run function switch:modes/rush_the_point/process_end

