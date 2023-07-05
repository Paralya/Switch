
scoreboard players add #rtb_round_state switch.rtb.data 1

scoreboard players set @a switch.rtb.time 0


execute as @e[type=marker,tag=switch.rtb.island] run function switch:modes/replicate_the_build/structure/destroy







bossbar set minecraft:rtb.all name "Répliquez"
bossbar set minecraft:rtb.all color red
execute store result bossbar minecraft:rtb.all max run scoreboard players get #rtb_build_time switch.rtb.data
execute store result bossbar minecraft:rtb.all value run scoreboard players get #rtb_build_time switch.rtb.data

scoreboard players set #rtb_build_time switch.rtb.data 400

execute positioned -29999997 24 1603 run fill ~ ~ ~ ~6 ~6 ~6 air
execute positioned -29999997 24 1603 run function switch:modes/replicate_the_build/structure/place

gamemode survival @a[tag=switch.alive]
execute positioned -29999997 24 1603 run function switch:modes/replicate_the_build/structure/give_player