
#> switch:modes/replicate_the_build/round/2
#
# @within	switch:modes/replicate_the_build/second
#

function switch:translations/modes_replicate_the_build_round_2
scoreboard players add #rtb_round_state switch.data 1

execute at @a[tag=!detached] run playsound minecraft:block.note_block.harp ambient @a[tag=!detached] ~ ~ ~ 1 1


kill @e[type=item]
kill @e[type=arrow]
kill @e[tag=switch.rtb.verify,type=marker]

