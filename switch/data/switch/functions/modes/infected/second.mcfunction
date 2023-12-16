
scoreboard players add #infected_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1
execute if score #infected_seconds switch.data matches 0.. run function switch:modes/infected/xp_bar

# Countdown for starting the game
execute if score #infected_seconds switch.data matches -10..-2 run scoreboard players operation #temp switch.data = #infected_seconds switch.data
execute if score #infected_seconds switch.data matches -10..-2 run scoreboard players operation #temp switch.data *= #-1 switch.data
execute if score #infected_seconds switch.data matches -10..-2 run title @a[tag=!detached] actionbar [{"text":"Début de la partie dans ","color":"dark_purple"},{"score":{"name":"#temp","objective":"switch.data"},"color":"light_purple"},{"text":" secondes","color":"dark_purple"}]
execute if score #infected_seconds switch.data matches -1 run title @a[tag=!detached] actionbar [{"text":"Début de la partie dans ","color":"dark_purple"},{"text":"1","color":"light_purple"},{"text":" seconde","color":"dark_purple"}]
execute if score #infected_seconds switch.data matches -3..-1 as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s
execute if score #infected_seconds switch.data matches 0 as @a[tag=!detached] at @s run function switch:modes/infected/death/human_spawn
execute if score #infected_seconds switch.data matches 0 run tellraw @a[tag=!detached] [{"text":"La partie commence !","color":"yellow"}]

# Title action bar
execute store result score #nb_humans switch.data if entity @a[team=switch.temp.human]
execute store result score #nb_zombies switch.data if entity @a[team=switch.temp.zombie]
execute if score #infected_seconds switch.data matches 0.. run title @a[tag=!detached] actionbar [{"text":"Humains : ","color":"light_purple"},{"score":{"name":"#nb_humans","objective":"switch.data"},"color":"dark_purple"},{"text":", "},{"text":"Zombies : ","color":"dark_green"},{"score":{"name":"#nb_zombies","objective":"switch.data"},"color":"green"}]

# Player infection
execute as @a[scores={switch.temp.infection=1..}] at @s run function switch:modes/infected/death/infection_second

# If there are no zombies left, infect a random human
execute if score #infected_seconds switch.data matches 7..9 as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s
execute if score #infected_seconds switch.data matches 7 run tellraw @a[tag=!detached] [{"text":"Choix de l'infecté dans 3 secondes","color":"dark_purple"}]
execute if score #infected_seconds switch.data matches 8 run tellraw @a[tag=!detached] [{"text":"Choix de l'infecté dans 2 secondes","color":"dark_purple"}]
execute if score #infected_seconds switch.data matches 9 run tellraw @a[tag=!detached] [{"text":"Choix de l'infecté dans 1 seconde","color":"dark_purple"}]
execute if score #infected_seconds switch.data matches 10 as @r[team=switch.temp.human] run function switch:modes/infected/death/launch_infection
execute if score #infected_seconds switch.data matches 10 run tellraw @a[tag=!detached] [{"selector":"@p[scores={switch.temp.infection=1}]","color":"green"},{"text":" a été choisi comme premier infecté !","color":"dark_purple"},{"text":"\n"},{"text":"Humains, les renforts arrivent dans moins de 10 minutes !","color":"light_purple"}]
execute if score #infected_seconds switch.data matches 10 run scoreboard players set @p[scores={switch.temp.infection=1}] switch.temp.original_zombie 1
execute if score #infected_seconds switch.data matches 25.. unless entity @a[team=switch.temp.zombie] unless entity @a[team=switch.temp.human,scores={switch.temp.infection=1..}] run tag @r[team=switch.temp.human] add switch.to_infect
execute if score #infected_seconds switch.data matches 25.. as @p[tag=switch.to_infect] run function switch:modes/infected/death/launch_infection
execute if score #infected_seconds switch.data matches 25.. as @p[tag=switch.to_infect] run tellraw @a[tag=!detached] [{"selector":"@p[tag=switch.to_infect]","color":"green"},{"text":" a été choisi comme nouvel infecté car il n'y a plus de zombies !"}]
execute if score #infected_seconds switch.data matches 10 run scoreboard players set @p[tag=switch.to_infect] switch.temp.original_zombie 1
execute if score #infected_seconds switch.data matches 25.. run tag @a[tag=switch.to_infect] remove switch.to_infect

# Regen & Arrow give
scoreboard players operation #temp switch.data = #infected_seconds switch.data
scoreboard players operation #temp switch.data %= #20 switch.data
execute if score #infected_seconds switch.data matches 60.. if score #temp switch.data matches 0 run effect give @a[team=switch.temp.human] regeneration 1 2 true
execute if score #infected_seconds switch.data matches 60.. if score #temp switch.data matches 10 run effect give @a[team=switch.temp.human] regeneration 1 2 true
execute if score #infected_seconds switch.data matches 60.. if score #temp switch.data matches 0 run effect give @a[team=switch.temp.zombie] regeneration 1 4 true
execute if score #infected_seconds switch.data matches 60.. if score #temp switch.data matches 10 run effect give @a[team=switch.temp.zombie] regeneration 1 4 true
execute if score #infected_seconds switch.data matches 60 run give @a[team=switch.temp.human] bow{Unbreakable:1b}
execute if score #infected_seconds switch.data matches 60.. if score #temp switch.data matches 0 run give @a[team=switch.temp.human] arrow 1

# Advancements
execute as @a[team=switch.temp.human] if score @s switch.temp.kills matches 5.. run advancement grant @s only switch:visible/16
execute as @a[team=switch.temp.zombie] if score @s switch.temp.kills matches 4.. run advancement grant @s only switch:visible/17

# Detect end of the game
execute if score #infected_seconds switch.data matches 0.. if score #remaining_time switch.data matches 0.. run function switch:modes/infected/detect_end

