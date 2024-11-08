
#> switch:modes/fish_fight/second
#
# @within	switch:modes/fish_fight/calls/second
#

scoreboard players add #fish_fight_seconds switch.data 1


execute if score #fish_fight_seconds switch.data matches 3 as @a[tag=!detached] at @s run function switch:modes/fish_fight/give_items


# spawn axolot
scoreboard players operation #temp switch.data = #fish_fight_seconds switch.data
scoreboard players operation #temp switch.data %= #32 switch.data
execute if score #temp switch.data matches 0 if data storage switch:main {map:"luxio_fish_fight"} run summon axolotl 151026 134 151026 {Glowing:true,CustomNameVisible:true,Health:6f,CustomName:'{"text":"Axobonus","color":"light_purple","bold":true}',active_effects:[{id:"minecraft:slow_falling",amplifier:10b,duration:2000,show_particles:0b}]}
execute if score #temp switch.data matches 0 if data storage switch:main {map:"airdox_fish_fight"} run summon axolotl 155993 152 156013 {Glowing:true,CustomNameVisible:true,Health:6f,CustomName:'{"text":"Axobonus","color":"light_purple","bold":true}',active_effects:[{id:"minecraft:slow_falling",amplifier:10b,duration:2000,show_particles:0b}]}
execute if score #temp switch.data matches 0 if data storage switch:main {map:"airdox_fish_fight"} run summon axolotl 155983 164 155995 {Glowing:true,CustomNameVisible:true,Health:6f,CustomName:'{"text":"Axobonus","color":"light_purple","bold":true}',active_effects:[{id:"minecraft:slow_falling",amplifier:10b,duration:2000,show_particles:0b}]}
execute if score #temp switch.data matches 0 run effect give @a[tag=!detached] minecraft:glowing 4 2 true
execute if score #temp switch.data matches 0 as @a[tag=!detached] at @s run playsound entity.arrow.hit_player ambient @s

scoreboard players operation #temp_2 switch.data = #fish_fight_seconds switch.data
scoreboard players operation #temp_2 switch.data %= #6 switch.data
execute if score #temp_2 switch.data matches 0 if score #TEAM_FISH switch.data matches 0 run give @a[tag=!detached] white_concrete 1
execute if score #temp_2 switch.data matches 0 if score #TEAM_FISH switch.data matches 1 run give @a[team=switch.temp.blue] blue_concrete 1 
execute if score #temp_2 switch.data matches 0 if score #TEAM_FISH switch.data matches 1 run give @a[team=switch.temp.red] red_concrete 1

#only one winner en cas d'une team

execute if entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.red] unless entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.blue] run function switch:modes/fish_fight/teams_tp/only_one_winner
execute if entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.blue] unless entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.red] run function switch:modes/fish_fight/teams_tp/only_one_winner


#TNT

execute if score #fish_fight_seconds switch.data matches 70 as @r[tag=!detached,gamemode=!spectator] run function switch:modes/fish_fight/give_tnt
execute if score #fish_fight_seconds switch.data matches 70 as @r[tag=!detached,gamemode=!spectator] run function switch:modes/fish_fight/give_tnt
execute if score #fish_fight_seconds switch.data matches 70 as @r[tag=!detached,gamemode=!spectator] run function switch:modes/fish_fight/give_tnt
# tellraw  pour annoncer qu'une tnt a été donnée à des joueurs aléatoires 

execute if score #fish_fight_seconds switch.data matches 125 as @r[tag=!detached,gamemode=!spectator] run function switch:modes/fish_fight/give_tnt
execute if score #fish_fight_seconds switch.data matches 125 as @r[tag=!detached,gamemode=!spectator] run function switch:modes/fish_fight/give_tnt
execute if score #fish_fight_seconds switch.data matches 125 as @r[tag=!detached,gamemode=!spectator] run function switch:modes/fish_fight/give_tnt
execute if score #fish_fight_seconds switch.data matches 125 as @r[tag=!detached,gamemode=!spectator] run function switch:modes/fish_fight/give_tnt
execute if score #fish_fight_seconds switch.data matches 125 as @r[tag=!detached,gamemode=!spectator] run function switch:modes/fish_fight/give_tnt
execute if score #fish_fight_seconds switch.data matches 125 as @r[tag=!detached,gamemode=!spectator] run function switch:modes/fish_fight/give_tnt

# tellraw  pour annoncer qu'une tnt a été donnée à des joueurs aléatoires

