
scoreboard players add #process_end switch.data 1

# Victory
execute if score #process_end switch.data matches 1 if score #game_state switch.data matches 0 run tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Les renforts sont arrivés, victoires des "},{"text":"humains","color":"light_purple"},{"text":" !"}]
execute if score #process_end switch.data matches 1 if score #game_state switch.data matches 1 run tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Tous les humains se sont fait infectés, victoire des "},{"text":"zombies","color":"dark_green"},{"text":" !"}]
execute if score #process_end switch.data matches 1 if score #game_state switch.data matches 2 run tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, aucun des camps n'est sorti vainqueur car il n'y a plus aucun joueur en vie !"}]

# Give money + son de fin
execute if score #process_end switch.data matches 1 if score #game_state switch.data matches 0 as @a[tag=!detached,team=switch.temp.human] at @s run function switch:engine/add_win
execute if score #process_end switch.data matches 1 if score #game_state switch.data matches 1 as @a[tag=!detached,team=switch.temp.zombie,scores={switch.temp.original_zombie=1}] at @s run function switch:engine/add_win
execute if score #process_end switch.data matches 1 as @a[tag=!detached] at @s run playsound item.totem.use ambient @s

# Obligatoire
execute if score #process_end switch.data matches 100 run function switch:engine/restart

