
scoreboard players add #rtb_round_state switch.data 1

scoreboard players set @a[tag=!detached] switch.rtb.time 0


execute as @e[type=marker,tag=switch.rtb.island] run function switch:modes/replicate_the_build/structure/destroy







bossbar set rtb.all name "Répliquez"
bossbar set rtb.all color red
scoreboard players set #rtb_build_time switch.data 600
execute store result bossbar rtb.all max run scoreboard players get #rtb_build_time switch.data
execute store result bossbar rtb.all value run scoreboard players get #rtb_build_time switch.data


execute positioned -29999997 24 1603 run fill ~ ~ ~ ~6 ~6 ~6 air
execute positioned -29999997 24 1603 run fill ~ ~-1 ~ ~6 ~-1 ~6 stone
execute positioned -29999997 24 1603 run function switch:modes/replicate_the_build/structure/place

gamemode survival @a[scores={switch.alive=1..}]
clear @a[tag=!detached]
kill @e[type=item]
gamerule doTileDrops true
execute positioned -29999997 24 1603 run function switch:modes/replicate_the_build/structure/give_player