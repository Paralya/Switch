
# Change game state & gamemode spectator
scoreboard players set #build_battle_state switch.data 3
gamemode spectator @a[tag=!detached]

# Get rank for each player
scoreboard objectives add switch.temp.rank dummy
scoreboard players set @a[scores={switch.temp.id=0..}] switch.temp.rank 1
scoreboard players add @a[scores={switch.temp.id=0..}] switch.temp.points 0
execute as @a[scores={switch.temp.id=0..}] at @a[scores={switch.temp.id=0..}] if score @s switch.temp.points < @p switch.temp.points run scoreboard players add @s switch.temp.rank 1

# Show 1st, 2nd, 3rd, and own rank
scoreboard objectives setdisplay sidebar switch.temp.points
function switch:translations/modes_build_battle_rating_time_end_calculation

# Remove rank objective
execute as @a[scores={switch.temp.rank=1}] at @s run function switch:engine/add_win
scoreboard objectives remove switch.temp.rank

# Advancement
execute unless score #test_mode switch.data matches 1 run advancement grant @a[scores={switch.temp.points=50..}] only switch:visible/28

