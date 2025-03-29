
#> switch:translations/modes_infected_second_start
#
# @within	switch:modes/infected/second_start
#

# French
execute if score #infected_seconds switch.data matches -10..-2 run title @a[scores={switch.lang=0},tag=!detached] actionbar [{"text":"Début de la partie dans ","color":"dark_purple"},{"score":{"name":"#temp","objective":"switch.data"},"color":"light_purple"},{"text":" secondes","color":"dark_purple"}]
execute if score #infected_seconds switch.data matches -1 run title @a[scores={switch.lang=0},tag=!detached] actionbar [{"text":"Début de la partie dans ","color":"dark_purple"},{"text":"1","color":"light_purple"},{"text":" seconde","color":"dark_purple"}]
execute if score #infected_seconds switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"La partie commence ! Cliquez [ici] si vous ne souhaitez pas être le premier infecté !","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.temp.dont_want_to_be_infected set 1"},"hover_event":{"action":"show_text","value":{"text":"Vous ne serez pas pris au hasard de la première infection !","color":"gray"}}}]
execute if score #infected_seconds switch.data matches 0.. run title @a[scores={switch.lang=0},tag=!detached] actionbar [{"text":"Humains : ","color":"light_purple"},{"score":{"name":"#nb_humans","objective":"switch.data"},"color":"dark_purple"},{"text":", "},{"text":"Zombies : ","color":"dark_green"},{"score":{"name":"#nb_zombies","objective":"switch.data"},"color":"green"}]
execute if score #infected_seconds switch.data matches 7 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"Choix de l'infecté dans 3 secondes","color":"dark_purple"}]
execute if score #infected_seconds switch.data matches 8 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"Choix de l'infecté dans 2 secondes","color":"dark_purple"}]
execute if score #infected_seconds switch.data matches 9 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"Choix de l'infecté dans 1 seconde","color":"dark_purple"}]

# English
execute if score #infected_seconds switch.data matches -10..-2 run title @a[scores={switch.lang=1},tag=!detached] actionbar [{"text":"Start of game in ","color":"dark_purple"},{"score":{"name":"#temp","objective":"switch.data"},"color":"light_purple"},{"text":" seconds","color":"dark_purple"}]
execute if score #infected_seconds switch.data matches -1 run title @a[scores={switch.lang=1},tag=!detached] actionbar [{"text":"Start of game in ","color":"dark_purple"},{"text":"1","color":"light_purple"},{"text":" second","color":"dark_purple"}]
execute if score #infected_seconds switch.data matches 0 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"The game is starting! Click [here] if you don't want to be the first to be infected!","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.temp.dont_want_to_be_infected set 1"},"hover_event":{"action":"show_text","value":{"text":"You won't be caught in the randomness of the first infected!","color":"gray"}}}]
execute if score #infected_seconds switch.data matches 0.. run title @a[scores={switch.lang=1},tag=!detached] actionbar [{"text":"Humans: ","color":"light_purple"},{"score":{"name":"#nb_humans","objective":"switch.data"},"color":"dark_purple"},{"text":", "},{"text":"Zombies: ","color":"dark_green"},{"score":{"name":"#nb_zombies","objective":"switch.data"},"color":"green"}]
execute if score #infected_seconds switch.data matches 7 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"Choosing the infected in 3 seconds","color":"dark_purple"}]
execute if score #infected_seconds switch.data matches 8 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"Choosing the infected in 2 seconds","color":"dark_purple"}]
execute if score #infected_seconds switch.data matches 9 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"Choosing the infected in 1 second","color":"dark_purple"}]

