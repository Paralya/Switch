
effect give @a[tag=!detached] hunger 5 255 true
effect give @a[tag=!detached] regeneration 5 255 true
effect give @a[tag=!detached] weakness 5 255 true
effect give @a[tag=!detached] slowness 5 255 true
function switch:utils/set_dynamic_time

## Chargement de la map
function switch:utils/choose_map_for {id:"sheepwars", maps:["sheepwars_dirigeables","survival_boat","sheepwars_bonbons","sheepwars_plateforme","sheepwars_ilots","sheepwars_colored_sheeps"]}
execute in switch:game run gamerule minecraft:keep_inventory true
execute in switch:game run gamerule minecraft:block_drops false

execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

# Default: 20 seconds delay between the give of sheeps (decrease every minute)
scoreboard players set #sheep_give_delay switch.data 20
scoreboard players set #remaining_time switch.data 910
scoreboard players set #sheepwars_seconds switch.data -12
scoreboard players set #sheepwars_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #blue_fire_arrows switch.data 0
scoreboard players set #blue_explosive_arrows switch.data 0
scoreboard players set #red_fire_arrows switch.data 0
scoreboard players set #red_explosive_arrows switch.data 0
scoreboard players reset * sheepwars.launched_count
scoreboard objectives add switch.temp.killed_sheep minecraft.killed:minecraft.sheep
scoreboard objectives setdisplay list switch.health

# Apocalypse
scoreboard players set #APOCALYPSE_GAME switch.data 0
execute if predicate switch:chance/0.05 run scoreboard players set #APOCALYPSE_GAME switch.data 1
function switch:translations/modes_sheepwars_start
execute if score #APOCALYPSE_GAME switch.data matches 1 as @a[tag=!detached] at @s run playsound entity.wither.death ambient @s

# Choix des teams + give d'items
team add switch.temp.red {"text":"[Red]","color":"red"}
team add switch.temp.blue {"text":"[Blue]","color":"blue"}
team modify switch.temp.red color red
team modify switch.temp.blue color blue
team modify switch.temp.red friendlyFire true
team modify switch.temp.blue friendlyFire true
team modify switch.temp.red nametagVisibility hideForOtherTeams
team modify switch.temp.blue nametagVisibility hideForOtherTeams
scoreboard players set #next_role switch.data 0
gamemode adventure @a[tag=!detached]
execute as @a[tag=!detached,sort=random] at @s run function switch:modes/sheepwars/team_and_give

