
# TODO : tp les joueurs au début pour teams / conditions de team / only one winner

scoreboard players set @a[tag=!detached] switch.alive 3
effect give @a[tag=!detached] saturation infinite 255 true
function switch:utils/set_dynamic_time

gamerule fallDamage false
gamerule keepInventory true

# partie en équipe aléatoire
scoreboard players set #TEAM_FISH switch.data 0
execute if predicate switch:chance/0.33 run scoreboard players set #TEAM_FISH switch.data 1
execute if score #TEAM_FISH switch.data matches 1 run function switch:modes/fish_fight/teams_tp/setup
execute if score #TEAM_FISH switch.data matches 1 as @a[tag=!detached] run function switch:modes/fish_fight/teams_tp/teams

## Téléportation des joueurs
function switch:choose_map_for/fish_fight
execute if score #TEAM_FISH switch.data matches 0 as @a[tag=!detached] run function switch:maps/spread_one_player
execute if score #TEAM_FISH switch.data matches 1 run teleport @a[team=switch.temp.blue] 151026 116 151007
execute if score #TEAM_FISH switch.data matches 1 run teleport @a[team=switch.temp.red] 151026 116 151045
execute as @a[tag=!detached] run function switch:modes/fish_fight/xp_bar

tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Fish Fight, expulsez les autres !"}]

scoreboard objectives add switch.temp.damages dummy
scoreboard objectives add switch.temp.cooldown dummy
scoreboard objectives add switch.temp.old_x dummy
scoreboard objectives add switch.temp.old_z dummy
scoreboard objectives add switch.temp.blocks_run dummy
#création d'un score pour compter les axolotls tués par les joueurs
scoreboard objectives add switch.temp.axolotl_killed minecraft.killed:minecraft.axolotl
scoreboard players set @a[team=!detached] switch.temp.axolotl_killed 0

scoreboard players set @a[tag=!detached] switch.temp.cooldown 120

scoreboard players set #fish_fight_seconds switch.data 0
scoreboard players set #fish_fight_ticks switch.data 0
scoreboard players set #process_end switch.data 0

# gamemode survival
gamemode survival @a[tag=!detached]
# donner blindness et slownees pendant 5 secondes
effect give @a[tag=!detached] minecraft:blindness 5 2 true
effect give @a[tag=!detached] minecraft:slowness 5 2 true

