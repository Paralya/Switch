
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

	# /_force_start
	write_function(f"{path}/_force_start", f"""
function switch:engine/force_start_macro {{id:"{mode}"}}
""")

	# /death
	write_function(f"{path}/death", """
execute unless score #process_end switch.data matches 1 run tp @s 114057 119 114044
gamemode spectator @s[team=!switch.temp.gays]
effect clear @s
clear @s

effect give @s[team=switch.temp.gays] saturation infinite 255 true
""")

	# /detect_end
	write_function(f"{path}/detect_end", f"""
scoreboard players set #game_state switch.data 0
execute if entity @a[tag=!detached,gamemode=adventure,team=switch.temp.gays] unless entity @a[tag=!detached,gamemode=adventure,team=switch.temp.shooters] run scoreboard players set #game_state switch.data 1
execute if entity @a[tag=!detached,gamemode=adventure,team=switch.temp.shooters] unless entity @a[tag=!detached,gamemode=adventure,team=switch.temp.gays] run scoreboard players set #game_state switch.data 2
execute unless entity @a[tag=!detached,gamemode=adventure] run scoreboard players set #game_state switch.data 3
execute if score #gay_shooter_seconds switch.data matches 300.. run scoreboard players set #game_state switch.data 4

# 1 = que des gays
# 2 = que des shooters
# 3 = Plus personne
# 4 = Temps écoulé

# Cas de fin de partie
execute if score #game_state switch.data matches 1..4 run scoreboard players set #gay_shooter_seconds switch.data 100000

# Cas des vainqueurs
function {translations}/detect_end

execute if score #game_state switch.data matches 1 as @a[tag=!detached,gamemode=adventure,team=switch.temp.gays] at @s run function switch:engine/add_win
execute if score #game_state switch.data matches 2 as @a[tag=!detached,gamemode=adventure,team=switch.temp.shooters] at @s run function switch:engine/add_win
execute if score #game_state switch.data matches 4 as @a[tag=!detached,gamemode=adventure,team=switch.temp.shooters] at @s run function switch:engine/add_win

# Visuel de fin de partie
execute if score #gay_shooter_seconds switch.data matches 300.. as @a[tag=!detached] at @s run playsound item.totem.use ambient @s
""")

	# /gay_finished
	write_function(f"{path}/gay_finished", """
execute if data storage switch:main {map:"gay_shooter"} in switch:game run tp @s 114034 137 114017

clear @s
# loot give @s loot stardust:i/ultimate_sniper
# loot give @s loot stardust:i/ultimate_bullet_x32
give @s bow[enchantments={"power":123},unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]}]
give @s arrow 32

item replace entity @s weapon.offhand with shield
execute unless score #test_mode switch.data matches 1 run advancement grant @s only switch:visible/6
""")

	# /give_items
	write_function(f"{path}/give_items", """
effect give @s[team=switch.temp.gays] saturation infinite 255 true
effect give @s[team=switch.temp.gays] regeneration infinite 255 true
give @s[team=switch.temp.gays] splash_potion[potion_contents="minecraft:slow_falling"]
item replace entity @s[team=switch.temp.gays] armor.feet with leather_boots[unbreakable={},enchantments={"minecraft:feather_falling":10}]
item replace entity @s[team=switch.temp.shooters] hotbar.0 with bow[unbreakable={},enchantments={"minecraft:infinity":1,"minecraft:punch":1}]
item replace entity @s[team=switch.temp.shooters] hotbar.1 with arrow 42
""")

	# /joined
	write_function(f"{path}/joined", f"""
# Ici : dans tous les cas, tuer la personne qui join et la faire join les gays
team join switch.temp.gays @s
function {path}/death
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end switch.data 1

# Kill tout le monde
execute if score #process_end switch.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function {path}/death
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

# Obligatoire
execute if score #process_end switch.data matches 200 run function switch:engine/restart
""")

	# /roles
	write_function(f"{path}/roles", """
# Role selection (1/4 shooters)
scoreboard players add #next_player_id switch.data 1
scoreboard players add #next_role switch.data 1
execute if score #next_role switch.data matches 1 run tp @s 114034 124 114019 0 0
execute if score #next_role switch.data matches 1 run team join switch.temp.shooters @s
execute if score #next_role switch.data matches 2.. run tp @s 114057 119 114044 0 0
execute if score #next_role switch.data matches 2.. run team join switch.temp.gays @s
execute if score #next_role switch.data matches 4.. run scoreboard players set #next_role switch.data 0
""")

	# /second
	write_function(f"{path}/second", f"""
scoreboard players add #gay_shooter_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

function {path}/xp_bar
""")

	# /shot_player
	write_function(f"{path}/shot_player", """
advancement revoke @s only switch:gay_shooter/shot_player
execute if score #engine_state switch.data matches 3 if data storage switch:main {current_game:"gay_shooter"} run scoreboard players add @s switch.temp.shot_player 1
execute unless score #test_mode switch.data matches 1 if score #engine_state switch.data matches 3 if data storage switch:main {current_game:"gay_shooter"} if score @s switch.temp.shot_player matches 42.. run advancement grant @s only switch:visible/22
""")

	# /shot_taken
	write_function(f"{path}/shot_taken", """
advancement revoke @s only switch:gay_shooter/shot_taken
execute if score #engine_state switch.data matches 3 if data storage switch:main {current_game:"gay_shooter"} run scoreboard players add @s switch.temp.shots_taken 1
execute unless score #test_mode switch.data matches 1 if score #engine_state switch.data matches 3 if data storage switch:main {current_game:"gay_shooter"} if score @s switch.temp.shots_taken matches 10.. run advancement grant @s only switch:visible/69
""")

	# /start
	write_function(f"{path}/start", f"""
scoreboard players set @a[tag=!detached] switch.alive 1
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] slowness 5 255 true
function switch:utils/set_dynamic_time

## Placement de la map et des joueurs
scoreboard players set #dont_regenerate switch.data 1
function switch:utils/choose_map_for {{id:"gay_shooter", maps:["gay_shooter"]}}

function {translations}/start

scoreboard players set #remaining_time switch.data 310
scoreboard players set #gay_shooter_seconds switch.data -10
scoreboard players set #gay_shooter_ticks switch.data 0
scoreboard players set #process_end switch.data 0

scoreboard objectives add switch.temp.shot_player dummy {{"text":"Arrows hit","color":"yellow"}}
scoreboard objectives add switch.temp.shots_taken dummy
scoreboard objectives setdisplay sidebar switch.temp.shot_player
scoreboard objectives setdisplay list switch.health

# Choix des rôles + give d'items
team add switch.temp.gays {{"text":"[Guys]","color":"light_purple"}}
team add switch.temp.shooters {{"text":"[Shooters]","color":"gray"}}
team modify switch.temp.gays color light_purple
team modify switch.temp.shooters color gray
team modify switch.temp.gays friendlyFire false
team modify switch.temp.shooters friendlyFire false
team modify switch.temp.gays collisionRule never
team modify switch.temp.shooters collisionRule never
scoreboard players set #next_role switch.data 0
scoreboard players set #next_player_id switch.data 0
execute as @a[tag=!detached,sort=random] at @s run function {path}/roles
execute as @a[tag=!detached] at @s run function {path}/give_items
""")

	# /stop
	write_function(f"{path}/stop", """
team remove switch.temp.gays
team remove switch.temp.shooters

scoreboard objectives remove switch.temp.shot_player
scoreboard objectives remove switch.temp.shots_taken
""")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #gay_shooter_ticks switch.data 1

