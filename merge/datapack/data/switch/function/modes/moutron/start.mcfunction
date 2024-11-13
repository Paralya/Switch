
effect give @a[tag=!detached] weakness infinite 255 true
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] resistance infinite 255 true
effect give @a[tag=!detached] night_vision infinite 255 true
function switch:utils/set_dynamic_time

## Téléportation des joueurs
scoreboard players set #do_spreadplayers switch.data 1
function switch:utils/choose_map_for {id:"moutron", maps:["whity_lab","the_four_elements","arti_ancient_city"]}
execute if data storage switch:main {map:"whity_lab"} run function switch:modes/moutron/spread_players/whity_lab

gamerule fallDamage false

function switch:translations/modes_moutron_start

scoreboard objectives add switch.temp.moutron dummy
scoreboard objectives add switch.temp.color dummy
scoreboard objectives add switch.temp.kill dummy

scoreboard players set #moutron_seconds switch.data -10
scoreboard players set #moutron_ticks switch.data -100
scoreboard players set #process_end switch.data 0
scoreboard players set #life_time switch.data 20

scoreboard players set #next_model switch.data 0
execute as @a[tag=!detached] at @s run function switch:modes/moutron/summon_kart

