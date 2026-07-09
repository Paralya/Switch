
# Imports
from stewbeet import Mem, write_function

from ..common import write_modes_calls
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "layers_2_teams"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()


	# /detect_end
	write_function(f"{path}/detect_end", f"""
function {ns}:modes/_common/detect_2team_state

# Cas des vainqueurs
function {translations}/detect_end

execute if score #game_state {ns}.data matches 1 as @a[tag=!detached,gamemode=!spectator,team={ns}.temp.red] at @s run function {ns}:engine/add_win
execute if score #game_state {ns}.data matches 2 as @a[tag=!detached,gamemode=!spectator,team={ns}.temp.blue] at @s run function {ns}:engine/add_win

# Visuel de fin de partie
execute if score #remaining_time {ns}.data matches 1 as @a[tag=!detached] at @s run playsound item.totem.use ambient @s
""")

	# /joined
	write_function(f"{path}/joined", f"""
execute if score #reconnect {ns}.data matches 0 run function {ns}:utils/classic_death
""")

	# /second
	write_function(f"{path}/second", f"""
# Timer
scoreboard players add #layers_2_teams_seconds {ns}.data 1
execute if score #remaining_time {ns}.data matches 1.. run scoreboard players remove #remaining_time {ns}.data 1

# Keep obsidian walls until 30s
execute if score #layers_2_teams_seconds {ns}.data matches ..29 run fill 27018 103 27061 27018 158 27001 minecraft:obsidian replace air
execute if score #layers_2_teams_seconds {ns}.data matches 30 as @a[tag=!detached] at @s run playsound entity.wither.hurt ambient @s

# Affichage du temps restants
function {ns}:modes/_common/compute_mins_secs

# Glowing pour les joueurs isolés au bout de 5 minutes restantes
execute if score #mins {ns}.data matches ..4 as @a[tag=!detached,gamemode=survival] at @s unless entity @a[tag=!detached,gamemode=survival,distance=0.1..15] run effect give @s glowing 2 0 true

# Destruction des blocs de haut en bas à partir de 5 minutes restantes
execute if score #mins {ns}.data matches 5 if score #secs {ns}.data matches 0 run summon marker 0 160 0 {{Tags:["{ns}.layers_2_teams.marker"]}}
execute if score #mins {ns}.data matches ..4 at @e[tag={ns}.layers_2_teams.marker] run fill 27000 ~ 27000 27036 ~10 27062 air replace #realistic_explosion:equal_and_below_1200
execute if score #mins {ns}.data matches ..4 as @e[tag={ns}.layers_2_teams.marker] store result score #pos_y {ns}.data run data get entity @s Pos[1]
execute if score #mins {ns}.data matches ..4 if score #pos_y {ns}.data matches 109.. as @e[tag={ns}.layers_2_teams.marker] at @s run tp @s ~ ~-0.5 ~
execute if score #mins {ns}.data matches ..4 if score #pos_y {ns}.data matches ..108 run kill @e[tag={ns}.layers_2_teams.marker]

function {translations}/second
""")

	# /start
	write_function(f"{path}/start", f"""
effect give @a[tag=!detached] night_vision infinite 255 true
effect give @a[tag=!detached] saturation 15 255 true
effect give @a[tag=!detached] resistance 30 255 true
function {ns}:utils/set_dynamic_time

## Chargement de la map
function {ns}:utils/choose_map_for {{id:"layers_2_teams", maps:["layers_2_teams"]}}

function {ns}:translations/common/layers_start
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

scoreboard players set #remaining_time {ns}.data 610
scoreboard players set #layers_2_teams_seconds {ns}.data -10
scoreboard players set #layers_2_teams_ticks {ns}.data 0
scoreboard players set #process_end {ns}.data 0
scoreboard players set #cut_clean {ns}.data 1
scoreboard objectives setdisplay list {ns}.health

# Choix des teams + give d'items
function {ns}:modes/_common/setup_teams_red_blue
execute as @a[tag=!detached,sort=random] at @s run function {path}/team_and_give
gamemode survival @a[tag=!detached]
""")

	# /stop
	write_function(f"{path}/stop", f"""
team remove {ns}.temp.red
team remove {ns}.temp.blue
""")

	# /team_and_give
	write_function(f"{path}/team_and_give", f"""
# Team selection
scoreboard players add #next_role {ns}.data 1
execute if score #next_role {ns}.data matches 1 run team join {ns}.temp.red @s
execute if score #next_role {ns}.data matches 2 run team join {ns}.temp.blue @s
execute if score #next_role {ns}.data matches 2 run scoreboard players set #next_role {ns}.data 0

# Teleport to team spawn
execute if data storage {ns}:main {{map:"layers_2_teams"}} if entity @s[team={ns}.temp.red] run tp @s 27026 159 27031 90 0
execute if data storage {ns}:main {{map:"layers_2_teams"}} if entity @s[team={ns}.temp.blue] run tp @s 27009 159 27031 -90 0

# Starter kit
function {ns}:modes/_common/layers_starter_kit
""")

	# /tick
	write_function(f"{path}/tick", f"""
# Timer
scoreboard players add #layers_2_teams_ticks {ns}.data 1

# Détection des morts
function {ns}:utils/on_death_run_function {{function:"{ns}:utils/classic_death"}}

# Enchantement efficiency 5 sur les pioches
execute as @a[tag=!detached] run item modify entity @s weapon.mainhand {ns}:handheld/enchant_efficiency_5

## Détection de fin de partie
execute if score #layers_2_teams_seconds {ns}.data matches 1.. if score #remaining_time {ns}.data matches 1.. run function {path}/detect_end
execute if score #remaining_time {ns}.data matches ..0 run function {ns}:modes/_common/process_end/spectate_only
""")
