
#> switch:modes/infected/translations/second_start
#
# @within	switch:modes/infected/second_start
#

# French
execute if score #infected_seconds switch.data matches -10..-2 run title @a[scores={switch.lang=0},tag=!detached] actionbar [{"text":"Début de la partie dans ","color":"#A53DE0"},{"score":{"name":"#temp","objective":"switch.data"},"color":"#FF8FD8"},{"text":" secondes","color":"#A53DE0"}]
execute if score #infected_seconds switch.data matches -1 run title @a[scores={switch.lang=0},tag=!detached] actionbar [{"text":"Début de la partie dans ","color":"#A53DE0"},{"text":"1","color":"#FF8FD8"},{"text":" seconde","color":"#A53DE0"}]
execute if score #infected_seconds switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"La partie commence ! Cliquez [ici] si vous ne souhaitez pas être le premier infecté !","color":"#FFE60A","click_event":{"action":"run_command","command":"/trigger switch.temp.dont_want_to_be_infected set 1"},"hover_event":{"action":"show_text","value":{"text":"Vous ne serez pas pris au hasard de la première infection !","color":"#AEBBD0"}}}]
execute if score #infected_seconds switch.data matches 0.. run title @a[scores={switch.lang=0},tag=!detached] actionbar [{"text":"Humains : ","color":"#FF8FD8"},{"score":{"name":"#nb_humans","objective":"switch.data"},"color":"#A53DE0"},{"text":", "},{"text":"Zombies : ","color":"#1FA83C"},{"score":{"name":"#nb_zombies","objective":"switch.data"},"color":"#2EFF8B"}]
execute if score #infected_seconds switch.data matches 7 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"Choix de l'infecté dans 3 secondes","color":"#A53DE0"}]
execute if score #infected_seconds switch.data matches 8 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"Choix de l'infecté dans 2 secondes","color":"#A53DE0"}]
execute if score #infected_seconds switch.data matches 9 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"Choix de l'infecté dans 1 seconde","color":"#A53DE0"}]

# English
execute if score #infected_seconds switch.data matches -10..-2 run title @a[scores={switch.lang=1},tag=!detached] actionbar [{"text":"Start of game in ","color":"#A53DE0"},{"score":{"name":"#temp","objective":"switch.data"},"color":"#FF8FD8"},{"text":" seconds","color":"#A53DE0"}]
execute if score #infected_seconds switch.data matches -1 run title @a[scores={switch.lang=1},tag=!detached] actionbar [{"text":"Start of game in ","color":"#A53DE0"},{"text":"1","color":"#FF8FD8"},{"text":" second","color":"#A53DE0"}]
execute if score #infected_seconds switch.data matches 0 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"The game is starting! Click [here] if you don't want to be the first to be infected!","color":"#FFE60A","click_event":{"action":"run_command","command":"/trigger switch.temp.dont_want_to_be_infected set 1"},"hover_event":{"action":"show_text","value":{"text":"You won't be caught in the randomness of the first infected!","color":"#AEBBD0"}}}]
execute if score #infected_seconds switch.data matches 0.. run title @a[scores={switch.lang=1},tag=!detached] actionbar [{"text":"Humans: ","color":"#FF8FD8"},{"score":{"name":"#nb_humans","objective":"switch.data"},"color":"#A53DE0"},{"text":", "},{"text":"Zombies: ","color":"#1FA83C"},{"score":{"name":"#nb_zombies","objective":"switch.data"},"color":"#2EFF8B"}]
execute if score #infected_seconds switch.data matches 7 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"Choosing the infected in 3 seconds","color":"#A53DE0"}]
execute if score #infected_seconds switch.data matches 8 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"Choosing the infected in 2 seconds","color":"#A53DE0"}]
execute if score #infected_seconds switch.data matches 9 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"Choosing the infected in 1 second","color":"#A53DE0"}]

