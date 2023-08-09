title @a times 0t 20t 0
title @a title {"text":"1","color":"green"}
scoreboard players add #rtb_round_state switch.data 1

execute at @a run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~ 1 1


kill @e[type=item]
kill @e[type=arrow]
kill @e[tag=switch.rtb.verify,type=marker]