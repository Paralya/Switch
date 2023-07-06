

scoreboard players remove #rtb_memorize_time switch.data 1
execute store result bossbar rtb:all value run scoreboard players get #rtb_memorize_time switch.data

execute if score #rtb_memorize_time switch.data matches ..0 run function switch:modes/replicate_the_build/round/4_end


