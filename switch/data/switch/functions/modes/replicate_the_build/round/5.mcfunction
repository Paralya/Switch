scoreboard players remove #rtb_build_time switch.rtb.data 1
execute store result bossbar minecraft:rtb.all value run scoreboard players get #rtb_build_time switch.rtb.data



# execute if blocks -29999997 24 1603 -29999991 30 1609 ~-3 ~ ~1 all
execute as @e[type=marker,tag=switch.rtb.island] at @s if blocks -29999997 24 1603 -29999991 30 1609 ~-3 ~ ~1 all run function switch:modes/replicate_the_build/utils/finish_building
say t

scoreboard players add @a[tag=switch.alive,gamemode=survival] switch.rtb.time 1

execute if score #rtb_build_time switch.rtb.data matches ..0 run function switch:modes/replicate_the_build/round/5_end
execute unless entity @a[gamemode=!spectator,tag=switch.alive] run function switch:modes/replicate_the_build/round/5_end


