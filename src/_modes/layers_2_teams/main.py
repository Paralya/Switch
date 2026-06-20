
# Imports
from stewbeet import Mem, write_function
from ..common import write_classic_death, write_modes_calls
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "layers_2_teams"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()


	# /death
	write_classic_death(f"{path}/death")

	# /detect_end
	write_function(f"{path}/detect_end", f"""
# On regarde l'état de la partie
scoreboard players set #game_state switch.data 0
execute if entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.red] unless entity @a[tag=!detached,gamemode=!spectator,team=!switch.temp.red] run scoreboard players add #game_state switch.data 1
execute if entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.blue] unless entity @a[tag=!detached,gamemode=!spectator,team=!switch.temp.blue] run scoreboard players add #game_state switch.data 2
execute unless entity @a[tag=!detached,gamemode=!spectator] run scoreboard players add #game_state switch.data 3

# 1 = Victoire Rouge
# 2 = Victoire Bleue
# 3 = Plus personne

# Cas de fin de partie
execute if score #game_state switch.data matches 1..3 run scoreboard players set #remaining_time switch.data 0

# Cas des vainqueurs
function {translations}/detect_end

execute if score #game_state switch.data matches 1 as @a[tag=!detached,gamemode=!spectator,team=switch.temp.red] at @s run function switch:engine/add_win
execute if score #game_state switch.data matches 2 as @a[tag=!detached,gamemode=!spectator,team=switch.temp.blue] at @s run function switch:engine/add_win

# Visuel de fin de partie
execute if score #remaining_time switch.data matches 1 as @a[tag=!detached] at @s run playsound item.totem.use ambient @s
""")

	# /joined
	write_function(f"{path}/joined", f"""
execute if score #reconnect switch.data matches 0 run function {path}/death
""")

	# /process_end
	write_function(f"{path}/process_end", """
# Mise en spectateur
scoreboard players add #process_end switch.data 1
execute if score #process_end switch.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

# Obligatoire
execute if score #process_end switch.data matches 200 run function switch:engine/restart
""")

	# /second
	write_function(f"{path}/second", f"""
# Timer
scoreboard players add #layers_2_teams_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

# Keep obsidian walls until 30s
execute if score #layers_2_teams_seconds switch.data matches ..29 run fill 27018 103 27061 27018 158 27001 minecraft:obsidian replace air
execute if score #layers_2_teams_seconds switch.data matches 30 as @a[tag=!detached] at @s run playsound entity.wither.hurt ambient @s

# Affichage du temps restants
scoreboard players operation #mins switch.data = #remaining_time switch.data
scoreboard players operation #mins switch.data /= #60 switch.data
scoreboard players operation #secs switch.data = #remaining_time switch.data
scoreboard players operation #secs switch.data %= #60 switch.data

# Glowing pour les joueurs isolés au bout de 5 minutes restantes
execute if score #mins switch.data matches ..4 as @a[tag=!detached,gamemode=survival] at @s unless entity @a[tag=!detached,gamemode=survival,distance=0.1..15] run effect give @s glowing 2 0 true

# Destruction des blocs de haut en bas à partir de 5 minutes restantes
execute if score #mins switch.data matches 5 if score #secs switch.data matches 0 run summon marker 0 160 0 {{Tags:["switch.layers_2_teams.marker"]}}
execute if score #mins switch.data matches ..4 at @e[tag=switch.layers_2_teams.marker] run fill 27000 ~ 27000 27036 ~10 27062 air replace #realistic_explosion:equal_and_below_1200
execute if score #mins switch.data matches ..4 as @e[tag=switch.layers_2_teams.marker] store result score #pos_y switch.data run data get entity @s Pos[1]
execute if score #mins switch.data matches ..4 if score #pos_y switch.data matches 109.. as @e[tag=switch.layers_2_teams.marker] at @s run tp @s ~ ~-0.5 ~
execute if score #mins switch.data matches ..4 if score #pos_y switch.data matches ..108 run kill @e[tag=switch.layers_2_teams.marker]

function {translations}/second
""")

	# /start
	write_function(f"{path}/start", f"""
effect give @a[tag=!detached] night_vision infinite 255 true
effect give @a[tag=!detached] saturation 15 255 true
effect give @a[tag=!detached] resistance 30 255 true
function switch:utils/set_dynamic_time

## Chargement de la map
function switch:utils/choose_map_for {{id:"layers_2_teams", maps:["layers_2_teams"]}}

function switch:translations/common/layers_start
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

scoreboard players set #remaining_time switch.data 610
scoreboard players set #layers_2_teams_seconds switch.data -10
scoreboard players set #layers_2_teams_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #cut_clean switch.data 1
scoreboard objectives setdisplay list switch.health

# Choix des teams + give d'items
team add switch.temp.red {{"text":"[Red]","color":"red"}}
team add switch.temp.blue {{"text":"[Blue]","color":"blue"}}
team modify switch.temp.red color red
team modify switch.temp.blue color blue
team modify switch.temp.red friendlyFire true
team modify switch.temp.blue friendlyFire true
team modify switch.temp.red nametagVisibility hideForOtherTeams
team modify switch.temp.blue nametagVisibility hideForOtherTeams
scoreboard players set #next_role switch.data 0
execute as @a[tag=!detached,sort=random] at @s run function {path}/team_and_give
gamemode survival @a[tag=!detached]
""")

	# /stop
	write_function(f"{path}/stop", """
team remove switch.temp.red
team remove switch.temp.blue
""")

	# /team_and_give
	write_function(f"{path}/team_and_give", """
# Team selection
scoreboard players add #next_role switch.data 1
execute if score #next_role switch.data matches 1 run team join switch.temp.red @s
execute if score #next_role switch.data matches 2 run team join switch.temp.blue @s
execute if score #next_role switch.data matches 2 run scoreboard players set #next_role switch.data 0

# Teleport to team spawn
execute if data storage switch:main {map:"layers_2_teams"} if entity @s[team=switch.temp.red] run tp @s 27026 159 27031 90 0
execute if data storage switch:main {map:"layers_2_teams"} if entity @s[team=switch.temp.blue] run tp @s 27009 159 27031 -90 0

# Starter kit
attribute @s attack_speed base set 2048
give @s stone_pickaxe
give @s stone_axe
give @s netherite_upgrade_smithing_template 5
give @s apple 12
give @s tnt 4
give @s flint_and_steel 1
""")

	# /tick
	write_function(f"{path}/tick", f"""
# Timer
scoreboard players add #layers_2_teams_ticks switch.data 1

# Détection des morts
function switch:utils/on_death_run_function {{function:"{path}/death"}}

# Enchantement efficiency 5 sur les pioches
execute as @a[tag=!detached] run item modify entity @s weapon.mainhand switch:handheld/enchant_efficiency_5

## Détection de fin de partie
execute if score #layers_2_teams_seconds switch.data matches 1.. if score #remaining_time switch.data matches 1.. run function {path}/detect_end
execute if score #remaining_time switch.data matches ..0 run function {path}/process_end
""")
