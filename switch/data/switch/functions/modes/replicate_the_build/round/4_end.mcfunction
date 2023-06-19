
scoreboard players add #rtb_round_state switch.data 1

execute as @e[type=marker,tag=switch.rtb.island] run function switch:modes/replicate_the_build/structure/destroy

execute as @a[tag=switch.alive] run function switch:modes/replicate_the_build/structure/give


bossbar set minecraft:rtb.all name "Répliquez"
bossbar set minecraft:rtb.all color red
scoreboard players set #rtb_build_time switch.data 2400
execute store result bossbar minecraft:rtb.all max run scoreboard players get #rtb_build_time switch.data
execute store result bossbar minecraft:rtb.all value run scoreboard players get #rtb_build_time switch.data

execute positioned 0 143 0 run function switch:modes/replicate_the_build/structure/place
