

scoreboard players remove #rtb_memorize_time switch.rtb.data 1
execute store result bossbar minecraft:rtb.all value run scoreboard players get #rtb_memorize_time switch.rtb.data

execute if score #rtb_memorize_time switch.rtb.data matches ..0 run function switch:modes/replicate_the_build/round/4_end


