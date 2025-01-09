
scoreboard players set @a[tag=!detached] switch.alive 3
effect give @a[tag=!detached] speed infinite 0 true
effect give @a[tag=!detached] jump_boost infinite 2 true
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] resistance infinite 255 true
function switch:utils/set_dynamic_time

execute in switch:game run gamerule fallDamage false

## Téléportation des joueurs
function switch:utils/choose_map_for {id:"pitchout", maps:["pitchout_1","pitchout_halloween"]}
scoreboard players set #spawn_count switch.data 0
execute if data storage switch:main {map:"pitchout_1"} as @a[tag=!detached,sort=random] run function switch:modes/pitchout/map_1/tp_give
execute if data storage switch:main {map:"pitchout_halloween"} as @a[tag=!detached,sort=random] run function switch:modes/pitchout/map_halloween/tp_give
execute as @a[tag=!detached] run function switch:modes/pitchout/xp_bar

function switch:translations/modes_pitchout_start

scoreboard objectives add switch.temp.damages dummy
scoreboard objectives add switch.temp.cooldown dummy
scoreboard objectives add switch.temp.old_x dummy
scoreboard objectives add switch.temp.old_z dummy
scoreboard objectives add switch.temp.blocks_run dummy
scoreboard players set @a[tag=!detached] switch.temp.cooldown 120

scoreboard players set #pitchout_seconds switch.data -5
scoreboard players set #pitchout_ticks switch.data 0
scoreboard players set #process_end switch.data 0

data modify storage switch:temp pitchout set value []
execute as @a[tag=!detached] run function switch:modes/pitchout/advancements/setup_player

execute as @a[tag=!detached] store result score @s switch.temp.old_x run data get entity @s Pos[0]
execute as @a[tag=!detached] store result score @s switch.temp.old_z run data get entity @s Pos[2]

