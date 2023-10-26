
scoreboard players add #snowball_painter_ticks switch.data 1

## Global tick
# XP bar update
function switch:modes/snowball_painter/xp_bar

# Give snowball in a random spot in inventory
execute if score #snowball_painter_seconds switch.data matches 0.. as @a[tag=!detached,nbt=!{Inventory:[{id:"minecraft:snowball"}]}] run function switch:modes/snowball_painter/give_snowball

# Make a marker ride snowballs that don't have one
execute as @e[type=snowball,tag=!switch.marker] at @s run function switch:modes/snowball_painter/ride_marker_on_snowball

# For each marker, check if they still have a vehicle
execute as @e[type=marker,tag=switch.marker,predicate=!switch:has_vehicle,sort=random] at @s run function switch:modes/snowball_painter/explode_marker


## Fin de partie
scoreboard players remove #remaining_time switch.data 1
execute if score #remaining_time switch.data matches ..0 run function switch:modes/snowball_painter/process_end

