
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ..common import write_modes_calls, write_no_drop
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "panic_chase"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode, targets={"joined": f"{ns}:utils/classic_death"})
	write_translations()


	# /detect_end
	write_function(f"{path}/detect_end", f"""
scoreboard players set #game_state {ns}.data 0
execute if entity @a[tag=!detached,gamemode=!spectator,team={ns}.temp.hunter] unless entity @a[tag=!detached,gamemode=!spectator,team={ns}.temp.mouse] run scoreboard players set #game_state {ns}.data 1
execute if entity @a[tag=!detached,gamemode=!spectator,team={ns}.temp.mouse] unless entity @a[tag=!detached,gamemode=!spectator,team={ns}.temp.hunter] run scoreboard players set #game_state {ns}.data 2
execute unless entity @a[tag=!detached,gamemode=!spectator] run scoreboard players set #game_state {ns}.data 3

# 1 = que des chasseurs
# 2 = que des souris
# 3 = Plus personne

# Cas de fin de partie
execute if score #game_state {ns}.data matches 1..3 run scoreboard players set #remaining_time {ns}.data -1

# Cas des vainqueurs
function {translations}/detect_end

# Points
execute if score #remaining_time {ns}.data matches 0 if score #game_state {ns}.data matches 0 as @a[tag=!detached,gamemode=!spectator,team={ns}.temp.mouse] at @s run function {ns}:engine/add_win
execute if score #game_state {ns}.data matches 1 as @a[tag=!detached,gamemode=!spectator,team={ns}.temp.hunter] at @s run function {ns}:engine/add_win
execute if score #game_state {ns}.data matches 2 as @a[tag=!detached,gamemode=!spectator,team={ns}.temp.mouse] at @s run function {ns}:engine/add_win

# Advancement
execute if score #remaining_time {ns}.data matches 0 if score #game_state {ns}.data matches 0 unless score #test_mode {ns}.data matches 1 run advancement grant @a[tag=!detached,gamemode=!spectator,team={ns}.temp.mouse,scores={{{ns}.health=..6}}] only {ns}:visible/62

# Visuel de fin de partie
execute if score #remaining_time {ns}.data matches ..0 as @a[tag=!detached] at @s run playsound item.totem.use ambient @s
execute if score #remaining_time {ns}.data matches 0 run scoreboard players set #remaining_time {ns}.data -1
""")

	# /give_items
	write_function(f"{path}/give_items", f"""
# Item give depending on random
execute store result score #random {ns}.data run random value 1..6
execute if score #random {ns}.data matches 1 run item replace entity @s[team={ns}.temp.hunter] hotbar.0 with iron_sword[item_model="{ns}:emerald_sword",unbreakable={{}},attribute_modifiers=[{{type:"movement_speed",slot:"mainhand",id:"{ns}.movement_speed",amount:0.05,operation:"add_multiplied_base"}},{{type:"attack_damage",slot:"mainhand",id:"{ns}.attack_damage",amount:6,operation:"add_value"}}]]
execute if score #random {ns}.data matches 2 run item replace entity @s[team={ns}.temp.hunter] hotbar.0 with iron_sword[item_model="{ns}:obsidian_sword",unbreakable={{}},attribute_modifiers=[{{type:"movement_speed",slot:"mainhand",id:"{ns}.movement_speed",amount:0.05,operation:"add_multiplied_base"}},{{type:"attack_damage",slot:"mainhand",id:"{ns}.attack_damage",amount:6,operation:"add_value"}}]]
execute if score #random {ns}.data matches 3 run item replace entity @s[team={ns}.temp.hunter] hotbar.0 with iron_sword[item_model="{ns}:topaz_sword",unbreakable={{}},attribute_modifiers=[{{type:"movement_speed",slot:"mainhand",id:"{ns}.movement_speed",amount:0.05,operation:"add_multiplied_base"}},{{type:"attack_damage",slot:"mainhand",id:"{ns}.attack_damage",amount:6,operation:"add_value"}}]]
execute if score #random {ns}.data matches 4 run item replace entity @s[team={ns}.temp.hunter] hotbar.0 with iron_sword[item_model="{ns}:ruby_sword",unbreakable={{}},attribute_modifiers=[{{type:"movement_speed",slot:"mainhand",id:"{ns}.movement_speed",amount:0.05,operation:"add_multiplied_base"}},{{type:"attack_damage",slot:"mainhand",id:"{ns}.attack_damage",amount:6,operation:"add_value"}}]]
execute if score #random {ns}.data matches 5 run item replace entity @s[team={ns}.temp.hunter] hotbar.0 with iron_sword[item_model="{ns}:sapphire_sword",unbreakable={{}},attribute_modifiers=[{{type:"movement_speed",slot:"mainhand",id:"{ns}.movement_speed",amount:0.05,operation:"add_multiplied_base"}},{{type:"attack_damage",slot:"mainhand",id:"{ns}.attack_damage",amount:6,operation:"add_value"}}]]
execute if score #random {ns}.data matches 6 run item replace entity @s[team={ns}.temp.hunter] hotbar.0 with iron_sword[item_model="{ns}:adamantium_sword",unbreakable={{}},attribute_modifiers=[{{type:"movement_speed",slot:"mainhand",id:"{ns}.movement_speed",amount:0.05,operation:"add_multiplied_base"}},{{type:"attack_damage",slot:"mainhand",id:"{ns}.attack_damage",amount:6,operation:"add_value"}}]]

# Effect gives
effect give @s[team={ns}.temp.hunter] blindness infinite 0 true
effect give @s[team={ns}.temp.hunter] darkness infinite 0 true
effect give @s[team={ns}.temp.mouse] weakness infinite 255 true
""")

	# /no_drop
	write_no_drop(f"{path}/no_drop")

	# /process_end
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end {ns}.data 1

