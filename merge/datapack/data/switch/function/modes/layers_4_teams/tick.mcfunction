
# Timer
scoreboard players add #layers_4_teams_ticks switch.data 1

# Détection des morts
function switch:utils/on_death_run_function {function:"switch:modes/layers_4_teams/death"}

# Enchantement efficiency 5 sur les pioches
execute as @a[tag=!detached] run item modify entity @s weapon.mainhand switch:handheld/enchant_efficiency_5

## Détection de fin de partie
execute if score #layers_4_teams_seconds switch.data matches 1.. if score #remaining_time switch.data matches 1.. run function switch:modes/layers_4_teams/detect_end
execute if score #remaining_time switch.data matches ..0 run function switch:modes/layers_4_teams/process_end

