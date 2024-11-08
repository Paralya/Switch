
# French
execute if score #infected_seconds switch.data matches 10 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@p[scores={switch.temp.infection=1}]","color":"green"},{"text":" a été choisi comme premier infecté !","color":"dark_purple"},{"text":"\nHumains, les renforts arrivent dans moins de 10 minutes !","color":"light_purple"}]
execute if score #infected_seconds switch.data matches 25.. as @p[tag=switch.to_infect] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@p[tag=switch.to_infect]","color":"green"},{"text":" a été choisi comme nouvel infecté car il n'y a plus de zombies !"}]

# English
execute if score #infected_seconds switch.data matches 10 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@p[scores={switch.temp.infection=1}]","color":"green"},{"text":" has been chosen as the first infected!","color":"dark_purple"},{"text":"\nHumans, the military will be here in less than 10 minutes!","color":"light_purple"}]
execute if score #infected_seconds switch.data matches 25.. as @p[tag=switch.to_infect] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@p[tag=switch.to_infect]","color":"green"},{"text":" has been chosen as the new infected because there are no more zombies!"}]