# Kill tout le monde
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached,sort=random] run function {ns}:modes/panic_chase/death/player
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {ns}:player/trigger/rating/print_current_game

# Obligatoire
execute if score #process_end {ns}.data matches 200 run function {ns}:engine/restart
""")

	# /roles
	write_function(f"{path}/roles", f"""
## Role selection (1/6 chasseurs)
scoreboard players add #next_player_id {ns}.data 1
scoreboard players add #next_role {ns}.data 1
execute if score #next_role {ns}.data matches 1 run team join {ns}.temp.hunter @s
execute if score #next_role {ns}.data matches 2.. run team join {ns}.temp.mouse @s

# Hunter tp
execute if score #next_role {ns}.data matches 1 if data storage {ns}:main {{map:"arti_box"}} run tp @s 119024.0 106 119023
execute if score #next_role {ns}.data matches 1 if data storage {ns}:main {{map:"nether_storm"}} run tp @s 122034 120 122037
execute if score #next_role {ns}.data matches 1 if data storage {ns}:main {{map:"yeti_in_panic"}} run tp @s 158003 112 158004

# Mouse tp
execute if score #next_role {ns}.data matches 2..3 if data storage {ns}:main {{map:"arti_box"}} run tp @s 119024.0 106 119004.0 0 0
execute if score #next_role {ns}.data matches 4..6 if data storage {ns}:main {{map:"arti_box"}} run tp @s 119024.0 106 119044.0 180 0
execute if score #next_role {ns}.data matches 2 if data storage {ns}:main {{map:"nether_storm"}} run tp @s 122023 120 122012 -45 0
execute if score #next_role {ns}.data matches 3 if data storage {ns}:main {{map:"nether_storm"}} run tp @s 122063 120 122035 90 0
execute if score #next_role {ns}.data matches 4 if data storage {ns}:main {{map:"nether_storm"}} run tp @s 122007 120 122032 -90 0
execute if score #next_role {ns}.data matches 5.. if data storage {ns}:main {{map:"nether_storm"}} run tp @s 122039.0 123 122066.0 180 0
execute if score #next_role {ns}.data matches 2.. if data storage {ns}:main {{map:"yeti_in_panic"}} run tp @s 158034 114 158027 0 65

# Reset
execute if score #next_role {ns}.data matches 6.. run scoreboard players set #next_role {ns}.data 0
""")

	# /second
	write_function(f"{path}/second", f"""
# Timer
scoreboard players add #panic_chase_seconds {ns}.data 1
execute if score #remaining_time {ns}.data matches 0.. run scoreboard players remove #remaining_time {ns}.data 1
function {path}/xp_bar

# Release the hunters
execute if score #panic_chase_seconds {ns}.data matches 0 as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s
execute if score #panic_chase_seconds {ns}.data matches 0 run effect clear @a[team={ns}.temp.hunter] darkness
execute if score #panic_chase_seconds {ns}.data matches 0 run effect clear @a[team={ns}.temp.hunter] blindness
execute if score #panic_chase_seconds {ns}.data matches 0 if data storage {ns}:main {{map:"arti_box"}} run fill 119021 106 119025 119026 104 119021 air replace tinted_glass
execute if score #panic_chase_seconds {ns}.data matches 0 if data storage {ns}:main {{map:"nether_storm"}} run fill 122033 119 122036 122035 120 122038 air replace #{ns}:moutron/glass
execute if score #panic_chase_seconds {ns}.data matches 0 if data storage {ns}:main {{map:"yeti_in_panic"}} run fill 158006 111 158006 158006 112 158006 air replace tinted_glass

