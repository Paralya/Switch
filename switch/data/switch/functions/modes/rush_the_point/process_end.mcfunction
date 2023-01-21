
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 as @a[sort=random] run function switch:modes/rush_the_point/death/player
execute if score #process_end switch.data matches 1 if score #red_points switch.data > #blue_points switch.data run tellraw @a ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu avec une victoire de l'équipe rouge : "},{"selector":"@a[team=switch.rush_the_point.red,sort=random]"}]
execute if score #process_end switch.data matches 1 if score #red_points switch.data = #blue_points switch.data run tellraw @a ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu sur une égalité mdr !"}]
execute if score #process_end switch.data matches 1 if score #red_points switch.data < #blue_points switch.data run tellraw @a ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu avec une victoire de l'équipe bleue : "},{"selector":"@a[team=switch.rush_the_point.blue,sort=random]"}]
execute if score #process_end switch.data matches 1 if score #red_points switch.data > #blue_points switch.data as @a[team=switch.rush_the_point.red] at @s run function switch:engine/add_money
execute if score #process_end switch.data matches 1 if score #red_points switch.data < #blue_points switch.data as @a[team=switch.rush_the_point.blue] at @s run function switch:engine/add_money
execute if score #process_end switch.data matches 1 as @a at @s run playsound item.totem.use ambient @s
execute if score #process_end switch.data matches 1 run tag @a remove switch.to_tp

#Obligatoire
execute if score #process_end switch.data matches 100 run function switch:engine/restart

