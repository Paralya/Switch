
#> switch:modes/pitchout/second
#
# @within	switch:modes/pitchout/calls/second
#

scoreboard players add #pitchout_seconds switch.data 1

execute if score #pitchout_seconds switch.data matches -3 as @a[tag=!detached] at @s run function switch:modes/pitchout/give_items
execute if score #pitchout_seconds switch.data matches 100 unless score #test_mode switch.data matches 1 as @a[tag=!detached,scores={switch.alive=1..3}] unless score @s switch.temp.damages matches 1.. run advancement grant @s only switch:visible/13

# 500 blocs run Pitchout
execute as @a[tag=!detached,gamemode=adventure] run function switch:modes/pitchout/blocks_run

