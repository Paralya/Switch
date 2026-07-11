
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ..common import write_modes_calls
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "gay_shooter"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()


	# /death
	write_function(f"{path}/death", f"""
execute unless score #process_end {ns}.data matches 1 run tp @s 114057 119 114044
gamemode spectator @s[team=!{ns}.temp.gays]
effect clear @s
clear @s

effect give @s[team={ns}.temp.gays] saturation infinite 255 true
""")

	# /detect_end
	write_function(f"{path}/detect_end", f"""
scoreboard players set #game_state {ns}.data 0
execute if entity @a[tag=!detached,gamemode=adventure,team={ns}.temp.gays] unless entity @a[tag=!detached,gamemode=adventure,team={ns}.temp.shooters] run scoreboard players set #game_state {ns}.data 1
execute if entity @a[tag=!detached,gamemode=adventure,team={ns}.temp.shooters] unless entity @a[tag=!detached,gamemode=adventure,team={ns}.temp.gays] run scoreboard players set #game_state {ns}.data 2
execute unless entity @a[tag=!detached,gamemode=adventure] run scoreboard players set #game_state {ns}.data 3
execute if score #gay_shooter_seconds {ns}.data matches 300.. run scoreboard players set #game_state {ns}.data 4

# 1 = que des gays
# 2 = que des shooters
# 3 = Plus personne
# 4 = Temps écoulé

# Cas de fin de partie
execute if score #game_state {ns}.data matches 1..4 run scoreboard players set #gay_shooter_seconds {ns}.data 100000

# Cas des vainqueurs
function {translations}/detect_end

execute if score #game_state {ns}.data matches 1 as @a[tag=!detached,gamemode=adventure,team={ns}.temp.gays] at @s run function {ns}:engine/add_win
execute if score #game_state {ns}.data matches 2 as @a[tag=!detached,gamemode=adventure,team={ns}.temp.shooters] at @s run function {ns}:engine/add_win
execute if score #game_state {ns}.data matches 4 as @a[tag=!detached,gamemode=adventure,team={ns}.temp.shooters] at @s run function {ns}:engine/add_win

# Visuel de fin de partie
execute if score #gay_shooter_seconds {ns}.data matches 300.. as @a[tag=!detached] at @s run playsound item.totem.use ambient @s
""")

	# /gay_finished
	write_function(f"{path}/gay_finished", f"""
execute if data storage {ns}:main {{map:"gay_shooter"}} in {ns}:game run tp @s 114034 137 114017

clear @s
# loot give @s loot stardust:i/ultimate_sniper
# loot give @s loot stardust:i/ultimate_bullet_x32
give @s bow[enchantments={{"power":123}},unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}}]
give @s arrow 32

item replace entity @s weapon.offhand with shield
execute unless score #test_mode {ns}.data matches 1 run advancement grant @s only {ns}:visible/6
""")

	# /give_items
	write_function(f"{path}/give_items", f"""
effect give @s[team={ns}.temp.gays] saturation infinite 255 true
effect give @s[team={ns}.temp.gays] regeneration infinite 255 true
give @s[team={ns}.temp.gays] splash_potion[potion_contents="minecraft:slow_falling"]
item replace entity @s[team={ns}.temp.gays] armor.feet with leather_boots[unbreakable={{}},enchantments={{"minecraft:feather_falling":10}}]
item replace entity @s[team={ns}.temp.shooters] hotbar.0 with bow[unbreakable={{}},enchantments={{"minecraft:infinity":1,"minecraft:punch":1}}]
item replace entity @s[team={ns}.temp.shooters] hotbar.1 with arrow 42
""")

	# /joined
	write_function(f"{path}/joined", f"""
# Ici : dans tous les cas, tuer la personne qui join et la faire join les gays
team join {ns}.temp.gays @s
function {path}/death
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end {ns}.data 1

# Kill tout le monde
execute if score #process_end {ns}.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {path}/death
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {ns}:player/trigger/rating/print_current_game

# Obligatoire
execute if score #process_end {ns}.data matches 200 run function {ns}:engine/restart
""")

	# /roles
	write_function(f"{path}/roles", f"""
# Role selection (1/4 shooters)
scoreboard players add #next_player_id {ns}.data 1
scoreboard players add #next_role {ns}.data 1
execute if score #next_role {ns}.data matches 1 run tp @s 114034 124 114019 0 0
execute if score #next_role {ns}.data matches 1 run team join {ns}.temp.shooters @s
execute if score #next_role {ns}.data matches 2.. run tp @s 114057 119 114044 0 0
execute if score #next_role {ns}.data matches 2.. run team join {ns}.temp.gays @s
execute if score #next_role {ns}.data matches 4.. run scoreboard players set #next_role {ns}.data 0
""")

	# /second
	write_function(f"{path}/second", f"""
scoreboard players add #gay_shooter_seconds {ns}.data 1
execute if score #remaining_time {ns}.data matches 1.. run scoreboard players remove #remaining_time {ns}.data 1

function {path}/xp_bar
""")

	# /shot_player
	write_function(f"{path}/shot_player", f"""
advancement revoke @s only {ns}:gay_shooter/shot_player
execute if score #engine_state {ns}.data matches 3 if data storage {ns}:main {{current_game:"gay_shooter"}} run scoreboard players add @s {ns}.temp.shot_player 1
execute unless score #test_mode {ns}.data matches 1 if score #engine_state {ns}.data matches 3 if data storage {ns}:main {{current_game:"gay_shooter"}} if score @s {ns}.temp.shot_player matches 42.. run advancement grant @s only {ns}:visible/22
""")

	# /shot_taken
	write_function(f"{path}/shot_taken", f"""
advancement revoke @s only {ns}:gay_shooter/shot_taken
execute if score #engine_state {ns}.data matches 3 if data storage {ns}:main {{current_game:"gay_shooter"}} run scoreboard players add @s {ns}.temp.shots_taken 1
execute unless score #test_mode {ns}.data matches 1 if score #engine_state {ns}.data matches 3 if data storage {ns}:main {{current_game:"gay_shooter"}} if score @s {ns}.temp.shots_taken matches 10.. run advancement grant @s only {ns}:visible/69
""")

	# /start
	write_function(f"{path}/start", f"""
scoreboard players set @a[tag=!detached] {ns}.alive 1
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] slowness 5 255 true
function {ns}:utils/set_dynamic_time

## Placement de la map et des joueurs
scoreboard players set #dont_regenerate {ns}.data 1
function {ns}:utils/choose_map_for {{id:"gay_shooter", maps:["gay_shooter"]}}

function {translations}/start

scoreboard players set #remaining_time {ns}.data 310
scoreboard players set #gay_shooter_seconds {ns}.data -10
scoreboard players set #gay_shooter_ticks {ns}.data 0
scoreboard players set #process_end {ns}.data 0

scoreboard objectives add {ns}.temp.shot_player dummy {{"text":"Arrows hit","color":"yellow"}}
scoreboard objectives add {ns}.temp.shots_taken dummy
scoreboard objectives setdisplay sidebar {ns}.temp.shot_player
scoreboard objectives setdisplay list {ns}.health

# Choix des rôles + give d'items
team add {ns}.temp.gays {{"text":"[Guys]","color":"light_purple"}}
team add {ns}.temp.shooters {{"text":"[Shooters]","color":"gray"}}
team modify {ns}.temp.gays color light_purple
team modify {ns}.temp.shooters color gray
team modify {ns}.temp.gays friendlyFire false
team modify {ns}.temp.shooters friendlyFire false
team modify {ns}.temp.gays collisionRule never
team modify {ns}.temp.shooters collisionRule never
function {ns}:modes/_common/assign_random_roles {{mode:"{ns}:modes/gay_shooter"}}
""")

	# /stop
	write_function(f"{path}/stop", f"""
team remove {ns}.temp.gays
team remove {ns}.temp.shooters

scoreboard objectives remove {ns}.temp.shot_player
scoreboard objectives remove {ns}.temp.shots_taken
""")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #gay_shooter_ticks {ns}.data 1

## Player management
function {ns}:utils/on_death_run_function {{function:"{path}/death"}}
execute in {ns}:game as @a[tag=!detached,gamemode=adventure,x=114011,y=142,z=114041,distance=..1] run function {path}/gay_finished

# Kill players in the void
execute unless score #test_mode {ns}.data matches 1 as @a[tag=!detached,team={ns}.temp.gays,gamemode=adventure] at @s if entity @s[y=105,dy=-1000] if data entity @s Inventory[{{id:"minecraft:bow"}}] run advancement grant @s only {ns}:visible/76
execute as @a[tag=!detached,gamemode=adventure] at @s if entity @s[y=105,dy=-1000] run kill @s

# Détection de fin de partie
execute if score #gay_shooter_seconds {ns}.data matches 1..300 run function {path}/detect_end
execute if score #gay_shooter_seconds {ns}.data matches 301.. run function {path}/process_end
""")

	# /xp_bar
	write_function(f"{path}/xp_bar", f"""
scoreboard players set #divide {ns}.data 300000
function {ns}:modes/_common/xp_bar/time {{points_score:"#remaining_time",levels_score:"#remaining_time"}}

function {translations}/xp_bar
""")
