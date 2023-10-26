title @a[tag=!detached] times 0t 20t 0
title @a[tag=!detached] title {"text":"3","color":"green"}
scoreboard players add #rtb_round_state switch.data 1

execute at @a[tag=!detached] run playsound minecraft:block.note_block.harp ambient @a[tag=!detached] ~ ~ ~ 1 1


kill @e[type=item]
kill @e[type=arrow]
kill @e[tag=switch.rtb.verify,type=marker]