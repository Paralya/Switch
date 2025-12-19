
team join switch.no_pvp @a[tag=!detached]
scoreboard players set @a[tag=!detached] switch.alive 1
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] regeneration 5 255 true
time set 18000

## Téléportation des joueurs
scoreboard players set #dont_regenerate switch.data 1
scoreboard players set #do_spreadplayers switch.data 1
function switch:utils/choose_map_for {id:"warden_escape", maps:["warden_forest","cathedrale_liege","new_grounds","warden_escape_statue"]}
execute if data storage switch:main {map:"cathedrale_liege"} run tp @a[tag=!detached] 26075 120 26056
execute if data storage switch:main {map:"new_grounds"} run tp @a[tag=!detached] 48047 113 48047
execute if data storage switch:main {map:"warden_escape_statue"} run tp @a[tag=!detached] 69056.0 136 69050.0

execute in switch:game run gamerule minecraft:show_death_messages false
execute in switch:game run gamerule minecraft:natural_health_regeneration false
execute in switch:game run gamerule minecraft:keep_inventory true

function switch:translations/modes_warden_escape_start

team add switch.temp.mobs
scoreboard players set #remaining_time switch.data 100
scoreboard players set #warden_escape_seconds switch.data -15
scoreboard players set #warden_escape_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard objectives add switch.temp.snowballs_shot minecraft.used:minecraft.snowball
execute as @a[tag=!detached] at @s run function switch:modes/warden_escape/give_items

