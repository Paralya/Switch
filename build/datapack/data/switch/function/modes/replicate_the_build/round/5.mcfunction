
#> switch:modes/replicate_the_build/round/5
#
# @within	switch:modes/replicate_the_build/tick
#

# Reduce time
scoreboard players remove #rtb_build_time switch.data 1
execute store result bossbar rtb.all value run scoreboard players get #rtb_build_time switch.data



# execute if blocks -29999997 24 1603 -29999991 30 1609 ~-3 ~ ~1 all
execute as @e[type=marker,tag=switch.rtb.island] at @s if blocks -29999997 24 1603 -29999991 30 1609 ~-3 ~ ~1 all run function switch:modes/replicate_the_build/utils/finish_building

scoreboard players add @a[scores={switch.alive=1..},gamemode=survival] switch.rtb.time 1

execute if score #rtb_build_time switch.data matches ..0 run function switch:modes/replicate_the_build/round/5_end
execute if score #rtb_round_state switch.data matches 5 unless entity @a[tag=!detached,gamemode=!spectator,scores={switch.alive=1..}] run function switch:modes/replicate_the_build/round/5_end


