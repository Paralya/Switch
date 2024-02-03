
scoreboard players add #fish_fight_seconds switch.data 1


execute if score #fish_fight_seconds switch.data matches 3 as @a[tag=!detached] at @s run function switch:modes/fish_fight/give_items
execute if score #fish_fight_seconds switch.data matches 3 if score #TEAM_FISH switch.data matches 1 run tellraw @a[tag=!detached] ["",{"text":"Fish Fight","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"(1 partie sur 3)","italic":true,"color":"gray"},{"text":" Le jeu se déroulera en ","color":"white"},{"text":"équipes","underlined":true,"color":"white"},{"text":" !","color":"white"},{"text":"\n "}]


# spawn axolot
scoreboard players operation #temp switch.data = #fish_fight_seconds switch.data
scoreboard players operation #temp switch.data %= #32 switch.data
execute if score #temp switch.data matches 0 run summon axolotl 151026 134 151026 {Glowing:1b,CustomNameVisible:1b,Health:8f,CustomName:'{"text":"Axobonus","color":"light_purple","bold":true}',active_effects:[{id:"minecraft:slow_falling",amplifier:10b,duration:2000,show_particles:0b}]}
execute if score #temp switch.data matches 0 run effect give @a[tag=!detached] minecraft:glowing 4 2 true
execute if score #temp switch.data matches 0 run tellraw @a[tag=!detached] ["",{"text":"Fish Fight","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"Un Axolotl Bonus est apparu ! Tuez le pour obtenir un bonus !"},{"text":"\n "}]
execute if score #temp switch.data matches 0 as @a[tag=!detached] at @s run playsound entity.arrow.hit_player ambient @s

scoreboard players operation #temp switch.data = #fish_fight_seconds switch.data
scoreboard players operation #temp switch.data %= #6 switch.data
execute if score #temp switch.data matches 0 if score #TEAM_FISH switch.data matches 0 run give @a[tag=!detached] white_wool 1
execute if score #temp switch.data matches 0 if score #TEAM_FISH switch.data matches 1 run give @a[team=switch.temp.blue] blue_wool 1 
execute if score #temp switch.data matches 0 if score #TEAM_FISH switch.data matches 1 run give @a[team=switch.temp.red] red_wool 1

#only one winner en cas d'une team

execute if entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.red] unless entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.blue] run function switch:modes/fish_fight/teams_tp/only_one_winner
execute if entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.blue] unless entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.red] run function switch:modes/fish_fight/teams_tp/only_one_winner


#TNT

execute if score #fish_fight_seconds switch.data matches 60 run give @r[tag=!detached,gamemode=!spectator] tnt 1
execute if score #fish_fight_seconds switch.data matches 60 run give @r[tag=!detached,gamemode=!spectator] oak_pressure_plate 1
execute if score #fish_fight_seconds switch.data matches 60 run give @r[tag=!detached,gamemode=!spectator] tnt 1
execute if score #fish_fight_seconds switch.data matches 60 run give @r[tag=!detached,gamemode=!spectator] oak_pressure_plate 1
execute if score #fish_fight_seconds switch.data matches 60 run give @r[tag=!detached,gamemode=!spectator] tnt 1
execute if score #fish_fight_seconds switch.data matches 60 run give @r[tag=!detached,gamemode=!spectator] oak_pressure_plate 1
# tellraw  pour annoncer qu'une tnt a été donnée à des joueurs aléatoires 
execute if score #fish_fight_seconds switch.data matches 60 run tellraw @a[tag=!detached] ["",{"text":"Fish Event","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"Des TNT ont été donnés à des joueurs aléatoires !","color":"white"},{"text":"\n "}]

execute if score #fish_fight_seconds switch.data matches 120 run give @r[tag=!detached,gamemode=!spectator] tnt 2
execute if score #fish_fight_seconds switch.data matches 120 run give @r[tag=!detached,gamemode=!spectator] oak_pressure_plate 2
execute if score #fish_fight_seconds switch.data matches 120 run give @r[tag=!detached,gamemode=!spectator] tnt 2
execute if score #fish_fight_seconds switch.data matches 120 run give @r[tag=!detached,gamemode=!spectator] oak_pressure_plate 2
execute if score #fish_fight_seconds switch.data matches 120 run give @r[tag=!detached,gamemode=!spectator] tnt 2
execute if score #fish_fight_seconds switch.data matches 120 run give @r[tag=!detached,gamemode=!spectator] oak_pressure_plate 2

# tellraw  pour annoncer qu'une tnt a été donnée à des joueurs aléatoires
execute if score #fish_fight_seconds switch.data matches 120 run tellraw @a[tag=!detached] ["",{"text":"Fish Event","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"Des TNT ont été donnés à des joueurs aléatoires !","color":"white"},{"text":"\n "}]

# event pufferfish 
execute if score #fish_fight_seconds switch.data matches 90 store result score #random switch.data run random value 0..2
execute if score #fish_fight_seconds switch.data matches 90 if score #random switch.data matches 1 run summon pufferfish 151026 127 151026 {Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
execute if score #fish_fight_seconds switch.data matches 90 if score #random switch.data matches 1 run summon pufferfish 151026 127 151026 {Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
execute if score #fish_fight_seconds switch.data matches 90 if score #random switch.data matches 1 run summon pufferfish 151040 124 151032 {Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
execute if score #fish_fight_seconds switch.data matches 90 if score #random switch.data matches 1 run summon pufferfish 151015 124 151020 {Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}

# tellraw  pour annoncer qu'une pufferfish a été invoquée
execute if score #fish_fight_seconds switch.data matches 91 if score #random switch.data matches 1 run tellraw @a[tag=!detached] ["",{"text":"Fish Event","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"Des poissons mécontents envahissent le terrain !","color":"white"},{"text":"\n "}]


# event pufferfish 2
execute if score #fish_fight_seconds switch.data matches 115 run execute store result score #random switch.data run random value 0..2
execute if score #fish_fight_seconds switch.data matches 115 if score #random switch.data matches 1 run summon pufferfish 151026 127 151026 {Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
execute if score #fish_fight_seconds switch.data matches 115 if score #random switch.data matches 1 run summon pufferfish 151026 127 151026 {Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
execute if score #fish_fight_seconds switch.data matches 115 if score #random switch.data matches 1 run summon pufferfish 151040 124 151032 {Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
execute if score #fish_fight_seconds switch.data matches 115 if score #random switch.data matches 1 run summon pufferfish 151015 124 151020 {Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}

# tellraw  pour annoncer qu'une pufferfish a été invoquée
execute if score #fish_fight_seconds switch.data matches 116 if score #random switch.data matches 1 run tellraw @a[tag=!detached] ["",{"text":"Fish Event","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"Des poissons mécontents envahissent le terrain !","color":"white"},{"text":"\n "}]

# clear items useless
clear @s dirt 
clear @s wheat_seeds 
clear @s chain
clear @s stone
clear @s podzol
clear @s mycelium
clear @s pufferfish