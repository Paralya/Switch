
scoreboard players set @a[tag=!switch.detached] switch.alive 3
effect give @a[tag=!switch.detached] speed infinite 0 true
effect give @a[tag=!switch.detached] jump_boost infinite 2 true
effect give @a[tag=!switch.detached] saturation infinite 255 true
effect give @a[tag=!switch.detached] resistance infinite 255 true
function switch:utils/set_dynamic_time

## Téléportation des joueurs
scoreboard players set #is_adventure switch.data 1
function switch:choose_map_for/pitchout
scoreboard players set #spawn_count switch.data 0
execute if data storage switch:main {map:"pitchout_1"} as @a[tag=!switch.detached,sort=random] run function switch:modes/pitchout/map_1/tp_give
execute as @a[tag=!switch.detached] run function switch:modes/pitchout/xp_bar

tellraw @a[tag=!switch.detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Pitchout, exterminez les autres !"}]

scoreboard objectives add switch.temp.cooldown dummy
scoreboard players set @a[tag=!switch.detached] switch.temp.cooldown 120

scoreboard players set #pitchout_seconds switch.data -5
scoreboard players set #pitchout_ticks switch.data 0
scoreboard players set #process_end switch.data 0

