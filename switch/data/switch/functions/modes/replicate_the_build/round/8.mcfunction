

scoreboard players remove #rtb_wait_explosion switch.data 1

execute if score #rtb_wait_explosion switch.data matches ..0 run function switch:modes/replicate_the_build/round/8_end


kill @e[type=item]
kill @e[type=arrow]
kill @e[tag=switch.rtb.verify,type=marker]