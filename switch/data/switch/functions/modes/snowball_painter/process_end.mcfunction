
scoreboard players add #process_end switch.data 1

kill @e[type=marker,tag=switch.marker]
kill @e[type=snowball,tag=switch.marker]
execute if score #process_end switch.data matches 1 run tag @a[tag=!switch.detached] remove switch.winner
execute if score #process_end switch.data matches 1 run scoreboard players set #max switch.data 0
execute if score #process_end switch.data matches 1 run scoreboard players operation #max switch.data > @a[tag=!switch.detached] switch.temp.points
execute if score #process_end switch.data matches 1 as @a[tag=!switch.detached] if score @s switch.temp.points = #max switch.data run tag @s add switch.winner
execute if score #process_end switch.data matches 1 as @a[tag=!switch.detached,tag=switch.winner] at @s run function switch:engine/add_money
execute if score #process_end switch.data matches 1 run tellraw @a[tag=!switch.detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Le vainqueur de la partie est "},{"selector":"@a[tag=!switch.detached,tag=switch.winner]"},{"text":" avec "},{"score":{"name":"#max","objective":"switch.data"},"color":"gold"},{"text":" points !"}]
execute if score #process_end switch.data matches 1 run tag @a[tag=!switch.detached] remove switch.winner
execute if score #process_end switch.data matches 1 run gamemode spectator @a[tag=!switch.detached]
execute if score #process_end switch.data matches 1 as @a[tag=!switch.detached] run function switch:modes/snowball_painter/death

execute if score #process_end switch.data matches 100 run function switch:engine/restart

