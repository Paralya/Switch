
gamemode survival @a[tag=!detached]
effect give @a[tag=!detached] blindness 5 255 true
effect give @a[tag=!detached] weakness 5 255 true
effect give @a[tag=!detached] saturation 5 255 true
effect give @a[tag=!detached] resistance 5 255 true
function switch:utils/set_dynamic_time

## Téléportation des joueurs
scoreboard players set #do_spreadplayers switch.data 1
function switch:utils/choose_map_for {id:"thunder_spear", maps:["adraik_big_ball","vilarles_castillo","zonweeb_highschool","stardust_pvp_zone","sudoku_craft","smithed_summit_2024"]}
execute as @a[tag=!detached] run function switch:modes/thunder_spear/give_and_teleport

execute in switch:game run gamerule minecraft:keep_inventory true
execute in switch:game run gamerule minecraft:fall_damage false

function switch:translations/modes_thunder_spear_start

scoreboard players set #thunder_spear_seconds switch.data -10
scoreboard players set #thunder_spear_ticks switch.data 0
scoreboard players set #remaining_time switch.data 160
scoreboard players set #process_end switch.data 0
scoreboard objectives add switch.temp.reload dummy
scoreboard objectives add switch.temp.kills playerKillCount {"text":"Killed players","color":"red"}
scoreboard objectives setdisplay sidebar switch.temp.kills
scoreboard objectives setdisplay list switch.health
scoreboard players set @a[tag=!detached] switch.temp.kills 0

