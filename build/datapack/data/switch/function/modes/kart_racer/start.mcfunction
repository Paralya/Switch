
#> switch:modes/kart_racer/start
#
# @within	switch:modes/kart_racer/calls/start
#			switch:modes/kart_racer/restart_game
#

scoreboard players set @a[tag=!detached] switch.alive 1

effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] regeneration infinite 255 true
effect give @a[tag=!detached] resistance infinite 255 true
execute as @a[tag=!detached] run attribute @s gravity base set 0
function switch:utils/set_dynamic_time

execute in switch:game run gamerule fallDamage false
execute in switch:game run gamerule fallDamage false

function switch:translations/modes_kart_racer_start

scoreboard players set #can_vote switch.data 1
scoreboard players set #remaining_time switch.data 310
scoreboard players set #kart_racer_seconds switch.data -10
scoreboard players set #kart_racer_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #detect_end switch.data 0

scoreboard objectives add switch.temp dummy
scoreboard objectives add switch.temp.old_speed dummy
scoreboard objectives add switch.temp.compteur dummy
scoreboard objectives add switch.temp.dx dummy
scoreboard objectives add switch.temp.dy dummy
scoreboard objectives add switch.temp.dz dummy
scoreboard objectives add switch.temp.id dummy
scoreboard objectives add switch.temp.vote_collisions dummy
scoreboard objectives add switch.temp.change_map dummy
scoreboard objectives add switch.temp.checkpoint dummy
scoreboard objectives add switch.temp.classement dummy
scoreboard objectives add switch.temp.pv_classement dummy
scoreboard objectives add switch.temp.pos_on_last_lap dummy
scoreboard objectives add switch.temp.sidebar dummy {"text":" Ranking ","color":"dark_purple"}
scoreboard objectives add switch.respawn_cp_id dummy
scoreboard objectives add switch.hard_respawn_cp_id dummy
scoreboard objectives add switch.checkpoint dummy
scoreboard objectives add switch.lap dummy
scoreboard objectives add switch.effects.last dummy
scoreboard objectives add switch.effects.timer dummy
scoreboard players set @a[tag=!detached] switch.respawn_cp_id -1
scoreboard players set @a[tag=!detached] switch.hard_respawn_cp_id -1
scoreboard players set @a[tag=!detached] switch.temp.checkpoint 0
scoreboard players set @a[tag=!detached] switch.checkpoint 0
scoreboard players set @a[tag=!detached] switch.lap 1
scoreboard objectives setdisplay sidebar switch.temp.sidebar

team add switch.temp.kart {"text":"[Kart]"}
team add switch.temp.1 {"text":"[1st]","color":"#FFE700"}
team add switch.temp.2 {"text":"[2nd]","color":"#C0C0C0"}
team add switch.temp.3 {"text":"[3rd]","color":"#CD7F32"}
team add switch.temp.4 {"text":"[4th]","color":"#696969"}
team add switch.temp.5 {"text":"[5th]","color":"#696969"}
team add switch.temp.6 {"text":"[6th]","color":"#696969"}
team add switch.temp.7 {"text":"[7th]","color":"#696969"}
team add switch.temp.8 {"text":"[8th]","color":"#696969"}
team add switch.temp.9 {"text":"[9th]","color":"#696969"}
team add switch.temp.10 {"text":"[10th]","color":"#696969"}
team add switch.temp.10+ {"text":"[10+th]","color":"#9200DF"}
team modify switch.temp.kart collisionRule never
team modify switch.temp.1 collisionRule never
team modify switch.temp.2 collisionRule never
team modify switch.temp.3 collisionRule never
team modify switch.temp.4 collisionRule never
team modify switch.temp.5 collisionRule never
team modify switch.temp.6 collisionRule never
team modify switch.temp.7 collisionRule never
team modify switch.temp.8 collisionRule never
team modify switch.temp.9 collisionRule never
team modify switch.temp.10 collisionRule never
team modify switch.temp.10+ collisionRule never
team modify switch.temp.1 suffix {"text":" [1st]","color":"#FFE700"}
team modify switch.temp.2 suffix {"text":" [2nd]","color":"#C0C0C0"}
team modify switch.temp.3 suffix {"text":" [3rd]","color":"#CD7F32"}
team modify switch.temp.4 suffix {"text":" [4th]","color":"#696969"}
team modify switch.temp.5 suffix {"text":" [5th]","color":"#696969"}
team modify switch.temp.6 suffix {"text":" [6th]","color":"#696969"}
team modify switch.temp.7 suffix {"text":" [7th]","color":"#696969"}
team modify switch.temp.8 suffix {"text":" [8th]","color":"#696969"}
team modify switch.temp.9 suffix {"text":" [9th]","color":"#696969"}
team modify switch.temp.10 suffix {"text":" [10th]","color":"#696969"}
team modify switch.temp.10+ suffix {"text":" [10+th]","color":"#9200DF"}

## Number of checkpoints and laps per map
scoreboard players set #total_laps switch.data 3
scoreboard players set #total_checkpoints switch.data 1

## Téléportation des joueurs + give d'items
scoreboard players set #dont_regenerate switch.data 1
function switch:utils/choose_map_for {id:"kart_racer", maps:["bowser_castle","snow_travel","mario_circuit","plains_routine","sakura_land","hills_land","airship_fortress","dk_mountain","clock_circuit"]}
schedule function switch:modes/kart_racer/give_items 1s
schedule function switch:modes/kart_racer/post_load 9s

