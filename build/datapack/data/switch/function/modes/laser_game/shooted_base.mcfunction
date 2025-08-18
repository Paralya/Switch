
#> switch:modes/laser_game/shooted_base
#
# @executed	at @e[tag=iris.ray]
#
# @within	switch:modes/laser_game/shoot [ at @e[tag=iris.ray] ]
#

scoreboard players set #color switch.data 0
execute store success score #color switch.data if entity @s[scores={switch.alive=11}]

execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

execute if score #color switch.data matches 0 run tag @a[scores={switch.alive=10}] add switch.message
execute if score #color switch.data matches 1 run tag @a[scores={switch.alive=11}] add switch.message
execute store result score #random switch.data run random value 0..5
function switch:translations/modes_laser_game_shooted_base
tag @a remove switch.message

execute if score #random switch.data matches 0 run scoreboard players set @s switch.temp.shield 5
execute if score #random switch.data matches 1 run scoreboard players set #mitraillette switch.data 15
execute if score #random switch.data matches 1 run tag @s add switch.bonus.fast
execute if score #random switch.data matches 2 if score #color switch.data matches 0 run effect give @a[scores={switch.alive=11}] darkness 5 255 true
execute if score #random switch.data matches 2 if score #color switch.data matches 1 run effect give @a[scores={switch.alive=10}] darkness 5 255 true
execute if score #random switch.data matches 3 if score #color switch.data matches 0 run effect give @a[scores={switch.alive=11}] glowing 5 255 true
execute if score #random switch.data matches 3 if score #color switch.data matches 1 run effect give @a[scores={switch.alive=10}] glowing 5 255 true
execute if score #random switch.data matches 4 run scoreboard players set #change_color switch.data 30
execute if score #random switch.data matches 4 run team join switch.laser_game.blue @s[scores={switch.alive=11}]
execute if score #random switch.data matches 4 run team join switch.laser_game.red @s[scores={switch.alive=10}]
execute if score #random switch.data matches 4 run tag @s add switch.bonus.color
execute if score #random switch.data matches 5 if score #color switch.data matches 0 run effect give @a[scores={switch.alive=10}] speed 15 1 true
execute if score #random switch.data matches 5 if score #color switch.data matches 1 run effect give @a[scores={switch.alive=11}] speed 15 1 true

execute if score #color switch.data matches 0 run scoreboard players add #blue_points switch.data 20
execute if score #color switch.data matches 1 run scoreboard players add #red_points switch.data 20
scoreboard players add @s switch.temp.individual_points 20

scoreboard players set #base_reload switch.data 15
execute as @e[tag=switch.laser_game.base] run data merge entity @s {Glowing:false,block_state:{Name:"minecraft:dark_oak_trapdoor"}}

# Advancement
execute unless score #test_mode switch.data matches 1 run advancement grant @s only switch:visible/77

