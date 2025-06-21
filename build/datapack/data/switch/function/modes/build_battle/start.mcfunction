
#> switch:modes/build_battle/start
#
# @within	switch:modes/build_battle/calls/start
#

effect give @a[tag=!detached] saturation infinite 255 true
function switch:utils/set_dynamic_time
gamerule commandModificationBlockLimit 262144

## Téléportation des joueurs
function switch:utils/choose_map_for {id:"build_battle", maps:["build_battle"]}

scoreboard objectives add switch.temp.id dummy
scoreboard objectives add switch.temp.theme_vote trigger
scoreboard objectives add switch.temp.rating_vote dummy
scoreboard objectives add switch.temp.points dummy {"text":" Points ","color":"yellow"}
scoreboard objectives add switch.temp.to_rate dummy

scoreboard players set #build_battle_state switch.data 0
scoreboard players set #build_battle_seconds switch.data -20
scoreboard players set #build_battle_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #vote_theme_1 switch.data 0
scoreboard players set #vote_theme_2 switch.data 0
scoreboard players set #vote_theme_3 switch.data 0
scoreboard players set #vote_theme_4 switch.data 0
scoreboard players set #vote_theme_5 switch.data 0
scoreboard players set @a[tag=!detached] switch.temp.id -1

execute unless score #build_battle_save_x switch.data matches ..-76 run scoreboard players set #build_battle_save_x switch.data -76
execute unless score #build_battle_save_z switch.data matches 0.. run scoreboard players set #build_battle_save_z switch.data 0

# Téléportation des joueurs dans leur cage
function switch:modes/build_battle/preparation/main
function switch:translations/modes_build_battle_start

