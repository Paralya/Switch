
#> switch:modes/replicate_the_build/round/_common
#
# @within	switch:modes/replicate_the_build/round/0
#			switch:modes/replicate_the_build/round/1
#			switch:modes/replicate_the_build/round/2
#

scoreboard players add #rtb_round_state switch.data 1

execute at @a[tag=!detached] run playsound minecraft:block.note_block.harp ambient @a[tag=!detached] ~ ~ ~ 1 1

kill @e[type=item]
kill @e[type=arrow]
kill @e[tag=switch.rtb.verify,type=marker]