# event pufferfish 
execute if score #fish_fight_seconds switch.data matches 86 store result score #random switch.data run random value 0..2
execute if score #fish_fight_seconds switch.data matches 86 if score #random switch.data matches 1 if data storage switch:main {map:"luxio_fish_fight"} run summon pufferfish 151026 127 151026 {Glowing:true,CustomNameVisible:true,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
execute if score #fish_fight_seconds switch.data matches 86 if score #random switch.data matches 1 if data storage switch:main {map:"luxio_fish_fight"} run summon pufferfish 151026 127 151026 {Glowing:true,CustomNameVisible:true,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
execute if score #fish_fight_seconds switch.data matches 86 if score #random switch.data matches 1 if data storage switch:main {map:"luxio_fish_fight"} run summon pufferfish 151040 124 151032 {Glowing:true,CustomNameVisible:true,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
execute if score #fish_fight_seconds switch.data matches 86 if score #random switch.data matches 1 if data storage switch:main {map:"luxio_fish_fight"} run summon pufferfish 151015 124 151020 {Glowing:true,CustomNameVisible:true,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
execute if score #fish_fight_seconds switch.data matches 86 if score #random switch.data matches 1 if data storage switch:main {map:"airdox_fish_fight"} run summon pufferfish 156007 155 155998 {Glowing:true,CustomNameVisible:true,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
execute if score #fish_fight_seconds switch.data matches 86 if score #random switch.data matches 1 if data storage switch:main {map:"airdox_fish_fight"} run summon pufferfish 156003 154 155972 {Glowing:true,CustomNameVisible:true,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
execute if score #fish_fight_seconds switch.data matches 86 if score #random switch.data matches 1 if data storage switch:main {map:"airdox_fish_fight"} run summon pufferfish 156007 147 156001 {Glowing:true,CustomNameVisible:true,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
execute if score #fish_fight_seconds switch.data matches 86 if score #random switch.data matches 1 if data storage switch:main {map:"airdox_fish_fight"} run summon pufferfish 156007 146 156028 {Glowing:true,CustomNameVisible:true,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
execute if score #fish_fight_seconds switch.data matches 86 if score #random switch.data matches 1 if data storage switch:main {map:"airdox_fish_fight"} run summon pufferfish 15586 153 156004 {Glowing:true,CustomNameVisible:true,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}


# tellraw  pour annoncer qu'une pufferfish a été invoquée


# event pufferfish 2
execute if score #fish_fight_seconds switch.data matches 115 run execute store result score #random switch.data run random value 0..2
execute if score #fish_fight_seconds switch.data matches 115 if score #random switch.data matches 1 if data storage switch:main {map:"luxio_fish_fight"} run summon pufferfish 151026 127 151026 {Glowing:true,CustomNameVisible:true,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
execute if score #fish_fight_seconds switch.data matches 115 if score #random switch.data matches 1 if data storage switch:main {map:"luxio_fish_fight"} run summon pufferfish 151026 127 151026 {Glowing:true,CustomNameVisible:true,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
execute if score #fish_fight_seconds switch.data matches 115 if score #random switch.data matches 1 if data storage switch:main {map:"luxio_fish_fight"} run summon pufferfish 151040 124 151032 {Glowing:true,CustomNameVisible:true,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
execute if score #fish_fight_seconds switch.data matches 115 if score #random switch.data matches 1 if data storage switch:main {map:"luxio_fish_fight"} run summon pufferfish 151015 124 151020 {Glowing:true,CustomNameVisible:true,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
execute if score #fish_fight_seconds switch.data matches 115 if score #random switch.data matches 1 if data storage switch:main {map:"airdox_fish_fight"} run summon pufferfish 156007 155 155998 {Glowing:true,CustomNameVisible:true,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
execute if score #fish_fight_seconds switch.data matches 115 if score #random switch.data matches 1 if data storage switch:main {map:"airdox_fish_fight"} run summon pufferfish 156003 154 155972 {Glowing:true,CustomNameVisible:true,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
execute if score #fish_fight_seconds switch.data matches 115 if score #random switch.data matches 1 if data storage switch:main {map:"airdox_fish_fight"} run summon pufferfish 156007 147 156001 {Glowing:true,CustomNameVisible:true,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
execute if score #fish_fight_seconds switch.data matches 115 if score #random switch.data matches 1 if data storage switch:main {map:"airdox_fish_fight"} run summon pufferfish 156007 146 156028 {Glowing:true,CustomNameVisible:true,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
execute if score #fish_fight_seconds switch.data matches 115 if score #random switch.data matches 1 if data storage switch:main {map:"airdox_fish_fight"} run summon pufferfish 15586 153 156004 {Glowing:true,CustomNameVisible:true,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}

# tellraw  pour annoncer qu'une pufferfish a été invoquée

# clear items useless
clear @s dirt
clear @s wheat_seeds
clear @s chain
clear @s stone
clear @s podzol
clear @s mycelium
clear @s pufferfish

function switch:translations/modes_fish_fight_second

