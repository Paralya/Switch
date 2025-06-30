
#> switch:modes/bombardement/tick
#
# @within	switch:modes/bombardement/calls/tick
#

# Death system
execute if score #bombardement_seconds switch.data matches ..-1 in switch:game run tp @a[tag=!detached,gamemode=!spectator,predicate=switch:in_water] 121057 110 121064 180 -30
execute if score #bombardement_seconds switch.data matches 42.. unless score #test_mode switch.data matches 1 run advancement grant @a[tag=!detached,gamemode=!spectator,predicate=switch:in_water] only switch:visible/75
execute if score #bombardement_seconds switch.data matches 0.. as @a[tag=!detached,gamemode=!spectator,predicate=switch:in_water] at @s run function switch:modes/bombardement/death
function switch:utils/on_death_run_function {function:"switch:modes/bombardement/death"}

# Ball tick
execute as @e[type=armor_stand,tag=switch.ball] at @s run function switch:modes/bombardement/ball_tick

# End game
scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[tag=!detached,gamemode=!spectator]
execute if score #bombardement_seconds switch.data matches 1.. if score #remaining_players switch.data matches ..1 run function switch:modes/bombardement/process_end

