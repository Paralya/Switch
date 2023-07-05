title @a times 0t 20t 0
title @a title {"text":" Mémorisez !","color":"green"}
scoreboard players add #rtb_round_state switch.rtb.data 1

scoreboard objectives add switch.rtb.id dummy
scoreboard players set #rtbteam switch.rtb.data 0

summon marker 102000 98 101996 {Tags:["switch.rtb.center"]}

# 102000 98 101982, 101986 98 101982, 101986 98 101996, 101986 98 102010, 102000 98 102010, 102014 98 102010, 102014 98 101996,102014 98 101982

summon marker 102000 98 101982 {Tags:["switch.rtb.island"]}
summon marker 101986 98 101982 {Tags:["switch.rtb.island"]}
summon marker 101986 98 101996 {Tags:["switch.rtb.island"]}
summon marker 101986 98 102010 {Tags:["switch.rtb.island"]}
summon marker 102000 98 102010 {Tags:["switch.rtb.island"]}
summon marker 102014 98 102010 {Tags:["switch.rtb.island"]}
summon marker 102014 98 101996 {Tags:["switch.rtb.island"]}
summon marker 102014 98 101982 {Tags:["switch.rtb.island"]}






execute as @e[tag=switch.rtb.island,type=marker,sort=random] run function switch:modes/replicate_the_build/start/random_island


scoreboard players set #rtbteam switch.rtb.data 0
execute as @a[sort=random] run function switch:modes/replicate_the_build/start/select_teams

gamemode adventure @a[tag=switch.alive]


# Tirage au sort de la structure
execute summon marker run function switch:modes/replicate_the_build/utils/randomizer
scoreboard players set #rtb.number_of_structure switch.rtb.data 11
scoreboard players operation #rtb.random switch.rtb.data %= #rtb.number_of_structure switch.rtb.data

execute as @e[type=marker,tag=switch.rtb.island] at @s positioned ~-3 ~ ~1 run function switch:modes/replicate_the_build/structure/place


bossbar set minecraft:rtb.all name "Mémorisez !"
bossbar set minecraft:rtb.all color green
scoreboard players set #rtb_memorize_time switch.rtb.data 140
execute store result bossbar minecraft:rtb.all max run scoreboard players get #rtb_memorize_time switch.rtb.data
execute store result bossbar minecraft:rtb.all value run scoreboard players get #rtb_memorize_time switch.rtb.data


execute at @a run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~ 1 1.5
