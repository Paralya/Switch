
#> switch:modes/sheepwars/tick
#
# @within	switch:modes/sheepwars/calls/tick
#

# Timer
scoreboard players add #sheepwars_ticks switch.data 1

# Arrow tick
execute as @e[type=arrow] run function switch:modes/sheepwars/tick_arrow

# Détection des morts
function switch:utils/on_death_run_function {function:"switch:modes/sheepwars/death"}
effect give @a[tag=!detached,predicate=switch:in_water,nbt=!{active_effects:[{id:"minecraft:wither"}]}] wither 2 2 true

# Kill items without custom data and give saturation
kill @e[type=item,nbt=!{Item:{components:{"minecraft:custom_data":{}}}}]
execute as @a[tag=!detached,nbt=!{foodLevel:20}] run effect give @s saturation 1 0 true

# Kill too low entities
execute as @e[type=!player,type=!lightning_bolt,predicate=switch:between/100_and_110] run function sheepwars:sheeps/final/disappear

# New sheeps detection
execute as @e[type=sheep,tag=!switch.checked] run function switch:modes/sheepwars/on_new_sheeps

# Night if intergalactique
scoreboard players add #sheepwars_night switch.data 0
execute if score #sheepwars_night switch.data matches 0 if entity @e[type=sheep,tag=sheepwars.intergalactique,tag=!sheepwars.intertag] run scoreboard players set #sheepwars_night switch.data 1
function switch:translations/modes_sheepwars_tick
execute if score #sheepwars_night switch.data matches 1 run tag @e[type=sheep,tag=sheepwars.intergalactique,tag=!sheepwars.intertag] add sheepwars.intertag
execute if score #sheepwars_night switch.data matches 1 as @a[tag=!detached] at @s run playsound entity.wither.spawn ambient @s
execute if score #sheepwars_night switch.data matches 1 run time set 18000
execute if score #sheepwars_night switch.data matches 1 run scoreboard players set #sheepwars_night switch.data 2
execute if score #sheepwars_night switch.data matches 2 unless entity @e[type=sheep,tag=sheepwars.intergalactique] run scoreboard players set #sheepwars_night switch.data 3
execute if score #sheepwars_night switch.data matches 3 run time set 6000
execute if score #sheepwars_night switch.data matches 3 run scoreboard players set #sheepwars_night switch.data 0

## Détection de fin de partie
execute if score #sheepwars_seconds switch.data matches 1.. if score #remaining_time switch.data matches 1.. run function switch:modes/sheepwars/detect_end
execute if score #remaining_time switch.data matches ..0 run function switch:modes/sheepwars/process_end

