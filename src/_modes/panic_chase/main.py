
# Imports
from stewbeet import Mem, write_function
from ..common import write_classic_death, write_modes_calls, write_no_drop
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "panic_chase"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()


	# /death
	write_classic_death(f"{path}/death")

	# /detect_end
	write_function(f"{path}/detect_end", f"""
scoreboard players set #game_state switch.data 0
execute if entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.hunter] unless entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.mouse] run scoreboard players set #game_state switch.data 1
execute if entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.mouse] unless entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.hunter] run scoreboard players set #game_state switch.data 2
execute unless entity @a[tag=!detached,gamemode=!spectator] run scoreboard players set #game_state switch.data 3

# 1 = que des chasseurs
# 2 = que des souris
# 3 = Plus personne

# Cas de fin de partie
execute if score #game_state switch.data matches 1..3 run scoreboard players set #remaining_time switch.data -1

# Cas des vainqueurs
function {translations}/detect_end

# Points
execute if score #remaining_time switch.data matches 0 if score #game_state switch.data matches 0 as @a[tag=!detached,gamemode=!spectator,team=switch.temp.mouse] at @s run function switch:engine/add_win
execute if score #game_state switch.data matches 1 as @a[tag=!detached,gamemode=!spectator,team=switch.temp.hunter] at @s run function switch:engine/add_win
execute if score #game_state switch.data matches 2 as @a[tag=!detached,gamemode=!spectator,team=switch.temp.mouse] at @s run function switch:engine/add_win

# Advancement
execute if score #remaining_time switch.data matches 0 if score #game_state switch.data matches 0 unless score #test_mode switch.data matches 1 run advancement grant @a[tag=!detached,gamemode=!spectator,team=switch.temp.mouse,scores={{switch.health=..6}}] only switch:visible/62

# Visuel de fin de partie
execute if score #remaining_time switch.data matches ..0 as @a[tag=!detached] at @s run playsound item.totem.use ambient @s
execute if score #remaining_time switch.data matches 0 run scoreboard players set #remaining_time switch.data -1
""")

	# /give_items
	write_function(f"{path}/give_items", """
# Item give depending on random
execute store result score #random switch.data run random value 1..6
execute if score #random switch.data matches 1 run item replace entity @s[team=switch.temp.hunter] hotbar.0 with iron_sword[item_model="switch:emerald_sword",unbreakable={},attribute_modifiers=[{type:"movement_speed",slot:"mainhand",id:"switch.movement_speed",amount:0.05,operation:"add_multiplied_base"},{type:"attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:6,operation:"add_value"}]]
execute if score #random switch.data matches 2 run item replace entity @s[team=switch.temp.hunter] hotbar.0 with iron_sword[item_model="switch:obsidian_sword",unbreakable={},attribute_modifiers=[{type:"movement_speed",slot:"mainhand",id:"switch.movement_speed",amount:0.05,operation:"add_multiplied_base"},{type:"attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:6,operation:"add_value"}]]
execute if score #random switch.data matches 3 run item replace entity @s[team=switch.temp.hunter] hotbar.0 with iron_sword[item_model="switch:topaz_sword",unbreakable={},attribute_modifiers=[{type:"movement_speed",slot:"mainhand",id:"switch.movement_speed",amount:0.05,operation:"add_multiplied_base"},{type:"attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:6,operation:"add_value"}]]
execute if score #random switch.data matches 4 run item replace entity @s[team=switch.temp.hunter] hotbar.0 with iron_sword[item_model="switch:ruby_sword",unbreakable={},attribute_modifiers=[{type:"movement_speed",slot:"mainhand",id:"switch.movement_speed",amount:0.05,operation:"add_multiplied_base"},{type:"attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:6,operation:"add_value"}]]
execute if score #random switch.data matches 5 run item replace entity @s[team=switch.temp.hunter] hotbar.0 with iron_sword[item_model="switch:sapphire_sword",unbreakable={},attribute_modifiers=[{type:"movement_speed",slot:"mainhand",id:"switch.movement_speed",amount:0.05,operation:"add_multiplied_base"},{type:"attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:6,operation:"add_value"}]]
execute if score #random switch.data matches 6 run item replace entity @s[team=switch.temp.hunter] hotbar.0 with iron_sword[item_model="switch:adamantium_sword",unbreakable={},attribute_modifiers=[{type:"movement_speed",slot:"mainhand",id:"switch.movement_speed",amount:0.05,operation:"add_multiplied_base"},{type:"attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:6,operation:"add_value"}]]

# Effect gives
effect give @s[team=switch.temp.hunter] blindness infinite 0 true
effect give @s[team=switch.temp.hunter] darkness infinite 0 true
effect give @s[team=switch.temp.mouse] weakness infinite 255 true
""")

	# /joined
	write_function(f"{path}/joined", f"""
# Ici : dans tous les cas, tuer la personne qui join
function {path}/death
""")

	# /no_drop
	write_no_drop(f"{path}/no_drop")

	# /process_end
	write_function(f"{path}/process_end", """
scoreboard players add #process_end switch.data 1

# Kill tout le monde
execute if score #process_end switch.data matches 1 as @a[tag=!detached,sort=random] run function switch:modes/panic_chase/death/player
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

# Obligatoire
execute if score #process_end switch.data matches 200 run function switch:engine/restart
""")

	# /roles
	write_function(f"{path}/roles", """
## Role selection (1/6 chasseurs)
scoreboard players add #next_player_id switch.data 1
scoreboard players add #next_role switch.data 1
execute if score #next_role switch.data matches 1 run team join switch.temp.hunter @s
execute if score #next_role switch.data matches 2.. run team join switch.temp.mouse @s

# Hunter tp
execute if score #next_role switch.data matches 1 if data storage switch:main {map:"arti_box"} run tp @s 119024.0 106 119023
execute if score #next_role switch.data matches 1 if data storage switch:main {map:"nether_storm"} run tp @s 122034 120 122037
execute if score #next_role switch.data matches 1 if data storage switch:main {map:"yeti_in_panic"} run tp @s 158003 112 158004

# Mouse tp
execute if score #next_role switch.data matches 2..3 if data storage switch:main {map:"arti_box"} run tp @s 119024.0 106 119004.0 0 0
execute if score #next_role switch.data matches 4..6 if data storage switch:main {map:"arti_box"} run tp @s 119024.0 106 119044.0 180 0
execute if score #next_role switch.data matches 2 if data storage switch:main {map:"nether_storm"} run tp @s 122023 120 122012 -45 0
execute if score #next_role switch.data matches 3 if data storage switch:main {map:"nether_storm"} run tp @s 122063 120 122035 90 0
execute if score #next_role switch.data matches 4 if data storage switch:main {map:"nether_storm"} run tp @s 122007 120 122032 -90 0
execute if score #next_role switch.data matches 5.. if data storage switch:main {map:"nether_storm"} run tp @s 122039.0 123 122066.0 180 0
execute if score #next_role switch.data matches 2.. if data storage switch:main {map:"yeti_in_panic"} run tp @s 158034 114 158027 0 65

# Reset
execute if score #next_role switch.data matches 6.. run scoreboard players set #next_role switch.data 0
""")

	# /second
	write_function(f"{path}/second", f"""
# Timer
scoreboard players add #panic_chase_seconds switch.data 1
execute if score #remaining_time switch.data matches 0.. run scoreboard players remove #remaining_time switch.data 1
function {path}/xp_bar

# Release the hunters
execute if score #panic_chase_seconds switch.data matches 0 as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s
execute if score #panic_chase_seconds switch.data matches 0 run effect clear @a[team=switch.temp.hunter] darkness
execute if score #panic_chase_seconds switch.data matches 0 run effect clear @a[team=switch.temp.hunter] blindness
execute if score #panic_chase_seconds switch.data matches 0 if data storage switch:main {{map:"arti_box"}} run fill 119021 106 119025 119026 104 119021 air replace tinted_glass
execute if score #panic_chase_seconds switch.data matches 0 if data storage switch:main {{map:"nether_storm"}} run fill 122033 119 122036 122035 120 122038 air replace #switch:moutron/glass
execute if score #panic_chase_seconds switch.data matches 0 if data storage switch:main {{map:"yeti_in_panic"}} run fill 158006 111 158006 158006 112 158006 air replace tinted_glass

# Title actionbar
scoreboard players operation #second switch.data = #remaining_time switch.data
scoreboard players operation #minute switch.data = #remaining_time switch.data
scoreboard players operation #second switch.data %= #60 switch.data
scoreboard players operation #minute switch.data /= #60 switch.data
function {translations}/second
execute if score #second switch.data matches 0 run effect give @a[tag=!detached,gamemode=!spectator] glowing 2 0 true
execute if score #second switch.data matches 20 run effect give @a[tag=!detached,gamemode=!spectator] glowing 2 0 true
execute if score #second switch.data matches 40 run effect give @a[tag=!detached,gamemode=!spectator] glowing 2 0 true
""")

	# /start
	write_function(f"{path}/start", f"""
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] regeneration 15 255 true
effect give @a[tag=!detached] resistance 15 255 true
function switch:utils/set_dynamic_time

## Placement de la map et des joueurs
function switch:utils/choose_map_for {{id:"panic_chase", maps:["arti_box","nether_storm","yeti_in_panic"]}}

execute in switch:game run gamerule minecraft:natural_health_regeneration false
execute in switch:game run gamerule minecraft:fall_damage false

execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

function {translations}/start
execute if data storage switch:main {{map:"arti_box"}} run scoreboard players set #remaining_time switch.data 150
execute if data storage switch:main {{map:"arti_box"}} run scoreboard players set #panic_chase_seconds switch.data -30
execute if data storage switch:main {{map:"nether_storm"}} run scoreboard players set #remaining_time switch.data 240
execute if data storage switch:main {{map:"nether_storm"}} run scoreboard players set #panic_chase_seconds switch.data -30
execute if data storage switch:main {{map:"yeti_in_panic"}} run scoreboard players set #remaining_time switch.data 240
execute if data storage switch:main {{map:"yeti_in_panic"}} run scoreboard players set #panic_chase_seconds switch.data -30
scoreboard players set #panic_chase_ticks switch.data 0
scoreboard players set #process_end switch.data 0

scoreboard objectives setdisplay list switch.health

# Choix des rôles + give d'items
team add switch.temp.hunter {{"text":"[Hunter]","color":"red"}}
team add switch.temp.mouse {{"text":"[Mouse]","color":"blue"}}
team modify switch.temp.hunter color red
team modify switch.temp.mouse color blue
team modify switch.temp.hunter friendlyFire false
team modify switch.temp.mouse friendlyFire false
team modify switch.temp.hunter nametagVisibility never
team modify switch.temp.mouse nametagVisibility never
team modify switch.temp.hunter collisionRule never
team modify switch.temp.mouse collisionRule never
scoreboard players set #next_role switch.data 0
scoreboard players set #next_player_id switch.data 0
execute as @a[tag=!detached,sort=random] at @s run function {path}/roles
execute as @a[tag=!detached] at @s run function {path}/give_items
""")

	# /stop
	write_function(f"{path}/stop", """
team remove switch.temp.hunter
team remove switch.temp.mouse
""")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #panic_chase_ticks switch.data 1

# Détection de la mort d'un joueur
function switch:utils/on_death_run_function {{function:"{path}/death"}}

# Prevent drops
execute as @e[type=item,tag=!switch.checked] run function {path}/no_drop

# Détection de fin de partie
execute if score #panic_chase_seconds switch.data matches 1.. if score #remaining_time switch.data matches 0.. run function {path}/detect_end
execute if score #remaining_time switch.data matches ..0 run function {path}/process_end
""")

	# /xp_bar
	write_function(f"{path}/xp_bar", """
# 120 ou 210 seconds = 100%
# 0 seconds = 0%
scoreboard players operation #points switch.data = #remaining_time switch.data
scoreboard players operation #points switch.data *= #1000000 switch.data
execute if data storage switch:main {map:"arti_box"} run scoreboard players set #divide switch.data 120000
execute if data storage switch:main {map:"nether_storm"} run scoreboard players set #divide switch.data 210000
function switch:modes/_common/xp_bar/points

scoreboard players operation #levels switch.data = #remaining_time switch.data
function switch:modes/_common/xp_bar/levels
""")
