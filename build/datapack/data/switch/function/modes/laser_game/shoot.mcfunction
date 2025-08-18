
#> switch:modes/laser_game/shoot
#
# @executed	as @a[tag=!detached,scores={switch.right_click=1..},sort=random] & at @s
#
# @within	switch:modes/laser_game/right_click
#

tag @s add switch.temp

scoreboard players set #color switch.data 0
execute store success score #color switch.data if entity @s[team=switch.laser_game.red]

scoreboard players set @s switch.temp.cooldown -20
scoreboard players set @s[tag=switch.bonus.fast] switch.temp.cooldown -4
playsound switch:laser_gun ambient @s

function iris:setup/load
data merge storage iris:input {MaxRecursionDepth:256, TargetEntities:true}
execute anchored eyes positioned ^ ^ ^ run function iris:get_target
execute as @e[tag=iris.ray] run function iris:set_coordinates
execute if entity @s[scores={switch.alive=10}] as @e[tag=iris.target,scores={switch.alive=11},tag=!global.ignore] at @s run function switch:modes/laser_game/shooted_player_red
execute if entity @s[scores={switch.alive=11}] as @e[tag=iris.target,scores={switch.alive=10},tag=!global.ignore] at @s run function switch:modes/laser_game/shooted_player_blue
execute at @e[tag=iris.ray] if entity @e[tag=switch.laser_game.base,distance=..1.69,nbt={Glowing:true}] run function switch:modes/laser_game/shooted_base
execute as @e[tag=iris.ray] at @s run function switch:modes/laser_game/shoot_particles

kill @e[type=marker,tag=iris.ray]
tag @e[type=!#iris:ignore] remove iris.target
tag @s remove switch.temp

