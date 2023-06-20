

execute as @a run function switch:modes/replicate_the_build/utils/display_score


scoreboard players remove #rtb_wait_score switch.rtb.data 1
execute if score #rtb_wait_score switch.rtb.data matches ..0 run function switch:modes/replicate_the_build/round/7_end
