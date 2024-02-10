
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 as @a[tag=!detached,sort=random] run function switch:modes/rush_the_point/death/player
execute if score #process_end switch.data matches 1 if score #red_points switch.data > #blue_points switch.data run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu avec une victoire de l'équipe rouge : "},{"selector":"@a[tag=!detached,team=switch.rush_the_point.red,sort=random]"}]
execute if score #process_end switch.data matches 1 if score #red_points switch.data = #blue_points switch.data run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu sur une égalité mdr !"}]
execute if score #process_end switch.data matches 1 if score #red_points switch.data < #blue_points switch.data run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu avec une victoire de l'équipe bleue : "},{"selector":"@a[tag=!detached,team=switch.rush_the_point.blue,sort=random]"}]
execute if score #process_end switch.data matches 1 if score #red_points switch.data > #blue_points switch.data as @a[tag=!detached,team=switch.rush_the_point.red] at @s run function switch:engine/add_win
execute if score #process_end switch.data matches 1 if score #red_points switch.data < #blue_points switch.data as @a[tag=!detached,team=switch.rush_the_point.blue] at @s run function switch:engine/add_win
execute if score #process_end switch.data matches 1 unless score #test_mode switch.data matches 1 if score #red_points switch.data matches 5000.. run advancement grant @a[tag=!detached,team=switch.rush_the_point.red] only switch:visible/55
execute if score #process_end switch.data matches 1 unless score #test_mode switch.data matches 1 if score #blue_points switch.data matches 5000.. run advancement grant @a[tag=!detached,team=switch.rush_the_point.blue] only switch:visible/55
execute if score #process_end switch.data matches 1 as @a[tag=!detached] at @s run playsound item.totem.use ambient @s
execute if score #process_end switch.data matches 1 run tag @a remove switch.to_tp
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

# Obligatoire
execute if score #process_end switch.data matches 200 run function switch:engine/restart

