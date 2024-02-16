
scoreboard players add #one_shot_seconds switch.data 1


execute if score #one_shot_seconds switch.data matches 3 as @a[tag=!detached] at @s run function switch:modes/one_shot/give_items
execute if score #one_shot_seconds switch.data matches 5 run give @a arrow 1
execute if score #one_shot_seconds switch.data matches 4 if score #TEAM_ONESHOT switch.data matches 1 run tellraw @a[tag=!detached] ["",{"text":"One Shot","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"(1 partie sur 2)","italic":true,"color":"gray"},{"text":" Le jeu se déroulera en ","color":"white"},{"text":"équipes","underlined":true,"color":"white"},{"text":" !","color":"white"},{"text":"\n "}]
execute if score #one_shot_seconds switch.data matches 8 if score #TEAM_ONESHOT switch.data matches 1 run tellraw @a[tag=!detached] ["",{"text":"One Shot","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"(1 partie sur 2)","italic":true,"color":"gray"},{"text":" Le jeu se déroulera en ","color":"white"},{"text":"équipes","underlined":true,"color":"white"},{"text":" !","color":"white"},{"text":"\n "}]


# spawn axolot
# scoreboard players operation #temp switch.data = #one_shot_seconds switch.data
# scoreboard players operation #temp switch.data %= #32 switch.data
# execute if score #temp switch.data matches 0 if data storage switch:main {map:"luxio_one_shot"} run summon axolotl 151026 134 151026 {Glowing:1b,CustomNameVisible:1b,Health:6f,CustomName:'{"text":"Axobonus","color":"light_purple","bold":true}',active_effects:[{id:"minecraft:slow_falling",amplifier:10b,duration:2000,show_particles:0b}]}
# execute if score #temp switch.data matches 0 if data storage switch:main {map:"airdox_one_shot"} run summon axolotl 155993 152 156013 {Glowing:1b,CustomNameVisible:1b,Health:6f,CustomName:'{"text":"Axobonus","color":"light_purple","bold":true}',active_effects:[{id:"minecraft:slow_falling",amplifier:10b,duration:2000,show_particles:0b}]}
# execute if score #temp switch.data matches 0 if data storage switch:main {map:"airdox_one_shot"} run summon axolotl 155983 164 155995 {Glowing:1b,CustomNameVisible:1b,Health:6f,CustomName:'{"text":"Axobonus","color":"light_purple","bold":true}',active_effects:[{id:"minecraft:slow_falling",amplifier:10b,duration:2000,show_particles:0b}]}
# execute if score #temp switch.data matches 0 run effect give @a[tag=!detached] minecraft:glowing 4 2 true
# execute if score #temp switch.data matches 0 run tellraw @a[tag=!detached] ["",{"text":"ONESHOT Fight","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"Un Axolotl Bonus est apparu ! Tuez le pour obtenir un bonus et gagner des coeurs !"},{"text":"\n "}]
# execute if score #temp switch.data matches 0 as @a[tag=!detached] at @s run playsound entity.arrow.hit_player ambient @s

scoreboard players operation #temp switch.data = #one_shot_seconds switch.data
scoreboard players operation #temp switch.data %= #8 switch.data
execute if score #temp switch.data matches 0 if score #TEAM_ONESHOT switch.data matches 0 run give @a[tag=!detached] white_wool 1
execute if score #temp switch.data matches 0 if score #TEAM_ONESHOT switch.data matches 1 run give @a[team=switch.temp.blue] blue_wool 1 
execute if score #temp switch.data matches 0 if score #TEAM_ONESHOT switch.data matches 1 run give @a[team=switch.temp.red] red_wool 1

scoreboard players operation #temp switch.data = #one_shot_seconds switch.data
scoreboard players operation #temp switch.data %= #31 switch.data
execute if score #temp switch.data matches 0 run effect give @a[tag=!detached] minecraft:glowing 4 2 true

#only one winner en cas d'une team

execute if entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.red] unless entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.blue] run function switch:modes/one_shot/teams_tp/only_one_winner
execute if entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.blue] unless entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.red] run function switch:modes/one_shot/teams_tp/only_one_winner




