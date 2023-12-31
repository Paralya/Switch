
# Death system
execute if score #bombardement_seconds switch.data matches ..-1 run tp @a[tag=!detached,gamemode=!spectator,predicate=switch:in_water] 121057 110 121064 180 -30
execute if score #bombardement_seconds switch.data matches 0.. as @a[tag=!detached,gamemode=!spectator,predicate=switch:in_water] at @s run function switch:modes/bombardement/death

# Ball tick
execute as @e[type=armor_stand,tag=switch.ball] at @s run function switch:modes/bombardement/ball_tick

# Fin de partie
scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[tag=!detached,gamemode=!spectator]
execute if score #remaining_players switch.data matches ..1 run function switch:modes/bombardement/process_end

