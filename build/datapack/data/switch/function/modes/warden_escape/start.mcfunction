
#> switch:modes/warden_escape/start
#
# @within	switch:modes/warden_escape/calls/start
#

scoreboard players set @a[tag=!detached] switch.alive 1
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] regeneration 5 255 true
effect give @a[tag=!detached] weakness infinite 255 true
time set 18000

## Téléportation des joueurs
scoreboard players set #dont_regenerate switch.data 1
function switch:utils/choose_map_for {id:"warden_escape", maps:["warden_forest","cathedrale_liege","new_grounds","warden_escape_statue"]}

execute in switch:game run gamerule showDeathMessages false
execute in switch:game run gamerule naturalRegeneration false
execute in switch:game run gamerule keepInventory true

function switch:translations/modes_warden_escape_start

scoreboard players set #remaining_time switch.data 100
scoreboard players set #warden_escape_seconds switch.data -10
scoreboard players set #warden_escape_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard objectives add switch.temp.snowballs_shot minecraft.used:minecraft.snowball
execute as @a[tag=!detached] at @s run function switch:modes/warden_escape/give_items

