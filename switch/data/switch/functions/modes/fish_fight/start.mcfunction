
scoreboard players set @a[tag=!detached] switch.alive 3
effect give @a[tag=!detached] saturation infinite 255 true
function switch:utils/set_dynamic_time

gamerule fallDamage false

## Téléportation des joueurs
scoreboard players set #is_adventure switch.data 1
function switch:choose_map_for/fish_fight
scoreboard players set #spawn_count switch.data 0
execute if data storage switch:main {map:"fish_fight_1"} as @a[tag=!detached,sort=random] run function switch:modes/fish_fight/map_1/tp_give
execute if data storage switch:main {map:"fish_fight_halloween"} as @a[tag=!detached,sort=random] run function switch:modes/fish_fight/map_halloween/tp_give
execute as @a[tag=!detached] run function switch:modes/fish_fight/xp_bar

tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Pitchout, exterminez les autres !"}]

scoreboard objectives add switch.temp.damages dummy
scoreboard objectives add switch.temp.cooldown dummy
scoreboard objectives add switch.temp.old_x dummy
scoreboard objectives add switch.temp.old_z dummy
scoreboard objectives add switch.temp.blocks_run dummy
scoreboard players set @a[tag=!detached] switch.temp.cooldown 120

scoreboard players set #fish_fight_seconds switch.data -5
scoreboard players set #fish_fight_ticks switch.data 0
scoreboard players set #process_end switch.data 0

data modify storage switch:temp fish_fight set value []
execute as @a[tag=!detached] run function switch:modes/fish_fight/advancements/setup_player

execute as @a[tag=!detached] store result score @s switch.temp.old_x run data get entity @s Pos[0]
execute as @a[tag=!detached] store result score @s switch.temp.old_z run data get entity @s Pos[2]

