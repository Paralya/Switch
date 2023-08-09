
## Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #build_battle_ticks switch.data 1

## Global tick
# XP bar update
function switch:modes/build_battle/xp_bar

# Give snowball every 4 ticks
execute if score #build_battle_seconds switch.data matches 0.. run scoreboard players operation #build_battle_ticks switch.data %= #4 switch.data
execute if score #build_battle_ticks switch.data matches 0 run clear @a snowball
execute if score #build_battle_ticks switch.data matches 0 run give @a snowball

# Make a marker ride snowballs that don't have one
execute as @e[type=snowball,tag=!switch.marker] at @s run function switch:modes/build_battle/ride_marker_on_snowball

# For each marker, check if they still have a vehicle
execute as @e[type=marker,tag=switch.marker,predicate=!switch:has_vehicle,sort=random] at @s run function switch:modes/build_battle/explode_marker


## Fin de partie
scoreboard players remove #remaining_time switch.data 1
execute if score #remaining_time switch.data matches ..0 run function switch:modes/build_battle/process_end

