

scoreboard players add #rtb_round_state switch.data 1

gamemode spectator @a[tag=switch.alive,gamemode=!spectator]


execute as @e[type=marker,tag=switch.rtb.center] at @s positioned ~-3 ~ ~1 run function switch:modes/replicate_the_build/structure/place


# Calcul du pourcentage de répliquation
kill @e[tag=switch.rtb.verify,type=marker]

execute as @e[type=marker,tag=switch.rtb.center] at @s run summon marker ~-3 ~ ~1 {Tags:["switch.rtb.verify","switch.rtb.verify_center"]}

execute as @e[type=marker,tag=switch.rtb.island] at @s positioned ~-3 ~ ~1 run function switch:modes/replicate_the_build/utils/summon_verify

scoreboard players set #rtb_dx switch.data 0
scoreboard players set #rtb_dy switch.data 0
scoreboard players set #rtb_dz switch.data 0

scoreboard players set @a[tag=switch.alive] switch.rtb.points 0


bossbar set rtb.all name "Calcul des scores ..."
bossbar set rtb.all max 343
bossbar set rtb.all value 0
bossbar set rtb.all color green
scoreboard players set #rtb_calcul_time switch.data 343


