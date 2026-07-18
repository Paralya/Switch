
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ..common import write_modes_calls
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "layers_4_teams"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()


	# /detect_end
	write_function(f"{path}/detect_end", f"""
# On regarde l'état de la partie
scoreboard players set #game_state {ns}.data 0
execute if entity @a[tag=!detached,gamemode=!spectator,team={ns}.temp.red] unless entity @a[tag=!detached,gamemode=!spectator,team=!{ns}.temp.red] run scoreboard players set #game_state {ns}.data 1
execute if entity @a[tag=!detached,gamemode=!spectator,team={ns}.temp.blue] unless entity @a[tag=!detached,gamemode=!spectator,team=!{ns}.temp.blue] run scoreboard players set #game_state {ns}.data 2
execute if entity @a[tag=!detached,gamemode=!spectator,team={ns}.temp.green] unless entity @a[tag=!detached,gamemode=!spectator,team=!{ns}.temp.green] run scoreboard players set #game_state {ns}.data 3
execute if entity @a[tag=!detached,gamemode=!spectator,team={ns}.temp.yellow] unless entity @a[tag=!detached,gamemode=!spectator,team=!{ns}.temp.yellow] run scoreboard players set #game_state {ns}.data 4
execute unless entity @a[tag=!detached,gamemode=!spectator] run scoreboard players set #game_state {ns}.data 5

# 1 = Victoire Rouge
# 2 = Victoire Bleue
# 3 = Victoire Verte
# 4 = Victoire Jaune
# 5 = Plus personne

# Cas de fin de partie
execute if score #game_state {ns}.data matches 1..4 run scoreboard players set #remaining_time {ns}.data 0

# Cas des vainqueurs
function {translations}/detect_end

execute if score #game_state {ns}.data matches 1 as @a[tag=!detached,gamemode=!spectator,team={ns}.temp.red] at @s run function {ns}:engine/add_win
execute if score #game_state {ns}.data matches 2 as @a[tag=!detached,gamemode=!spectator,team={ns}.temp.blue] at @s run function {ns}:engine/add_win
execute if score #game_state {ns}.data matches 3 as @a[tag=!detached,gamemode=!spectator,team={ns}.temp.green] at @s run function {ns}:engine/add_win
execute if score #game_state {ns}.data matches 4 as @a[tag=!detached,gamemode=!spectator,team={ns}.temp.yellow] at @s run function {ns}:engine/add_win

# Visuel de fin de partie
execute if score #remaining_time {ns}.data matches 0 as @a[tag=!detached] at @s run playsound item.totem.use ambient @s
""")

	# /joined
	write_function(f"{path}/joined", f"""
execute if score #reconnect {ns}.data matches 0 run function {ns}:utils/classic_death
""")

	# /second
	write_function(f"{path}/second", f"""
# Timer
scoreboard players add #layers_4_teams_seconds {ns}.data 1
execute if score #remaining_time {ns}.data matches 1.. run scoreboard players remove #remaining_time {ns}.data 1

# Keep obsidian walls until 30s
execute if score #layers_4_teams_seconds {ns}.data matches ..29 run fill 74018 102 74001 74018 157 74061 minecraft:obsidian replace air
execute if score #layers_4_teams_seconds {ns}.data matches ..29 run fill 74001 102 74031 74035 157 74031 minecraft:obsidian replace air
execute if score #layers_4_teams_seconds {ns}.data matches 30 as @a[tag=!detached] at @s run playsound entity.wither.hurt ambient @s

# Affichage du temps restants
function {ns}:modes/_common/compute_mins_secs

# Glowing pour les joueurs isolés au bout de 5 minutes restantes
execute if score #mins {ns}.data matches ..4 as @a[tag=!detached,gamemode=survival] at @s unless entity @a[tag=!detached,gamemode=survival,distance=0.1..15] run effect give @s glowing 2 0 true

# Destruction des blocs de haut en bas à partir de 5 minutes restantes
execute if score #mins {ns}.data matches 5 if score #secs {ns}.data matches 0 run summon marker 0 160 0 {{Tags:["{ns}.layers_4_teams.marker"]}}
execute if score #mins {ns}.data matches ..4 at @e[tag={ns}.layers_4_teams.marker] run fill 74001 ~ 74001 74035 ~10 74061 air replace #realistic_explosion:equal_and_below_1200
execute if score #mins {ns}.data matches ..4 as @e[tag={ns}.layers_4_teams.marker] store result score #pos_y {ns}.data run data get entity @s Pos[1]
execute if score #mins {ns}.data matches ..4 if score #pos_y {ns}.data matches 109.. as @e[tag={ns}.layers_4_teams.marker] at @s run tp @s ~ ~-0.5 ~
execute if score #mins {ns}.data matches ..4 if score #pos_y {ns}.data matches ..108 run kill @e[tag={ns}.layers_4_teams.marker]

# Detect Xenophobe advancement
execute unless score #test_mode {ns}.data matches 1 as @a[tag=!detached] if score @s {ns}.temp.killed_red = #total {ns}.temp.killed_red run advancement grant @s only {ns}:visible/42
execute unless score #test_mode {ns}.data matches 1 as @a[tag=!detached] if score @s {ns}.temp.killed_blue = #total {ns}.temp.killed_blue run advancement grant @s only {ns}:visible/42
execute unless score #test_mode {ns}.data matches 1 as @a[tag=!detached] if score @s {ns}.temp.killed_green = #total {ns}.temp.killed_green run advancement grant @s only {ns}:visible/42
execute unless score #test_mode {ns}.data matches 1 as @a[tag=!detached] if score @s {ns}.temp.killed_yellow = #total {ns}.temp.killed_yellow run advancement grant @s only {ns}:visible/42

function {translations}/second
""")

	# /start
	write_function(f"{path}/start", f"""
effect give @a[tag=!detached] night_vision infinite 255 true
effect give @a[tag=!detached] saturation 15 255 true
effect give @a[tag=!detached] resistance 60 255 true
function {ns}:utils/set_dynamic_time

## Chargement de la map
function {ns}:utils/choose_map_for {{id:"layers_4_teams", maps:["layers_4_teams"]}}
function {ns}:translations/common/layers_start
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

scoreboard players set #remaining_time {ns}.data 610
scoreboard players set #layers_4_teams_seconds {ns}.data -1
scoreboard players set #layers_4_teams_ticks {ns}.data 0
scoreboard players set #process_end {ns}.data 0
scoreboard players set #cut_clean {ns}.data 1
scoreboard objectives add {ns}.temp.killed_red teamkill.red
scoreboard objectives add {ns}.temp.killed_blue teamkill.blue
scoreboard objectives add {ns}.temp.killed_green teamkill.green
scoreboard objectives add {ns}.temp.killed_yellow teamkill.yellow
scoreboard objectives setdisplay list {ns}.health

# Choix des teams + give d'items
team add {ns}.temp.red {{"text":"[Red]","color":"red"}}
team add {ns}.temp.blue {{"text":"[Blue]","color":"blue"}}
team add {ns}.temp.green {{"text":"[Green]","color":"green"}}
team add {ns}.temp.yellow {{"text":"[Yellow]","color":"yellow"}}
team modify {ns}.temp.red color red
team modify {ns}.temp.blue color blue
team modify {ns}.temp.green color green
team modify {ns}.temp.yellow color yellow
team modify {ns}.temp.red friendlyFire true
team modify {ns}.temp.blue friendlyFire true
team modify {ns}.temp.green friendlyFire true
team modify {ns}.temp.yellow friendlyFire true
team modify {ns}.temp.red nametagVisibility hideForOtherTeams
team modify {ns}.temp.blue nametagVisibility hideForOtherTeams
team modify {ns}.temp.green nametagVisibility hideForOtherTeams
team modify {ns}.temp.yellow nametagVisibility hideForOtherTeams
scoreboard players set #next_role {ns}.data 0
scoreboard players set #total {ns}.temp.killed_red 0
scoreboard players set #total {ns}.temp.killed_blue 0
scoreboard players set #total {ns}.temp.killed_green 0
scoreboard players set #total {ns}.temp.killed_yellow 0
execute as @a[tag=!detached,sort=random] at @s run function {path}/team_and_give
gamemode survival @a[tag=!detached]
""")

	# /stop
	write_function(f"{path}/stop", f"""
team remove {ns}.temp.red
team remove {ns}.temp.blue
team remove {ns}.temp.green
team remove {ns}.temp.yellow

scoreboard objectives remove {ns}.temp.killed_red
scoreboard objectives remove {ns}.temp.killed_blue
scoreboard objectives remove {ns}.temp.killed_green
scoreboard objectives remove {ns}.temp.killed_yellow
""")

	# /team_and_give
	write_function(f"{path}/team_and_give", f"""
# Team selection
scoreboard players add #next_role {ns}.data 1
execute if score #next_role {ns}.data matches 1 run team join {ns}.temp.red @s
execute if score #next_role {ns}.data matches 2 run team join {ns}.temp.blue @s
execute if score #next_role {ns}.data matches 3 run team join {ns}.temp.green @s
execute if score #next_role {ns}.data matches 4 run team join {ns}.temp.yellow @s
execute if score #next_role {ns}.data matches 1 run scoreboard players add #total {ns}.temp.killed_red 1
execute if score #next_role {ns}.data matches 2 run scoreboard players add #total {ns}.temp.killed_blue 1
execute if score #next_role {ns}.data matches 3 run scoreboard players add #total {ns}.temp.killed_green 1
execute if score #next_role {ns}.data matches 4 run scoreboard players add #total {ns}.temp.killed_yellow 1
execute if score #next_role {ns}.data matches 4 run scoreboard players set #next_role {ns}.data 0

# Teleport to team spawn
execute if data storage {ns}:main {{map:"layers_4_teams"}} if entity @s[team={ns}.temp.red] run tp @s 74027 158.69 74017 32.5 0
execute if data storage {ns}:main {{map:"layers_4_teams"}} if entity @s[team={ns}.temp.blue] run tp @s 74009 158.69 74015 -32.5 0
execute if data storage {ns}:main {{map:"layers_4_teams"}} if entity @s[team={ns}.temp.green] run tp @s 74027 158.69 74047 150.5 0
execute if data storage {ns}:main {{map:"layers_4_teams"}} if entity @s[team={ns}.temp.yellow] run tp @s 74009 158.69 74047 -150.5 0

# Starter kit
function {ns}:modes/_common/layers_starter_kit
""")

	# /tick
	write_function(f"{path}/tick", f"""
# Timer
scoreboard players add #layers_4_teams_ticks {ns}.data 1

# Détection des morts
function {ns}:utils/on_death_run_function {{function:"{ns}:utils/classic_death"}}

# Enchantement efficiency 5 sur les pioches
execute as @a[tag=!detached] run item modify entity @s weapon.mainhand {ns}:handheld/enchant_efficiency_5

## Détection de fin de partie
execute if score #layers_4_teams_seconds {ns}.data matches 1.. if score #remaining_time {ns}.data matches 1.. run function {path}/detect_end
execute if score #remaining_time {ns}.data matches ..0 run function {ns}:modes/_common/process_end/spectate_only
""")
