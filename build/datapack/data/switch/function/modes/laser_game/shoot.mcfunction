
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

execute anchored eyes positioned ^ ^ ^ run function #bs.raycast:run {with:{entities:true,max_distance:25.6,on_targeted_entity:"function switch:modes/laser_game/shoot_hit_entity",on_entry_point:"function switch:modes/laser_game/shoot_hit_point"}}

execute as @e[type=marker,tag=switch.shoot_ray,limit=1] at @s run function switch:modes/laser_game/shoot_particles
kill @e[type=marker,tag=switch.shoot_ray]
tag @s remove switch.temp

