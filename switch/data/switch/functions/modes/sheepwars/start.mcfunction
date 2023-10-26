
effect give @a hunger 5 255 true
effect give @a regeneration 5 255 true
effect give @a weakness 5 255 true
effect give @a blindness 5 255 true
effect give @a darkness 5 255 true
effect give @a jump_boost 5 250 true
effect give @a slowness 5 255 true
function switch:utils/set_dynamic_time

## Chargement de la map
function switch:choose_map_for/sheepwars
gamerule keepInventory true

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de SheepWars, tenez-vous prêt car vous avez 5 secondes !\n"}]
execute as @a at @s run playsound entity.player.levelup ambient @s

scoreboard players set #remaining_time switch.data 90500
scoreboard players set #sheepwars_seconds switch.data -5
scoreboard players set #sheepwars_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #blue_fire_arrows switch.data 0
scoreboard players set #blue_explosive_arrows switch.data 0
scoreboard players set #red_fire_arrows switch.data 0
scoreboard players set #red_explosive_arrows switch.data 0
scoreboard objectives setdisplay list switch.health

# Apocalypse
scoreboard players set #APOCALYPSE_GAME switch.data 0
execute if predicate switch:chance/0.05 run scoreboard players set #APOCALYPSE_GAME switch.data 1
execute if score #APOCALYPSE_GAME switch.data matches 1 run tellraw @a ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" PARTIE APOCALYPTIQUE (1 chance sur 20) !\n"}]
execute if score #APOCALYPSE_GAME switch.data matches 1 as @a at @s run playsound entity.wither.death ambient @s

# Choix des teams + give d'items
team add switch.temp.red
team add switch.temp.blue
team modify switch.temp.red color red
team modify switch.temp.blue color blue
team modify switch.temp.red friendlyFire true
team modify switch.temp.blue friendlyFire true
team modify switch.temp.red nametagVisibility hideForOtherTeams
team modify switch.temp.blue nametagVisibility hideForOtherTeams
scoreboard players set #next_role switch.data 0
execute as @a[sort=random] at @s run function switch:modes/sheepwars/team_and_give

# Load du sheepwars
function sheepwars:load