# Title actionbar
scoreboard players operation #second {ns}.data = #remaining_time {ns}.data
scoreboard players operation #minute {ns}.data = #remaining_time {ns}.data
scoreboard players operation #second {ns}.data %= #60 {ns}.data
scoreboard players operation #minute {ns}.data /= #60 {ns}.data
function {translations}/second
execute if score #second {ns}.data matches 0 run effect give @a[tag=!detached,gamemode=!spectator] glowing 2 0 true
execute if score #second {ns}.data matches 20 run effect give @a[tag=!detached,gamemode=!spectator] glowing 2 0 true
execute if score #second {ns}.data matches 40 run effect give @a[tag=!detached,gamemode=!spectator] glowing 2 0 true
""")

	# /start
	write_function(f"{path}/start", f"""
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] regeneration 15 255 true
effect give @a[tag=!detached] resistance 15 255 true
function {ns}:utils/set_dynamic_time

## Placement de la map et des joueurs
function {ns}:utils/choose_map_for {{id:"panic_chase", maps:["arti_box","nether_storm","yeti_in_panic"]}}

execute in {ns}:game run gamerule minecraft:natural_health_regeneration false
execute in {ns}:game run gamerule minecraft:fall_damage false

execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

function {translations}/start
execute if data storage {ns}:main {{map:"arti_box"}} run scoreboard players set #remaining_time {ns}.data 150
execute if data storage {ns}:main {{map:"arti_box"}} run scoreboard players set #panic_chase_seconds {ns}.data -30
execute if data storage {ns}:main {{map:"nether_storm"}} run scoreboard players set #remaining_time {ns}.data 240
execute if data storage {ns}:main {{map:"nether_storm"}} run scoreboard players set #panic_chase_seconds {ns}.data -30
execute if data storage {ns}:main {{map:"yeti_in_panic"}} run scoreboard players set #remaining_time {ns}.data 240
execute if data storage {ns}:main {{map:"yeti_in_panic"}} run scoreboard players set #panic_chase_seconds {ns}.data -30
scoreboard players set #panic_chase_ticks {ns}.data 0
scoreboard players set #process_end {ns}.data 0

scoreboard objectives setdisplay list {ns}.health

# Choix des rôles + give d'items
team add {ns}.temp.hunter {{"text":"[Hunter]","color":"red"}}
team add {ns}.temp.mouse {{"text":"[Mouse]","color":"blue"}}
team modify {ns}.temp.hunter color red
team modify {ns}.temp.mouse color blue
team modify {ns}.temp.hunter friendlyFire false
team modify {ns}.temp.mouse friendlyFire false
team modify {ns}.temp.hunter nametagVisibility never
team modify {ns}.temp.mouse nametagVisibility never
team modify {ns}.temp.hunter collisionRule never
team modify {ns}.temp.mouse collisionRule never
function {ns}:modes/_common/assign_random_roles {{mode:"{ns}:modes/panic_chase"}}
""")

	# /stop
	write_function(f"{path}/stop", f"""
team remove {ns}.temp.hunter
team remove {ns}.temp.mouse
""")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #panic_chase_ticks {ns}.data 1

# Détection de la mort d'un joueur
function {ns}:utils/on_death_run_function {{function:"{ns}:utils/classic_death"}}

# Prevent drops
execute as @e[type=item,tag=!{ns}.checked] run function {path}/no_drop

# Détection de fin de partie
execute if score #panic_chase_seconds {ns}.data matches 1.. if score #remaining_time {ns}.data matches 0.. run function {path}/detect_end
execute if score #remaining_time {ns}.data matches ..0 run function {path}/process_end
""")

	# /xp_bar (divide depends on the map, so #divide is set here before the shared macro)
	write_function(f"{path}/xp_bar", f"""
execute if data storage {ns}:main {{map:"arti_box"}} run scoreboard players set #divide {ns}.data 120000
execute if data storage {ns}:main {{map:"nether_storm"}} run scoreboard players set #divide {ns}.data 210000
function {ns}:modes/_common/xp_bar/time {{points_score:"#remaining_time",levels_score:"#remaining_time"}}
""")
