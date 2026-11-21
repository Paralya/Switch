
#> switch:modes/infected/translations/second_selector
#
# @within	switch:modes/infected/second_selector
#

# French
execute if score #infected_seconds switch.data matches 10 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@p[scores={switch.temp.infection=1}]","color":"#2EFF8B"},{"text":" a été choisi comme premier infecté !","color":"#A53DE0"},{"text":"\nHumains, les renforts arrivent dans moins de 10 minutes !","color":"#FF8FD8"}]
execute if score #infected_seconds switch.data matches 25.. as @p[tag=switch.to_infect] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@p[tag=switch.to_infect]","color":"#2EFF8B"},{"text":" a été choisi comme nouvel infecté car il n'y a plus de zombies !"}]

# English
execute if score #infected_seconds switch.data matches 10 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@p[scores={switch.temp.infection=1}]","color":"#2EFF8B"},{"text":" has been chosen as the first infected!","color":"#A53DE0"},{"text":"\nHumans, the military will be here in less than 10 minutes!","color":"#FF8FD8"}]
execute if score #infected_seconds switch.data matches 25.. as @p[tag=switch.to_infect] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@p[tag=switch.to_infect]","color":"#2EFF8B"},{"text":" has been chosen as the new infected because there are no more zombies!"}]