# event pufferONESHOT 
# execute if score #one_shot_seconds switch.data matches 86 store result score #random switch.data run random value 0..2
# execute if score #one_shot_seconds switch.data matches 86 if score #random switch.data matches 1 if data storage switch:main {map:"luxio_one_shot"} run summon pufferONESHOT 151026 127 151026 {Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
# execute if score #one_shot_seconds switch.data matches 86 if score #random switch.data matches 1 if data storage switch:main {map:"luxio_one_shot"} run summon pufferONESHOT 151026 127 151026 {Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
# execute if score #one_shot_seconds switch.data matches 86 if score #random switch.data matches 1 if data storage switch:main {map:"luxio_one_shot"} run summon pufferONESHOT 151040 124 151032 {Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
# execute if score #one_shot_seconds switch.data matches 86 if score #random switch.data matches 1 if data storage switch:main {map:"luxio_one_shot"} run summon pufferONESHOT 151015 124 151020 {Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
# execute if score #one_shot_seconds switch.data matches 86 if score #random switch.data matches 1 if data storage switch:main {map:"airdox_one_shot"} run summon pufferONESHOT 156007 155 155998 {Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
# execute if score #one_shot_seconds switch.data matches 86 if score #random switch.data matches 1 if data storage switch:main {map:"airdox_one_shot"} run summon pufferONESHOT 156003 154 155972 {Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
# execute if score #one_shot_seconds switch.data matches 86 if score #random switch.data matches 1 if data storage switch:main {map:"airdox_one_shot"} run summon pufferONESHOT 156007 147 156001 {Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
# execute if score #one_shot_seconds switch.data matches 86 if score #random switch.data matches 1 if data storage switch:main {map:"airdox_one_shot"} run summon pufferONESHOT 156007 146 156028 {Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
# execute if score #one_shot_seconds switch.data matches 86 if score #random switch.data matches 1 if data storage switch:main {map:"airdox_one_shot"} run summon pufferONESHOT 15586 153 156004 {Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}


# tellraw  pour annoncer qu'une pufferONESHOT a été invoquée
#execute if score #one_shot_seconds switch.data matches 86 if score #random switch.data matches 1 run tellraw @a[tag=!detached] ["",{"text":"ONESHOT Event","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"Des poissons mécontents envahissent le terrain !","color":"white"},{"text":"\n "}]


# event pufferONESHOT 2
# execute if score #one_shot_seconds switch.data matches 115 run execute store result score #random switch.data run random value 0..2
# execute if score #one_shot_seconds switch.data matches 115 if score #random switch.data matches 1 if data storage switch:main {map:"luxio_one_shot"} run summon pufferONESHOT 151026 127 151026 {Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
# execute if score #one_shot_seconds switch.data matches 115 if score #random switch.data matches 1 if data storage switch:main {map:"luxio_one_shot"} run summon pufferONESHOT 151026 127 151026 {Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
# execute if score #one_shot_seconds switch.data matches 115 if score #random switch.data matches 1 if data storage switch:main {map:"luxio_one_shot"} run summon pufferONESHOT 151040 124 151032 {Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
# execute if score #one_shot_seconds switch.data matches 115 if score #random switch.data matches 1 if data storage switch:main {map:"luxio_one_shot"} run summon pufferONESHOT 151015 124 151020 {Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
# execute if score #one_shot_seconds switch.data matches 115 if score #random switch.data matches 1 if data storage switch:main {map:"airdox_one_shot"} run summon pufferONESHOT 156007 155 155998 {Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
# execute if score #one_shot_seconds switch.data matches 115 if score #random switch.data matches 1 if data storage switch:main {map:"airdox_one_shot"} run summon pufferONESHOT 156003 154 155972 {Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
# execute if score #one_shot_seconds switch.data matches 115 if score #random switch.data matches 1 if data storage switch:main {map:"airdox_one_shot"} run summon pufferONESHOT 156007 147 156001 {Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
# execute if score #one_shot_seconds switch.data matches 115 if score #random switch.data matches 1 if data storage switch:main {map:"airdox_one_shot"} run summon pufferONESHOT 156007 146 156028 {Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}
# execute if score #one_shot_seconds switch.data matches 115 if score #random switch.data matches 1 if data storage switch:main {map:"airdox_one_shot"} run summon pufferONESHOT 15586 153 156004 {Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Poisson mécontent","color":"green","bold":true}'}

# tellraw  pour annoncer qu'une pufferONESHOT a été invoquée
# execute if score #one_shot_seconds switch.data matches 116 if score #random switch.data matches 1 run tellraw @a[tag=!detached] ["",{"text":"ONESHOT Event","bold":true,"color":"#FAB7FA"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"Des poissons mécontents envahissent le terrain !","color":"white"},{"text":"\n "}]

# clear items useless

