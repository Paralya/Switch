
# French
execute if score #infected_seconds switch.data matches -10..-2 run title @a[scores={switch.lang=0},tag=!detached] actionbar [{"text":"Début de la partie dans ","color":"dark_purple"},{"score":{"name":"#temp","objective":"switch.data"},"color":"light_purple"},{"text":" secondes","color":"dark_purple"}]
execute if score #infected_seconds switch.data matches -1 run title @a[scores={switch.lang=0},tag=!detached] actionbar [{"text":"Début de la partie dans ","color":"dark_purple"},{"text":"1","color":"light_purple"},{"text":" seconde","color":"dark_purple"}]
execute if score #infected_seconds switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"La partie commence !","color":"yellow"}]
execute if score #infected_seconds switch.data matches 0.. run title @a[scores={switch.lang=0},tag=!detached] actionbar [{"text":"Humains : ","color":"light_purple"},{"score":{"name":"#nb_humans","objective":"switch.data"},"color":"dark_purple"},{"text":", "},{"text":"Zombies : ","color":"dark_green"},{"score":{"name":"#nb_zombies","objective":"switch.data"},"color":"green"}]
execute if score #infected_seconds switch.data matches 7 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"Choix de l'infecté dans 3 secondes","color":"dark_purple"}]
execute if score #infected_seconds switch.data matches 8 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"Choix de l'infecté dans 2 secondes","color":"dark_purple"}]
execute if score #infected_seconds switch.data matches 9 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"Choix de l'infecté dans 1 seconde","color":"dark_purple"}]
execute if score #infected_seconds switch.data matches 10 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@p[scores={switch.temp.infection=1}]","color":"green"},{"text":" a été choisi comme premier infecté !","color":"dark_purple"},{"text":"\n"},{"text":"Humains, les renforts arrivent dans moins de 10 minutes !","color":"light_purple"}]
execute if score #infected_seconds switch.data matches 25.. as @p[tag=switch.to_infect] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@p[tag=switch.to_infect]","color":"green"},{"text":" a été choisi comme nouvel infecté car il n'y a plus de zombies !"}]

