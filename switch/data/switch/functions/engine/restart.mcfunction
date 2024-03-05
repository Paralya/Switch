
# For each player, update their stats storage, then sort player stats arrays
execute as @a run function switch:player/update_stats_storage/main
function switch:stats/sort_player_stats

# Stop the engine and launch stop signal
execute in overworld run function switch:engine/stop

# Check if enough players
execute store result score #nb_attached switch.data if entity @a[tag=!detached]
execute unless score #nb_attached switch.data >= #min_required switch.data run tellraw @a[tag=!detached] [{"text":"\n\n\nPas assez de joueurs sont attachés pour lancer le moteur !","color":"red"},{"text":"\nConsidérez de vous détacher vers le lobby Switch avec '/detach' ou bien faire venir au minimum ","color":"gray"},{"score":{"name":"#min_required","objective":"switch.data"}},{"text":" joueurs !","color":"gray"}]

# Start the engine and launch start signal
execute in overworld run function switch:engine/start

