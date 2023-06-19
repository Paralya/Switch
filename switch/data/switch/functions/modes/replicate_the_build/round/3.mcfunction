title @a times 0t 20t 0
title @a title {"text":" Mémorisez !","color":"green"}
scoreboard players add #rtb_round_state switch.data 1

#
execute as @a[tag=switch.alive] run function switch:modes/replicate_the_build/utils/tp_to_island
gamemode adventure @a[tag=switch.alive]


# Tirage au sort de la structure
execute summon marker run function switch:modes/replicate_the_build/utils/randomizer
scoreboard players set #rtb.number_of_structure switch.data 1
scoreboard players operation #rtb.random switch.data %= #rtb.number_of_structure switch.data

execute as @e[type=marker,tag=switch.rtb.island] at @s positioned ~-3 ~ ~1 run function switch:modes/replicate_the_build/structure/place


bossbar set minecraft:rtb.all name "Mémorisez !"
bossbar set minecraft:rtb.all color green
scoreboard players set #rtb_memorize_time switch.data 140
execute store result bossbar minecraft:rtb.all max run scoreboard players get #rtb_memorize_time switch.data
execute store result bossbar minecraft:rtb.all value run scoreboard players get #rtb_memorize_time switch.data


