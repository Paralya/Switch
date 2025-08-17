
## Death system
# At each shopping kart, summon a new marker
execute if score #moutron_seconds switch.data matches 0.. as @e[tag=shopping_kart.kart] at @s positioned ~ ~.5 ~ run function switch:modes/moutron/summon_marker

# For each marker, increase their score, place a block and remove it after "life_time" ticks
execute as @e[type=marker,tag=switch.moutron_marker] at @s run function switch:modes/moutron/marker_tick

# Force riding the kart
execute as @a[tag=!detached,gamemode=adventure] at @s run ride @s mount @n[tag=shopping_kart.kart,predicate=!switch:has_player_passenger]

# If a kart is below 300 for engine, kill it and the player
execute if score #moutron_seconds switch.data matches 0.. as @e[tag=shopping_kart.kart,scores={shopping_kart.engine=..300}] at @s run function switch:modes/moutron/kill_kart

# Durée des trainées
scoreboard players operation #temp switch.data = #life_time switch.data
scoreboard players operation #temp switch.data /= #20 switch.data
function switch:translations/modes_moutron_tick
execute unless score #test_mode switch.data matches 1 if score #temp switch.data matches 15.. run advancement grant @a[tag=!detached,gamemode=adventure] only switch:visible/38

# Unknown death
function switch:utils/on_death_run_function {function:"switch:modes/moutron/death"}

## End game
scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[tag=!detached,gamemode=!spectator]
execute if score #moutron_seconds switch.data matches 1.. if score #remaining_players switch.data matches ..1 run function switch:modes/moutron/process_end
execute if score #moutron_seconds switch.data matches 600.. run function switch:modes/moutron/process_end

