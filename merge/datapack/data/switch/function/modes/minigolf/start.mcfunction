
gamemode spectator @a[tag=!detached]
team join switch.no_pvp @a[tag=!detached]
team modify switch.no_pvp seeFriendlyInvisibles false
effect give @a[tag=!detached] resistance infinite 255 true
effect give @a[tag=!detached] saturation infinite 255 true
function switch:utils/set_dynamic_time

execute in switch:game run gamerule minecraft:fall_damage false
execute in switch:game run gamerule minecraft:fire_damage false
execute in switch:game run gamerule minecraft:drowning_damage false
execute in switch:game run gamerule minecraft:freeze_damage false

## Téléportation des joueurs
function switch:utils/choose_map_for {id:"minigolf", maps:["gg_grass_1","gg_grass_2","gg_grass_3","gg_snow_1","gg_snow_2","gg_ice_1","gg_temple","gg_volcano","gg_desert_1","gg_end_1","gg_chamber"]}


scoreboard players set #minigolf_seconds switch.data -10
scoreboard players set #minigolf_ticks switch.data 0
scoreboard players set #remaining_time switch.data 245
scoreboard players set #process_end switch.data 0
scoreboard objectives add switch.temp.respawn dummy

scoreboard players set #default_do_collision golf_ball.data 0

# Choose map
function switch:modes/minigolf/teleport_all

# Record
scoreboard players reset #new_record switch.data
execute unless data storage switch:records minigolf run data modify storage switch:records minigolf set value {}
data modify storage switch:records minigolf.current_map set from storage switch:main map
function switch:modes/minigolf/record_tellraw with storage switch:records minigolf
function switch:translations/modes_minigolf_start

