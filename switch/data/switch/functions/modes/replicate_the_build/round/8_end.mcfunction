execute store result score #nb_alive switch.data if entity @a[tag=!detached,scores={switch.alive=1..}]

execute if score #nb_alive switch.data matches 2.. run scoreboard players set #rtb_round_state switch.data 0
execute if score #nb_alive switch.data matches ..1 run scoreboard players set #rtb_round_state switch.data 9


execute as @e[type=marker,tag=switch.rtb.island] run function switch:modes/replicate_the_build/structure/destroy
execute as @e[type=marker,tag=switch.rtb.center] run function switch:modes/replicate_the_build/structure/destroy
execute at @a[tag=!detached] run playsound minecraft:block.note_block.harp ambient @a[tag=!detached] ~ ~ ~ 1 0.5


kill @e[type=item]
kill @e[type=arrow]
kill @e[tag=switch.rtb.verify,type=marker]