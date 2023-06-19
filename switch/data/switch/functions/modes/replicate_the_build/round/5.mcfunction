scoreboard players remove #rtb_build_time switch.data 1
execute store result bossbar minecraft:rtb.all value run scoreboard players get #rtb_build_time switch.data

execute if score #rtb_build_time switch.data matches ..0 run function switch:modes/replicate_the_build/round/5_end
