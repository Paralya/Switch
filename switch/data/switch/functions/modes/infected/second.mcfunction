
scoreboard players add #infected_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1
execute if score #infected_seconds switch.data matches 0.. run function switch:modes/infected/xp_bar

# Countdown for starting the game
execute if score #infected_seconds switch.data matches -3 run title @a[tag=!detached] actionbar [{"text":"Début de la partie dans ","color":"dark_purple"},{"text":"3","color":"light_purple"},{"text":" secondes","color":"dark_purple"}]
execute if score #infected_seconds switch.data matches -2 run title @a[tag=!detached] actionbar [{"text":"Début de la partie dans ","color":"dark_purple"},{"text":"2","color":"light_purple"},{"text":" secondes","color":"dark_purple"}]
execute if score #infected_seconds switch.data matches -1 run title @a[tag=!detached] actionbar [{"text":"Début de la partie dans ","color":"dark_purple"},{"text":"1","color":"light_purple"},{"text":" seconde","color":"dark_purple"}]
execute if score #infected_seconds switch.data matches -3..-1 as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s
execute if score #infected_seconds switch.data matches 0 as @a[tag=!detached] at @s run function switch:modes/infected/death/human_spawn

# Title action bar
execute store result score #nb_humans switch.data if entity @a[team=switch.temp.human]
execute store result score #nb_zombies switch.data if entity @a[team=switch.temp.zombie]
execute if score #infected_seconds switch.data matches 0.. run title @a[tag=!detached] actionbar [{"text":"Humains : ","color":"light_purple"},{"score":{"name":"#nb_humans","objective":"switch.data"},"color":"dark_purple"},{"text":", "},{"text":"Zombies : ","color":"dark_green"},{"score":{"name":"#nb_zombies","objective":"switch.data"},"color":"green"}]

# Player infection
execute as @a[scores={switch.temp.infection=1..}] at @s run function switch:modes/infected/death/infection_second

