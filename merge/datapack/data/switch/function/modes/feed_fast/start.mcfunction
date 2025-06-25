
effect give @a[tag=!detached] resistance infinite 255 true
effect give @a[tag=!detached] regeneration infinite 255 true
difficulty hard
function switch:utils/set_dynamic_time

## Placement de la map et des joueurs + give d'items
scoreboard players set #dont_regenerate switch.data 1
scoreboard players set #do_spreadplayers switch.data 1
function switch:utils/choose_map_for {id:"feed_fast", maps:["mushroom_plains","friends_pvpbox_ice","friends_pvpbox_hills","friends_pvpbox_end","kart_racer_relai","nature_house"]}

execute in switch:game run gamerule showDeathMessages false
execute in switch:game run gamerule keepInventory true

function switch:translations/modes_feed_fast_start

scoreboard players set #remaining_time switch.data 50
scoreboard players set #feed_fast_seconds switch.data -5
scoreboard players set #feed_fast_ticks switch.data 0
scoreboard players set #process_end switch.data 0

scoreboard objectives add switch.temp.previous_food dummy
scoreboard objectives add switch.temp.points dummy {"text":" Points ","color":"red"}
scoreboard objectives setdisplay sidebar switch.temp.points

scoreboard players set @a[tag=!detached] switch.temp.previous_food 20