## Player management
function switch:utils/on_death_run_function {{function:"{path}/death"}}
execute in switch:game as @a[tag=!detached,gamemode=adventure,x=114011,y=142,z=114041,distance=..1] run function {path}/gay_finished

# Kill players in the void
execute unless score #test_mode switch.data matches 1 as @a[tag=!detached,team=switch.temp.gays,gamemode=adventure] at @s if entity @s[y=0,dy=-1000] if data entity @s Inventory[{{id:"minecraft:warped_fungus_on_a_stick"}}] run advancement grant @s only switch:visible/76
execute as @a[tag=!detached,gamemode=adventure] at @s if entity @s[y=0,dy=-1000] run kill @s

# Détection de fin de partie
execute if score #gay_shooter_seconds switch.data matches 1..300 run function {path}/detect_end
execute if score #gay_shooter_seconds switch.data matches 301.. run function {path}/process_end
""")

	# /xp_bar
	write_function(f"{path}/xp_bar", f"""
# 300 seconds = 100%
# 0 seconds = 0%
scoreboard players operation #points switch.data = #remaining_time switch.data
scoreboard players operation #points switch.data *= #1000000 switch.data
scoreboard players set #divide switch.data 300000
function switch:modes/_common/xp_bar/points

scoreboard players operation #levels switch.data = #remaining_time switch.data
function switch:modes/_common/xp_bar/levels

function {translations}/xp_bar
""")
