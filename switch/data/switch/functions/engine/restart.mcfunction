
# For each player, update their stats storage, then sort player stats arrays
execute as @a run function switch:player/update_stats_storage/main
function switch:stats/sort_player_stats

# Stop the engine and launch stop signal
execute in overworld run function switch:engine/stop

# Check if enough players
execute store result score #nb_attached switch.data if entity @a[tag=!detached]
function switch:translations/engine_restart

# Start the engine and launch start signal
execute in overworld run function switch:engine/start

