
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ..common import write_modes_calls, write_no_drop
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "murder_mystery"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode, targets={"joined": f"{ns}:utils/classic_death"})
	write_translations()

	# /calls/entity_hurt_player (non-standard call)
	write_function(f"{path}/calls/entity_hurt_player", f"""
advancement revoke @s only {ns}:murder_mystery/entity_hurt_player
execute if score #engine_state {ns}.data matches 3 if data storage {ns}:main {{current_game:"{mode}"}} if score #murder_mystery_seconds {ns}.data matches 0.. run function {path}/entity_hurt_player
""")


	# /apply_properties_to_mannequin
	write_function(f"{path}/apply_properties_to_mannequin", f"""
data merge entity @s {{Invulnerable:true,Silent:true,hide_description:true,pose:"sleeping",immovable:true}}
data modify entity @s Rotation set from storage {ns}:main Rotation

# Copy name to CustomName
data modify entity @s profile set from block 0 7 0 Items[0].components."minecraft:profile"
setblock 0 7 0 oak_sign
data modify block 0 7 0 front_text.messages[0] set value {{"nbt":"temp","storage":"{ns}:main","interpret":true}}
data modify entity @s CustomName set from block 0 7 0 front_text.messages[0]
""")

	# /compass
	write_function(f"{path}/compass", f"""
# Track nearest player with compass
data modify storage {ns}:main Pos set from entity @p[gamemode=!spectator,distance=0.1..] Pos
setblock 0 7 0 yellow_shulker_box
item replace block 0 7 0 container.0 with compass[item_name={{"text":"Player Tracker","color":"yellow"}},lodestone_tracker={{"tracked":false,"target":{{"dimension":"{ns}:game","pos":[I;10,10,10]}}}}]
execute store result block 0 7 0 Items[0].components."minecraft:lodestone_tracker".target.pos[0] int 1 run data get storage {ns}:main Pos[0]
execute store result block 0 7 0 Items[0].components."minecraft:lodestone_tracker".target.pos[1] int 1 run data get storage {ns}:main Pos[1]
execute store result block 0 7 0 Items[0].components."minecraft:lodestone_tracker".target.pos[2] int 1 run data get storage {ns}:main Pos[2]

item replace entity @s hotbar.4 from block 0 7 0 container.0
setblock 0 7 0 air

# Allow to see players waypoints
attribute @s waypoint_receive_range base reset
""")

	# /detect_end (brace-heavy: plain string, translation ref rewritten)
	write_function(f"{path}/detect_end", f"""
# On regarde l'état de la partie
scoreboard players set #game_state {ns}.data 0
execute if entity @a[tag=!detached,gamemode=!spectator,scores={{{ns}.temp.role=3}}] unless entity @a[tag=!detached,gamemode=!spectator,scores={{{ns}.temp.role=1..2}}] run scoreboard players set #game_state {ns}.data 1
execute if entity @a[tag=!detached,gamemode=!spectator,scores={{{ns}.temp.role=1..2}}] unless entity @a[tag=!detached,gamemode=!spectator,scores={{{ns}.temp.role=3}}] run scoreboard players set #game_state {ns}.data 2
execute unless entity @a[tag=!detached,gamemode=!spectator] run scoreboard players set #game_state {ns}.data 3

# 1 = Victoire Innocent
# 2 = Victoire Murder
# 3 = Plus personne

# Cas de fin de partie
execute if score #game_state {ns}.data matches 1..3 run scoreboard players set #remaining_time {ns}.data 0
execute if score #remaining_time {ns}.data matches 1 run scoreboard players set #remaining_time {ns}.data 0

# Cas des vainqueurs

execute if score #remaining_time {ns}.data matches ..1 if score #game_state {ns}.data matches 0 as @a[tag=!detached,gamemode=!spectator,scores={{{ns}.temp.role=1..2}}] at @s run function {ns}:engine/add_win
execute if score #remaining_time {ns}.data matches ..1 if score #game_state {ns}.data matches 1 as @a[tag=!detached,gamemode=!spectator,scores={{{ns}.temp.role=3}}] at @s run function {ns}:engine/add_win
execute if score #remaining_time {ns}.data matches ..1 if score #game_state {ns}.data matches 2 as @a[tag=!detached,gamemode=!spectator,scores={{{ns}.temp.role=1..2}}] at @s run function {ns}:engine/add_win

function {ns}:modes/murder_mystery/translations/detect_end
execute if score #remaining_time {ns}.data matches ..1 unless score #test_mode {ns}.data matches 1 as @a[scores={{{ns}.temp.role=3}}] on attacker run advancement grant @s[scores={{{ns}.temp.role=1}}] only {ns}:visible/61

# Visuel de fin de partie
execute if score #remaining_time {ns}.data matches ..1 as @a[tag=!detached] at @s run playsound item.totem.use ambient @s
""")

	# /entity_hurt_player (brace-heavy: plain string)
	write_function(f"{path}/entity_hurt_player", f"""
# Advancement
scoreboard players set #suicide {ns}.data 1
execute on attacker run scoreboard players set #suicide {ns}.data 0
execute unless score #test_mode {ns}.data matches 1 if score #suicide {ns}.data matches 1 run advancement grant @s only {ns}:visible/64

# Kill yourself
function {ns}:modes/murder_mystery/kill_player
execute on attacker run scoreboard players add @s {ns}.stats.kills 1

# Kill the attacker if not murderer
execute if entity @s[scores={{{ns}.temp.role=1..2}}] on attacker if entity @s[gamemode=!spectator,scores={{{ns}.temp.role=1..2}}] at @s run function {ns}:modes/murder_mystery/kill_player
""")

	# /kill_player (brace-heavy: plain string, translation ref rewritten)
	write_function(f"{path}/kill_player", f"""
# Playsound & Spectator
execute as @a[tag=!detached] at @s run playsound entity.player.hurt ambient @s
execute if entity @s[gamemode=!spectator] run scoreboard players add @s {ns}.stats.deaths 1
gamemode spectator @s

# Summon dead body with username
setblock 0 7 0 yellow_shulker_box
loot insert 0 7 0 loot {ns}:get_username
data modify storage {ns}:main Rotation set from entity @s Rotation
execute summon mannequin run function {ns}:modes/murder_mystery/apply_properties_to_mannequin
setblock 0 7 0 air

# Drop bow if detective
execute if data entity @s Inventory[].components."minecraft:custom_data".{ns}.detective_bow run summon item_display ~ ~1 ~ {{item:{{id:"bow",count:1}},Tags:["{ns}.detective_bow"],Glowing:true}}
execute if data entity @s equipment.offhand.components."minecraft:custom_data".{ns}.detective_bow run summon item_display ~ ~1 ~ {{item:{{id:"bow",count:1}},Tags:["{ns}.detective_bow"],Glowing:true}}

# Title & clear
function {ns}:modes/murder_mystery/translations/kill_player
clear @s

# Killed by murderer as murderer?
scoreboard players set #murderer_killer {ns}.data 0
execute on attacker if score @s {ns}.temp.role matches 3 run scoreboard players set #murderer_killer {ns}.data 1
execute unless score #test_mode {ns}.data matches 1 if score #murderer_killer {ns}.data matches 1 if score @s {ns}.temp.role matches 3 run advancement grant @s only {ns}:visible/80
""")

	# /no_drop
	write_no_drop(f"{path}/no_drop")

	# /process_end
	write_function(f"{path}/process_end", f"""
# Mise en spectateur
scoreboard players add #process_end {ns}.data 1
execute if score #process_end {ns}.data matches 1 run team leave @a[tag=!detached]
execute if score #process_end {ns}.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {ns}:player/trigger/rating/print_current_game

# Obligatoire
execute if score #process_end {ns}.data matches 200 run function {ns}:engine/restart
""")

	# /second (brace-heavy: plain string, translation ref rewritten)
	write_function(f"{path}/second", f"""
# Timer
scoreboard players add #murder_mystery_seconds {ns}.data 1
execute if score #remaining_time {ns}.data matches 1.. run scoreboard players remove #remaining_time {ns}.data 1

# Annonce des rôles
execute if score #murder_mystery_seconds {ns}.data matches 0 as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s
execute if score #murder_mystery_seconds {ns}.data matches 0 as @a[scores={{{ns}.temp.role=2}}] run item replace entity @s hotbar.0 with bow[unbreakable={{}},item_name={{"text":"Arc du Détective","color":"green"}},lore=[{{"text":"5 secondes pour recharger","color":"gray","italic":false}}],custom_data={{{ns}:{{detective_bow:true}}}}]
execute if score #murder_mystery_seconds {ns}.data matches 0 as @a[scores={{{ns}.temp.role=2}}] run item replace entity @s hotbar.8 with arrow
execute if score #murder_mystery_seconds {ns}.data matches 0 as @a[scores={{{ns}.temp.role=3}}] if data entity @s {{SelectedItemSlot:0}} run item replace entity @s hotbar.1 with golden_sword[custom_data={{{ns}:{{murder_knife:true}}}},unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable","minecraft:attribute_modifiers"]}},attribute_modifiers=[{{type:"attack_damage",slot:"mainhand",id:"{ns}.weapon",amount:11111111,operation:"add_value"}}],consumable={{consume_seconds:1024}}]
execute if score #murder_mystery_seconds {ns}.data matches 0 as @a[scores={{{ns}.temp.role=3}}] unless data entity @s {{SelectedItemSlot:0}} run item replace entity @s hotbar.0 with golden_sword[custom_data={{{ns}:{{murder_knife:true}}}},unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable","minecraft:attribute_modifiers"]}},attribute_modifiers=[{{type:"attack_damage",slot:"mainhand",id:"{ns}.weapon",amount:11111111,operation:"add_value"}}],consumable={{consume_seconds:1024}}]
execute if score #murder_mystery_seconds {ns}.data matches 0 run scoreboard players set @a[scores={{{ns}.temp.role=3}}] {ns}.temp.throw_reload 0

# Summon gold ingots if low amount (~3 gold per player)
execute as @e[type=item,tag={ns}.gold] at @s if block ~ ~-1 ~ barrier run kill @s
execute store result score #gold_count {ns}.data if entity @e[type=item,tag={ns}.gold]
execute store result score #player_count {ns}.data if entity @a[tag=!detached,gamemode=!spectator]
scoreboard players operation #gold_count {ns}.data *= #100 {ns}.data
scoreboard players operation #gold_count {ns}.data /= #player_count {ns}.data
execute if score #murder_mystery_seconds {ns}.data matches 0.. if score #gold_count {ns}.data matches ..300 run function {ns}:modes/murder_mystery/summon_gold

# Reload detective bow
execute as @a[tag=!detached,gamemode=!spectator,nbt={{Inventory:[{{components:{{"minecraft:custom_data":{{{ns}:{{detective_bow:true}}}}}}}}]}}] unless data entity @s Inventory[{{id:"minecraft:arrow"}}] run scoreboard players add #detective_reload {ns}.data 1
execute if score #detective_reload {ns}.data matches 5.. run give @a[tag=!detached,gamemode=!spectator,nbt={{Inventory:[{{components:{{"minecraft:custom_data":{{{ns}:{{detective_bow:true}}}}}}}}]}}] arrow
execute if score #detective_reload {ns}.data matches 5.. run scoreboard players set #detective_reload {ns}.data 0

# Title actionbar
scoreboard players operation #second {ns}.data = #remaining_time {ns}.data
scoreboard players operation #minute {ns}.data = #remaining_time {ns}.data
scoreboard players operation #second {ns}.data %= #60 {ns}.data
scoreboard players operation #minute {ns}.data /= #60 {ns}.data
execute if score #murder_mystery_seconds {ns}.data matches 0 store result score #nb_murderers {ns}.data if entity @a[tag=!detached,scores={{{ns}.temp.role=3}}]
function {ns}:modes/murder_mystery/translations/second

# Track nearest player with compass
execute if score #murder_mystery_seconds {ns}.data matches 60.. as @a[scores={{{ns}.temp.role=3}}] at @s run function {ns}:modes/murder_mystery/compass
""")

	# /start (brace-heavy: plain string, translation ref rewritten)
	write_function(f"{path}/start", f"""
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] resistance infinite 255 true
effect give @a[tag=!detached] weakness infinite 255 true
function {ns}:utils/set_dynamic_time

execute in {ns}:game run gamerule minecraft:fall_damage false
execute in {ns}:game run gamerule minecraft:keep_inventory true

## Chargement de la map
scoreboard players set #do_spreadplayers {ns}.data 1
function {ns}:utils/choose_map_for {{id:"murder_mystery", maps:["ghost_town","remelta_cluedo","jn_murder_mystery","charly_murder_2018","cluedo_casino","cluedo_camping"]}}

function {ns}:modes/murder_mystery/translations/start
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

scoreboard players set #remaining_time {ns}.data 245
scoreboard players set #murder_mystery_seconds {ns}.data -6
scoreboard players set #murder_mystery_ticks {ns}.data 0
scoreboard players set #detective_reload {ns}.data 0
scoreboard players set #murderer_reload {ns}.data 0
scoreboard players set #process_end {ns}.data 0
scoreboard objectives add {ns}.temp.role dummy
scoreboard objectives add {ns}.temp.nb_arrows_get dummy
scoreboard objectives add {ns}.temp.throw_reload dummy

# Scoreboard permanents
scoreboard objectives add {ns}.games_not_being_murderer dummy
scoreboard objectives add {ns}.games_not_being_detective dummy
execute as @a[tag=!detached] unless score @s {ns}.games_not_being_murderer matches 1.. run scoreboard players set @s {ns}.games_not_being_murderer 1
execute as @a[tag=!detached] unless score @s {ns}.games_not_being_detective matches 1.. run scoreboard players set @s {ns}.games_not_being_detective 1

# Title actionbar de leur pourcentage de chance
scoreboard players set #total_murderer {ns}.data 0
scoreboard players set #total_detective {ns}.data 0
scoreboard players operation #total_murderer {ns}.data += @a[tag=!detached] {ns}.games_not_being_murderer
scoreboard players operation #total_detective {ns}.data += @a[tag=!detached] {ns}.games_not_being_detective
execute as @a[tag=!detached] run function {ns}:modes/murder_mystery/percentage/title

# Choix du murder et du detective
function {ns}:modes/murder_mystery/percentage/select_roles

# Hide nametags
team add {ns}.temp.murder_mystery {{"text":"[Murder Mystery]"}}
#team modify {ns}.temp.murder_mystery prefix {{"text":"[Murder Mystery] ","color":"aqua"}}
team modify {ns}.temp.murder_mystery nametagVisibility never
team join {ns}.temp.murder_mystery @a[tag=!detached]

# Teleport players override
execute if data storage {ns}:main {{map:"jn_murder_mystery"}} run scoreboard players set #remaining_time {ns}.data 305

## Waypoints
# Remove everyone's waypoint receive range
execute as @a[tag=!detached] run attribute @s waypoint_receive_range base set 0
execute as @a[tag=!detached] run waypoint modify @s color green
execute as @a[tag=!detached,scores={{{ns}.temp.role=3}}] run waypoint modify @s color red
""")

	# /stop
	write_function(f"{path}/stop", f"""
team remove {ns}.temp.murder_mystery
scoreboard objectives remove {ns}.temp.role
scoreboard objectives remove {ns}.temp.nb_arrows_get
scoreboard objectives remove {ns}.temp.throw_reload
""")

	# /summon_gold
	write_function(f"{path}/summon_gold", f"""
execute if predicate {ns}:chance/0.1 at @r[gamemode=!spectator,tag=!detached] if block ~ ~ ~ air run summon item ~6 ~ ~ {{Tags:["{ns}.gold"],Item:{{id:"minecraft:gold_ingot",count:1}}}}
execute if predicate {ns}:chance/0.1 at @r[gamemode=!spectator,tag=!detached] if block ~ ~ ~ air run summon item ~-6 ~ ~ {{Tags:["{ns}.gold"],Item:{{id:"minecraft:gold_ingot",count:1}}}}
execute if predicate {ns}:chance/0.1 at @r[gamemode=!spectator,tag=!detached] if block ~ ~ ~ air run summon item ~ ~ ~6 {{Tags:["{ns}.gold"],Item:{{id:"minecraft:gold_ingot",count:1}}}}
execute if predicate {ns}:chance/0.1 at @r[gamemode=!spectator,tag=!detached] if block ~ ~ ~ air run summon item ~ ~ ~-6 {{Tags:["{ns}.gold"],Item:{{id:"minecraft:gold_ingot",count:1}}}}
execute if predicate {ns}:chance/0.1 at @r[gamemode=!spectator,tag=!detached] if block ~ ~ ~ air run summon item ~6 ~ ~6 {{Tags:["{ns}.gold"],Item:{{id:"minecraft:gold_ingot",count:1}}}}
execute if predicate {ns}:chance/0.1 at @r[gamemode=!spectator,tag=!detached] if block ~ ~ ~ air run summon item ~-6 ~ ~-6 {{Tags:["{ns}.gold"],Item:{{id:"minecraft:gold_ingot",count:1}}}}
execute if predicate {ns}:chance/0.1 at @r[gamemode=!spectator,tag=!detached] if block ~ ~ ~ air run summon item ~6 ~ ~6 {{Tags:["{ns}.gold"],Item:{{id:"minecraft:gold_ingot",count:1}}}}
execute if predicate {ns}:chance/0.1 at @r[gamemode=!spectator,tag=!detached] if block ~ ~ ~ air run summon item ~-6 ~ ~-6 {{Tags:["{ns}.gold"],Item:{{id:"minecraft:gold_ingot",count:1}}}}
""")

	# /tick (brace-heavy: plain string)
	write_function(f"{path}/tick", f"""
# Timer
scoreboard players add #murder_mystery_ticks {ns}.data 1

# Détection des morts
function {ns}:utils/on_death_run_function {{function:"{ns}:utils/classic_death"}}

# Give a bow with an arrow for players that have at least 10 golds
execute as @a[tag=!detached,gamemode=!spectator,nbt={{Inventory:[{{id:"minecraft:gold_ingot"}}]}}] run function {ns}:modes/murder_mystery/tick_ingot

# Prevent drops
execute as @e[type=item,tag=!{ns}.checked] run function {ns}:modes/murder_mystery/no_drop
execute at @e[type=item,nbt={{Age:500s}}] run particle sculk_charge_pop ~ ~ ~ .2 .2 .2 0.01 10
kill @e[type=arrow,nbt={{inBlockState:{{}}}}]
kill @e[type=item,nbt={{Age:500s}}]

# Detective bow
execute as @e[type=item_display,tag={ns}.detective_bow] at @s positioned ~ ~-1 ~ run function {ns}:modes/murder_mystery/tick_bow

# Allow the murderer to throw their knife
scoreboard players add #rotation {ns}.data 30
scoreboard players operation #rotation {ns}.data %= #360 {ns}.data
execute as @a[scores={{{ns}.temp.role=3}}] at @s run function {ns}:modes/murder_mystery/throw/player_tick
execute as @e[type=armor_stand,tag={ns}.thrown] at @s run function {ns}:modes/murder_mystery/throw/loop

# Fun
#execute as @a[tag=!detached,scores={{{ns}.right_click=1..}}] at @s run function {ns}:modes/murder_mystery/throw/throw

## Détection de fin de partie
execute if score #murder_mystery_seconds {ns}.data matches 1.. if score #remaining_time {ns}.data matches 1.. run function {ns}:modes/murder_mystery/detect_end
execute if score #remaining_time {ns}.data matches ..0 run function {ns}:modes/murder_mystery/process_end
""")

	# /tick_bow (brace-heavy: plain string, translation ref rewritten)
	write_function(f"{path}/tick_bow", f"""
# Rotate the bow
execute store result score #rotation {ns}.data run data get entity @s Rotation[0]
scoreboard players add #rotation {ns}.data 5
execute if score #rotation {ns}.data matches 360.. run scoreboard players remove #rotation {ns}.data 360
execute store result entity @s Rotation[0] float 1 run scoreboard players get #rotation {ns}.data

# Give bow to innocent player close
execute as @p[gamemode=!spectator,scores={{{ns}.temp.role=1..2}},distance=..1] if data entity @s Inventory[{{id:"minecraft:bow"}}] run clear @s bow
execute as @p[gamemode=!spectator,scores={{{ns}.temp.role=1..2}},distance=..1] run give @s bow[unbreakable={{}},item_name={{"text":"Arc du Détective","color":"green"}},lore=[{{"text":"5 secondes pour recharger","color":"gray","italic":false}}],custom_data={{{ns}:{{detective_bow:true}}}}]
execute as @p[gamemode=!spectator,scores={{{ns}.temp.role=1..2}},distance=..1] unless data entity @s Inventory[{{id:"minecraft:arrow"}}] run give @s arrow 1
function {ns}:modes/murder_mystery/translations/tick_bow
execute as @p[gamemode=!spectator,scores={{{ns}.temp.role=1..2}},distance=..1] as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s
execute if entity @p[gamemode=!spectator,scores={{{ns}.temp.role=1..2}},distance=..1] run kill @s
""")

	# /tick_ingot
	write_function(f"{path}/tick_ingot", f"""
scoreboard players set #count {ns}.data 0
execute store result score #count {ns}.data run clear @s gold_ingot 0

# If count >= 10, give bow and arrow
execute if score #count {ns}.data matches 10.. run clear @s gold_ingot 10
execute if score #count {ns}.data matches 10.. unless data entity @s Inventory[{{id:"minecraft:bow"}}] run give @s bow[unbreakable={{}}]
execute if score #count {ns}.data matches 10.. run give @s arrow
execute if score #count {ns}.data matches 10.. run scoreboard players add @s {ns}.temp.nb_arrows_get 1
execute unless score #test_mode {ns}.data matches 1 if score #count {ns}.data matches 10.. if score @s {ns}.temp.nb_arrows_get matches 2.. run advancement grant @s only {ns}:visible/34
""")

	# === percentage ===

	# /percentage/_choose_from_list
	write_function(f"{path}/percentage/_choose_from_list", f"""
data modify storage {ns}:temp input set value {{index:0}}
execute store result score #modulo_rand {ns}.data run data get storage {ns}:temp list
function {ns}:utils/get_random/main
execute store result storage {ns}:temp input.index int 1 run scoreboard players get #random {ns}.data
scoreboard players set #chosen_id {ns}.data 0
function {ns}:modes/murder_mystery/percentage/get_id_from_list with storage {ns}:temp input
""")

	# /percentage/choose_pair
	write_function(f"{path}/percentage/choose_pair", f"""
## Choose a murderer
# Get a list of all players ID multiplied by their score
data modify storage {ns}:temp list set value []
execute as @a[scores={{{ns}.temp.role=1}}] run function {ns}:modes/murder_mystery/percentage/get_murderer_id

# Choose a random ID from the list
function {ns}:modes/murder_mystery/percentage/_choose_from_list
execute as @a[scores={{{ns}.temp.role=1}}] if score @s {ns}.id = #chosen_id {ns}.data run scoreboard players set @s {ns}.temp.role 3


## Choose a detective
# Get a list of all players ID multiplied by their score
data modify storage {ns}:temp list set value []
execute as @a[scores={{{ns}.temp.role=1}}] run function {ns}:modes/murder_mystery/percentage/get_detective_id

# Choose a random ID from the list
function {ns}:modes/murder_mystery/percentage/_choose_from_list
execute as @a[scores={{{ns}.temp.role=1}}] if score @s {ns}.id = #chosen_id {ns}.data run scoreboard players set @s {ns}.temp.role 2
""")

	# /percentage/get_detective_id
	write_function(f"{path}/percentage/get_detective_id", f"""
# Store ID in storage
execute store result storage {ns}:temp temp int 1 run scoreboard players get @s {ns}.id

# Add it multiple times
scoreboard players operation #count {ns}.data = @s {ns}.games_not_being_detective
execute if score #count {ns}.data matches 1.. run function {path}/percentage/get_detective_id_loop
""")

	# /percentage/get_detective_id_loop
	write_function(f"{path}/percentage/get_detective_id_loop", f"""
# Add the ID to the list
data modify storage {ns}:temp list append from storage {ns}:temp temp

# Loop again
scoreboard players remove #count {ns}.data 1
execute if score #count {ns}.data matches 1.. run function {path}/percentage/get_detective_id_loop
""")

	# /percentage/get_id_from_list
	write_function(f"{path}/percentage/get_id_from_list", f"""
$execute store result score #chosen_id {ns}.data run data get storage {ns}:temp list[$(index)]
""")

	# /percentage/get_murderer_id
	write_function(f"{path}/percentage/get_murderer_id", f"""
# Store ID in storage
execute store result storage {ns}:temp temp int 1 run scoreboard players get @s {ns}.id

# Add it multiple times
scoreboard players operation #count {ns}.data = @s {ns}.games_not_being_murderer
execute if score #count {ns}.data matches 1.. run function {path}/percentage/get_murderer_id_loop
""")

	# /percentage/get_murderer_id_loop
	write_function(f"{path}/percentage/get_murderer_id_loop", f"""
# Add the ID to the list
data modify storage {ns}:temp list append from storage {ns}:temp temp

# Loop again
scoreboard players remove #count {ns}.data 1
execute if score #count {ns}.data matches 1.. run function {path}/percentage/get_murderer_id_loop
""")

	# /percentage/select_roles (brace-heavy: plain string)
	write_function(f"{path}/percentage/select_roles", f"""
# Set everyone innocent
scoreboard players set @a[tag=!detached] {ns}.temp.role 1

# Choose a pair of detective + murderer
function {ns}:modes/murder_mystery/percentage/choose_pair

# Get number of players
execute store result score #nb_players {ns}.data if entity @a[tag=!detached]
execute if score #nb_players {ns}.data matches 15.. run function {ns}:modes/murder_mystery/percentage/choose_pair
execute if score #nb_players {ns}.data matches 27.. run function {ns}:modes/murder_mystery/percentage/choose_pair
execute if score #nb_players {ns}.data matches 45.. run function {ns}:modes/murder_mystery/percentage/choose_pair
execute if score #nb_players {ns}.data matches 64.. run function {ns}:modes/murder_mystery/percentage/choose_pair

# Probabilities
scoreboard players add @a[scores={{{ns}.temp.role=1}}] {ns}.games_not_being_detective 1
scoreboard players add @a[scores={{{ns}.temp.role=1}}] {ns}.games_not_being_murderer 1
scoreboard players reset @a[scores={{{ns}.temp.role=2}}] {ns}.games_not_being_detective
scoreboard players reset @a[scores={{{ns}.temp.role=3}}] {ns}.games_not_being_murderer
""")

	# /percentage/title (translation ref)
	write_function(f"{path}/percentage/title", f"""
# Calculate percentages
scoreboard players operation #percentage_murderer {ns}.data = @s {ns}.games_not_being_murderer
scoreboard players operation #percentage_murderer {ns}.data *= #100 {ns}.data
scoreboard players operation #percentage_murderer {ns}.data /= #total_murderer {ns}.data
scoreboard players operation #percentage_detective {ns}.data = @s {ns}.games_not_being_detective
scoreboard players operation #percentage_detective {ns}.data *= #100 {ns}.data
scoreboard players operation #percentage_detective {ns}.data /= #total_detective {ns}.data

# Display
function {translations}/percentage_title
""")

	# === throw ===

	# /throw/advancement (brace-heavy: plain string)
	write_function(f"{path}/throw/advancement", f"""
# Revoke advancement
advancement revoke @s only {ns}:murder_mystery/right_click

# Depending on the cooldown, launch proper function
execute if score @s {ns}.temp.throw_reload matches 0 if data entity @s SelectedItem{{id:"minecraft:golden_sword"}} run function {ns}:modes/murder_mystery/throw/init
execute if score @s {ns}.temp.throw_reload matches 1..187 run function {ns}:modes/murder_mystery/throw/error
""")

	# /throw/error (translation ref)
	write_function(f"{path}/throw/error", f"""
playsound entity.villager.no ambient @s
function {translations}/throw_error
""")

	# /throw/feedback (translation ref)
	write_function(f"{path}/throw/feedback", f"""
# Playsound
playsound block.note_block.bit ambient @s

# Title actionbar for displaying progress (200 to 189)
function {translations}/throw_feedback
""")

	# /throw/init
	write_function(f"{path}/throw/init", f"""
scoreboard players set @s {ns}.temp.throw_reload 200
effect give @s slowness 2 4 true
""")

	# /throw/loop (brace-heavy: plain string, translation ref rewritten)
	write_function(f"{path}/throw/loop", f"""
# Go forward and rotate (360/12 = 30°)
tp @s ^ ^ ^0.69
execute if score #rotation {ns}.data matches 000..029 on passengers run data modify entity @s transformation.left_rotation set value [0f,      0f, 0f, 1f]
execute if score #rotation {ns}.data matches 030..059 on passengers run data modify entity @s transformation.left_rotation set value [0.2588f, 0f, 0f, 0.9659f]
execute if score #rotation {ns}.data matches 060..089 on passengers run data modify entity @s transformation.left_rotation set value [0.5f,    0f, 0f, 0.8660f]
execute if score #rotation {ns}.data matches 090..119 on passengers run data modify entity @s transformation.left_rotation set value [0.7071f, 0f, 0f, 0.7071f]
execute if score #rotation {ns}.data matches 120..149 on passengers run data modify entity @s transformation.left_rotation set value [0.8660f, 0f, 0f, 0.5f]
execute if score #rotation {ns}.data matches 150..179 on passengers run data modify entity @s transformation.left_rotation set value [0.9659f, 0f, 0f, 0.2588f]
execute if score #rotation {ns}.data matches 180..209 on passengers run data modify entity @s transformation.left_rotation set value [1f,      0f, 0f, 0f]
execute if score #rotation {ns}.data matches 210..239 on passengers run data modify entity @s transformation.left_rotation set value [0.9659f, 0f, 0f, -0.2588f]
execute if score #rotation {ns}.data matches 240..269 on passengers run data modify entity @s transformation.left_rotation set value [0.8660f, 0f, 0f, -0.5f]
execute if score #rotation {ns}.data matches 270..299 on passengers run data modify entity @s transformation.left_rotation set value [0.7071f, 0f, 0f, -0.7071f]
execute if score #rotation {ns}.data matches 300..329 on passengers run data modify entity @s transformation.left_rotation set value [0.5f,    0f, 0f, -0.8660f]
execute if score #rotation {ns}.data matches 330..359 on passengers run data modify entity @s transformation.left_rotation set value [0.2588f, 0f, 0f, -0.9659f]

# Kill arrow if on path
scoreboard players set #arrow {ns}.data 0
execute at @s store success score #arrow {ns}.data run kill @e[type=arrow,limit=1,sort=nearest,distance=..1]
execute if score #arrow {ns}.data matches 1 on passengers run kill @s
execute if score #arrow {ns}.data matches 1 run kill @s
execute if score #arrow {ns}.data matches 1 unless score #test_mode {ns}.data matches 1 run advancement grant @p[tag=!detached,gamemode=!spectator,scores={{{ns}.temp.role=3}}] only {ns}:visible/73
execute if score #arrow {ns}.data matches 1 run return 0

# Kill player if on path
execute unless score #test_mode {ns}.data matches 1 at @s positioned ~ ~-1 ~ if entity @a[tag=!detached,gamemode=adventure,distance=..1] run advancement grant @p[tag=!detached,gamemode=adventure,scores={{{ns}.temp.role=3}}] only {ns}:visible/15
execute at @s positioned ~ ~-1 ~ as @a[tag=!detached,gamemode=adventure,distance=..1] at @s run function {ns}:modes/murder_mystery/kill_player

# Kill the knife if on destination (x10 for 1 digit)
execute store result score #x {ns}.data run data get entity @s Pos[0] 10
execute store result score #y {ns}.data run data get entity @s Pos[1] 10
execute store result score #z {ns}.data run data get entity @s Pos[2] 10
execute on passengers store result score #dest_x {ns}.data run data get entity @s item.components."minecraft:custom_data".destination[0] 10
execute on passengers store result score #dest_y {ns}.data run data get entity @s item.components."minecraft:custom_data".destination[1] 10
execute on passengers store result score #dest_z {ns}.data run data get entity @s item.components."minecraft:custom_data".destination[2] 10
function {ns}:modes/murder_mystery/translations/throw_loop
scoreboard players operation #x {ns}.data -= #dest_x {ns}.data
scoreboard players operation #y {ns}.data -= #dest_y {ns}.data
scoreboard players operation #z {ns}.data -= #dest_z {ns}.data
execute if score #x {ns}.data matches -10..10 if score #y {ns}.data matches -10..10 if score #z {ns}.data matches -10..10 on passengers run kill @s
execute if score #x {ns}.data matches -10..10 if score #y {ns}.data matches -10..10 if score #z {ns}.data matches -10..10 run kill @s
""")

	# /throw/on_entry_point
	write_function(f"{path}/throw/on_entry_point", f"""
# Copy destination (absolute x10)
data modify storage {ns}:temp destination set value [0.0d, 0.0d, 0.0d]
scoreboard players operation #destination_x {ns}.data = $raycast.targeted_block.x bs.lambda
scoreboard players operation #destination_y {ns}.data = $raycast.targeted_block.y bs.lambda
scoreboard players operation #destination_z {ns}.data = $raycast.targeted_block.z bs.lambda
scoreboard players operation #destination_x {ns}.data *= #10 {ns}.data
scoreboard players operation #destination_y {ns}.data *= #10 {ns}.data
scoreboard players operation #destination_z {ns}.data *= #10 {ns}.data

# Get the relative position to the block (x1000 -> x10)
scoreboard players operation #digit_x {ns}.data = $raycast.entry_point.x bs.lambda
scoreboard players operation #digit_y {ns}.data = $raycast.entry_point.y bs.lambda
scoreboard players operation #digit_z {ns}.data = $raycast.entry_point.z bs.lambda
scoreboard players operation #digit_x {ns}.data /= #100 {ns}.data
scoreboard players operation #digit_y {ns}.data /= #100 {ns}.data
scoreboard players operation #digit_z {ns}.data /= #100 {ns}.data

# Add the relative position to the block position
scoreboard players operation #destination_x {ns}.data += #digit_x {ns}.data
scoreboard players operation #destination_y {ns}.data += #digit_y {ns}.data
scoreboard players operation #destination_z {ns}.data += #digit_z {ns}.data

# Store the destination in the item
execute store result storage {ns}:temp destination[0] double 0.1 run scoreboard players get #destination_x {ns}.data
execute store result storage {ns}:temp destination[1] double 0.1 run scoreboard players get #destination_y {ns}.data
execute store result storage {ns}:temp destination[2] double 0.1 run scoreboard players get #destination_z {ns}.data
""")

	# /throw/player_tick
	write_function(f"{path}/throw/player_tick", f"""
# Reload
execute if score @s {ns}.temp.throw_reload matches 1.. run scoreboard players remove @s {ns}.temp.throw_reload 1

# Detect if right click
execute if score @s {ns}.temp.throw_reload matches 188 run function {path}/throw/throw
execute if score @s {ns}.temp.throw_reload matches 189.. run function {path}/throw/feedback
""")

	# /throw/throw (brace-heavy: plain string)
	write_function(f"{path}/throw/throw", f"""
# Clear slowness
effect clear @s slowness

# Use Bookshelf Raycast to get destination
execute anchored eyes positioned ^ ^ ^ run function #bs.raycast:run {{with:{{blocks:true,entities:false,max_distance:128,on_entry_point:"function {ns}:modes/murder_mystery/throw/on_entry_point"}}}}

# Summon the item
data modify storage {ns}:main Rotation set from entity @s Rotation
execute rotated ~ 0 run summon armor_stand ^ ^1.5 ^1.5 {{Tags:["{ns}.thrown"],Marker:true,Invisible:true,Passengers:[{{id:"item_display",item:{{id:"golden_sword",count:1}},item_display:"firstperson_righthand",Tags:["{ns}.thrown"]}}]}}
execute as @e[tag={ns}.thrown,sort=nearest,limit=2] run data modify entity @s Rotation set from storage {ns}:main Rotation
execute as @e[type=item_display,tag={ns}.thrown,sort=nearest,limit=1] run data modify entity @s item.components."minecraft:custom_data".destination set from storage {ns}:temp destination
""")
