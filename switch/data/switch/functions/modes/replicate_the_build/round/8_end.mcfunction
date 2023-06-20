execute store result score #nb_alive switch.rtb.data if entity @a[tag=switch.alive]

execute if score #nb_alive switch.rtb.data matches 2.. run scoreboard players set #rtb_round_state switch.rtb.data 0
execute if score #nb_alive switch.rtb.data matches ..1 run scoreboard players set #rtb_round_state switch.rtb.data 9


execute as @e[type=marker,tag=switch.rtb.island] run function switch:modes/replicate_the_build/structure/destroy
execute as @e[type=marker,tag=switch.rtb.center] run function switch:modes/replicate_the_build/structure/destroy
execute at @a run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~ 1 0.5


