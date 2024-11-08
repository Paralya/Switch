kill @e[type=item]
kill @e[type=arrow]
kill @e[tag=switch.rtb.verify,type=marker]


function switch:translations/modes_replicate_the_build_round_3
scoreboard players add #rtb_round_state switch.data 1

scoreboard objectives remove switch.rtb.id
scoreboard objectives add switch.rtb.id dummy

kill @e[type=marker,tag=switch.rtb.island]
kill @e[type=marker,tag=switch.rtb.center]

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





scoreboard players set #rtbteam switch.data 0
execute as @e[tag=switch.rtb.island,type=marker,sort=random] run function switch:modes/replicate_the_build/start/random_island


scoreboard players set #rtbteam switch.data 0
execute as @a[scores={switch.alive=1..},sort=random] run function switch:modes/replicate_the_build/start/select_teams

gamemode adventure @a[scores={switch.alive=1..}]
clear @a[tag=!detached]
kill @e[type=item]


# Tirage au sort de la structure
execute store result score #random switch.data run random value 0..10

execute as @e[type=marker,tag=switch.rtb.island] at @s positioned ~-3 ~ ~1 run function switch:modes/replicate_the_build/structure/place


bossbar set rtb.all name "Mémorisez !"
bossbar set rtb.all color green
scoreboard players set #rtb_memorize_time switch.data 140
execute store result bossbar rtb.all max run scoreboard players get #rtb_memorize_time switch.data
execute store result bossbar rtb.all value run scoreboard players get #rtb_memorize_time switch.data


execute at @a[tag=!detached] run playsound minecraft:block.note_block.harp ambient @a[tag=!detached] ~ ~ ~ 1 1.5
