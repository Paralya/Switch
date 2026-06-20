
# Imports
from stewbeet import Mem, write_function
from ..common import write_classic_death, write_modes_calls, write_no_drop
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "murder_mystery"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()

	# /calls/entity_hurt_player (non-standard call)
	write_function(f"{path}/calls/entity_hurt_player", f"""
advancement revoke @s only switch:murder_mystery/entity_hurt_player
execute if score #engine_state switch.data matches 3 if data storage switch:main {{current_game:"{mode}"}} if score #murder_mystery_seconds switch.data matches 0.. run function {path}/entity_hurt_player
""")


	# /apply_properties_to_mannequin
	write_function(f"{path}/apply_properties_to_mannequin", """
data merge entity @s {Invulnerable:true,Silent:true,hide_description:true,pose:"sleeping",immovable:true}
data modify entity @s Rotation set from storage switch:main Rotation

# Copy name to CustomName
data modify entity @s profile set from block 0 7 0 Items[0].components."minecraft:profile"
setblock 0 7 0 oak_sign
data modify block 0 7 0 front_text.messages[0] set value {"nbt":"temp","storage":"switch:main","interpret":true}
data modify entity @s CustomName set from block 0 7 0 front_text.messages[0]
""")

	# /compass
	write_function(f"{path}/compass", """
# Track nearest player with compass
data modify storage switch:main Pos set from entity @p[gamemode=!spectator,distance=0.1..] Pos
setblock 0 7 0 yellow_shulker_box
item replace block 0 7 0 container.0 with compass[item_name={"text":"Player Tracker","color":"yellow"},lodestone_tracker={"tracked":false,"target":{"dimension":"switch:game","pos":[I;10,10,10]}}]
execute store result block 0 7 0 Items[0].components."minecraft:lodestone_tracker".target.pos[0] int 1 run data get storage switch:main Pos[0]
execute store result block 0 7 0 Items[0].components."minecraft:lodestone_tracker".target.pos[1] int 1 run data get storage switch:main Pos[1]
execute store result block 0 7 0 Items[0].components."minecraft:lodestone_tracker".target.pos[2] int 1 run data get storage switch:main Pos[2]

item replace entity @s hotbar.4 from block 0 7 0 container.0
setblock 0 7 0 air

# Allow to see players waypoints
attribute @s waypoint_receive_range base reset
""")

	# /death
	write_classic_death(f"{path}/death")

	# /detect_end (brace-heavy: plain string, translation ref rewritten)
	write_function(f"{path}/detect_end", """
# On regarde l'état de la partie
scoreboard players set #game_state switch.data 0
execute if entity @a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=3}] unless entity @a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=1..2}] run scoreboard players set #game_state switch.data 1
execute if entity @a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=1..2}] unless entity @a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=3}] run scoreboard players set #game_state switch.data 2
execute unless entity @a[tag=!detached,gamemode=!spectator] run scoreboard players set #game_state switch.data 3

# 1 = Victoire Innocent
# 2 = Victoire Murder
# 3 = Plus personne

# Cas de fin de partie
execute if score #game_state switch.data matches 1..3 run scoreboard players set #remaining_time switch.data 0
execute if score #remaining_time switch.data matches 1 run scoreboard players set #remaining_time switch.data 0

# Cas des vainqueurs

execute if score #remaining_time switch.data matches ..1 if score #game_state switch.data matches 0 as @a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=1..2}] at @s run function switch:engine/add_win
execute if score #remaining_time switch.data matches ..1 if score #game_state switch.data matches 1 as @a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=3}] at @s run function switch:engine/add_win
execute if score #remaining_time switch.data matches ..1 if score #game_state switch.data matches 2 as @a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=1..2}] at @s run function switch:engine/add_win

function switch:modes/murder_mystery/translations/detect_end
execute if score #remaining_time switch.data matches ..1 unless score #test_mode switch.data matches 1 as @a[scores={switch.temp.role=3}] on attacker run advancement grant @s[scores={switch.temp.role=1}] only switch:visible/61

# Visuel de fin de partie
execute if score #remaining_time switch.data matches ..1 as @a[tag=!detached] at @s run playsound item.totem.use ambient @s
""")

	# /entity_hurt_player (brace-heavy: plain string)
	write_function(f"{path}/entity_hurt_player", """
# Advancement
scoreboard players set #suicide switch.data 1
execute on attacker run scoreboard players set #suicide switch.data 0
execute unless score #test_mode switch.data matches 1 if score #suicide switch.data matches 1 run advancement grant @s only switch:visible/64

# Kill yourself
function switch:modes/murder_mystery/kill_player
execute on attacker run scoreboard players add @s switch.stats.kills 1

# Kill the attacker if not murderer
execute if entity @s[scores={switch.temp.role=1..2}] on attacker if entity @s[gamemode=!spectator,scores={switch.temp.role=1..2}] at @s run function switch:modes/murder_mystery/kill_player
""")

	# /joined
	write_function(f"{path}/joined", f"""
# Ici : dans tous les cas, tuer la personne qui join
function {path}/death
""")

	# /kill_player (brace-heavy: plain string, translation ref rewritten)
	write_function(f"{path}/kill_player", """
# Playsound & Spectator
execute as @a[tag=!detached] at @s run playsound entity.player.hurt ambient @s
execute if entity @s[gamemode=!spectator] run scoreboard players add @s switch.stats.deaths 1
gamemode spectator @s

# Summon dead body with username
setblock 0 7 0 yellow_shulker_box
loot insert 0 7 0 loot switch:get_username
data modify storage switch:main Rotation set from entity @s Rotation
execute summon mannequin run function switch:modes/murder_mystery/apply_properties_to_mannequin
setblock 0 7 0 air

# Drop bow if detective
execute if data entity @s Inventory[].components."minecraft:custom_data".switch.detective_bow run summon item_display ~ ~1 ~ {item:{id:"bow",count:1},Tags:["switch.detective_bow"],Glowing:true}
execute if data entity @s equipment.offhand.components."minecraft:custom_data".switch.detective_bow run summon item_display ~ ~1 ~ {item:{id:"bow",count:1},Tags:["switch.detective_bow"],Glowing:true}

# Title & clear
function switch:modes/murder_mystery/translations/kill_player
clear @s

# Killed by murderer as murderer?
scoreboard players set #murderer_killer switch.data 0
execute on attacker if score @s switch.temp.role matches 3 run scoreboard players set #murderer_killer switch.data 1
execute unless score #test_mode switch.data matches 1 if score #murderer_killer switch.data matches 1 if score @s switch.temp.role matches 3 run advancement grant @s only switch:visible/80
""")

	# /no_drop
	write_no_drop(f"{path}/no_drop")

	# /process_end
	write_function(f"{path}/process_end", """
# Mise en spectateur
scoreboard players add #process_end switch.data 1
execute if score #process_end switch.data matches 1 run team leave @a[tag=!detached]
execute if score #process_end switch.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

# Obligatoire
execute if score #process_end switch.data matches 200 run function switch:engine/restart
""")

	# /second (brace-heavy: plain string, translation ref rewritten)
	write_function(f"{path}/second", """
# Timer
scoreboard players add #murder_mystery_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

# Annonce des rôles
execute if score #murder_mystery_seconds switch.data matches 0 as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s
execute if score #murder_mystery_seconds switch.data matches 0 as @a[scores={switch.temp.role=2}] run item replace entity @s hotbar.0 with bow[unbreakable={},item_name={"text":"Arc du Détective","color":"green"},lore=[{"text":"5 secondes pour recharger","color":"gray","italic":false}],custom_data={switch:{detective_bow:true}}]
execute if score #murder_mystery_seconds switch.data matches 0 as @a[scores={switch.temp.role=2}] run item replace entity @s hotbar.8 with arrow
execute if score #murder_mystery_seconds switch.data matches 0 as @a[scores={switch.temp.role=3}] if data entity @s {SelectedItemSlot:0} run item replace entity @s hotbar.1 with golden_sword[custom_data={switch:{murder_knife:true}},unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable","minecraft:attribute_modifiers"]},attribute_modifiers=[{type:"attack_damage",slot:"mainhand",id:"switch.weapon",amount:11111111,operation:"add_value"}],consumable={consume_seconds:1024}]
execute if score #murder_mystery_seconds switch.data matches 0 as @a[scores={switch.temp.role=3}] unless data entity @s {SelectedItemSlot:0} run item replace entity @s hotbar.0 with golden_sword[custom_data={switch:{murder_knife:true}},unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable","minecraft:attribute_modifiers"]},attribute_modifiers=[{type:"attack_damage",slot:"mainhand",id:"switch.weapon",amount:11111111,operation:"add_value"}],consumable={consume_seconds:1024}]
execute if score #murder_mystery_seconds switch.data matches 0 run scoreboard players set @a[scores={switch.temp.role=3}] switch.temp.throw_reload 0

# Summon gold ingots if low amount (~3 gold per player)
execute as @e[type=item,tag=switch.gold] at @s if block ~ ~-1 ~ barrier run kill @s
execute store result score #gold_count switch.data if entity @e[type=item,tag=switch.gold]
execute store result score #player_count switch.data if entity @a[tag=!detached,gamemode=!spectator]
scoreboard players operation #gold_count switch.data *= #100 switch.data
scoreboard players operation #gold_count switch.data /= #player_count switch.data
execute if score #murder_mystery_seconds switch.data matches 0.. if score #gold_count switch.data matches ..300 run function switch:modes/murder_mystery/summon_gold

# Reload detective bow
execute as @a[tag=!detached,gamemode=!spectator,nbt={Inventory:[{components:{"minecraft:custom_data":{switch:{detective_bow:true}}}}]}] unless data entity @s Inventory[{id:"minecraft:arrow"}] run scoreboard players add #detective_reload switch.data 1
execute if score #detective_reload switch.data matches 5.. run give @a[tag=!detached,gamemode=!spectator,nbt={Inventory:[{components:{"minecraft:custom_data":{switch:{detective_bow:true}}}}]}] arrow
execute if score #detective_reload switch.data matches 5.. run scoreboard players set #detective_reload switch.data 0

# Title actionbar
scoreboard players operation #second switch.data = #remaining_time switch.data
scoreboard players operation #minute switch.data = #remaining_time switch.data
scoreboard players operation #second switch.data %= #60 switch.data
scoreboard players operation #minute switch.data /= #60 switch.data
execute if score #murder_mystery_seconds switch.data matches 0 store result score #nb_murderers switch.data if entity @a[tag=!detached,scores={switch.temp.role=3}]
function switch:modes/murder_mystery/translations/second

# Track nearest player with compass
execute if score #murder_mystery_seconds switch.data matches 60.. as @a[scores={switch.temp.role=3}] at @s run function switch:modes/murder_mystery/compass
""")

	# /start (brace-heavy: plain string, translation ref rewritten)
	write_function(f"{path}/start", """
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] resistance infinite 255 true
effect give @a[tag=!detached] weakness infinite 255 true
function switch:utils/set_dynamic_time

execute in switch:game run gamerule minecraft:fall_damage false
execute in switch:game run gamerule minecraft:keep_inventory true

## Chargement de la map
scoreboard players set #do_spreadplayers switch.data 1
function switch:utils/choose_map_for {id:"murder_mystery", maps:["ghost_town","remelta_cluedo","jn_murder_mystery","charly_murder_2018","cluedo_casino","cluedo_camping"]}

function switch:modes/murder_mystery/translations/start
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

scoreboard players set #remaining_time switch.data 245
scoreboard players set #murder_mystery_seconds switch.data -15
scoreboard players set #murder_mystery_ticks switch.data 0
scoreboard players set #detective_reload switch.data 0
scoreboard players set #murderer_reload switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard objectives add switch.temp.role dummy
scoreboard objectives add switch.temp.nb_arrows_get dummy
scoreboard objectives add switch.temp.throw_reload dummy

# Scoreboard permanents
scoreboard objectives add switch.games_not_being_murderer dummy
scoreboard objectives add switch.games_not_being_detective dummy
execute as @a[tag=!detached] unless score @s switch.games_not_being_murderer matches 1.. run scoreboard players set @s switch.games_not_being_murderer 1
execute as @a[tag=!detached] unless score @s switch.games_not_being_detective matches 1.. run scoreboard players set @s switch.games_not_being_detective 1

# Title actionbar de leur pourcentage de chance
scoreboard players set #total_murderer switch.data 0
scoreboard players set #total_detective switch.data 0
scoreboard players operation #total_murderer switch.data += @a[tag=!detached] switch.games_not_being_murderer
scoreboard players operation #total_detective switch.data += @a[tag=!detached] switch.games_not_being_detective
execute as @a[tag=!detached] run function switch:modes/murder_mystery/percentage/title

# Choix du murder et du detective
function switch:modes/murder_mystery/percentage/select_roles

# Hide nametags
team add switch.temp.murder_mystery {"text":"[Murder Mystery]"}
#team modify switch.temp.murder_mystery prefix {"text":"[Murder Mystery] ","color":"aqua"}
team modify switch.temp.murder_mystery nametagVisibility never
team join switch.temp.murder_mystery @a[tag=!detached]

# Teleport players override
execute if data storage switch:main {map:"jn_murder_mystery"} run scoreboard players set #remaining_time switch.data 305

## Waypoints
# Remove everyone's waypoint receive range
execute as @a[tag=!detached] run attribute @s waypoint_receive_range base set 0
execute as @a[tag=!detached] run waypoint modify @s color green
execute as @a[tag=!detached,scores={switch.temp.role=3}] run waypoint modify @s color red
""")

	# /stop
	write_function(f"{path}/stop", """
team remove switch.temp.murder_mystery
scoreboard objectives remove switch.temp.role
scoreboard objectives remove switch.temp.nb_arrows_get
scoreboard objectives remove switch.temp.throw_reload
""")

	# /summon_gold
	write_function(f"{path}/summon_gold", """
execute if predicate switch:chance/0.1 at @r[gamemode=!spectator,tag=!detached] if block ~ ~ ~ air run summon item ~6 ~ ~ {Tags:["switch.gold"],Item:{id:"minecraft:gold_ingot",count:1}}
execute if predicate switch:chance/0.1 at @r[gamemode=!spectator,tag=!detached] if block ~ ~ ~ air run summon item ~-6 ~ ~ {Tags:["switch.gold"],Item:{id:"minecraft:gold_ingot",count:1}}
execute if predicate switch:chance/0.1 at @r[gamemode=!spectator,tag=!detached] if block ~ ~ ~ air run summon item ~ ~ ~6 {Tags:["switch.gold"],Item:{id:"minecraft:gold_ingot",count:1}}
execute if predicate switch:chance/0.1 at @r[gamemode=!spectator,tag=!detached] if block ~ ~ ~ air run summon item ~ ~ ~-6 {Tags:["switch.gold"],Item:{id:"minecraft:gold_ingot",count:1}}
execute if predicate switch:chance/0.1 at @r[gamemode=!spectator,tag=!detached] if block ~ ~ ~ air run summon item ~6 ~ ~6 {Tags:["switch.gold"],Item:{id:"minecraft:gold_ingot",count:1}}
execute if predicate switch:chance/0.1 at @r[gamemode=!spectator,tag=!detached] if block ~ ~ ~ air run summon item ~-6 ~ ~-6 {Tags:["switch.gold"],Item:{id:"minecraft:gold_ingot",count:1}}
execute if predicate switch:chance/0.1 at @r[gamemode=!spectator,tag=!detached] if block ~ ~ ~ air run summon item ~6 ~ ~6 {Tags:["switch.gold"],Item:{id:"minecraft:gold_ingot",count:1}}
execute if predicate switch:chance/0.1 at @r[gamemode=!spectator,tag=!detached] if block ~ ~ ~ air run summon item ~-6 ~ ~-6 {Tags:["switch.gold"],Item:{id:"minecraft:gold_ingot",count:1}}
""")

	# /tick (brace-heavy: plain string)
	write_function(f"{path}/tick", """
# Timer
scoreboard players add #murder_mystery_ticks switch.data 1

# Détection des morts
function switch:utils/on_death_run_function {function:"switch:modes/murder_mystery/death"}

# Give a bow with an arrow for players that have at least 10 golds
execute as @a[tag=!detached,gamemode=!spectator,nbt={Inventory:[{id:"minecraft:gold_ingot"}]}] run function switch:modes/murder_mystery/tick_ingot

# Prevent drops
execute as @e[type=item,tag=!switch.checked] run function switch:modes/murder_mystery/no_drop
execute at @e[type=item,nbt={Age:500s}] run particle sculk_charge_pop ~ ~ ~ .2 .2 .2 0.01 10
kill @e[type=arrow,nbt={inBlockState:{}}]
kill @e[type=item,nbt={Age:500s}]

# Detective bow
execute as @e[type=item_display,tag=switch.detective_bow] at @s positioned ~ ~-1 ~ run function switch:modes/murder_mystery/tick_bow

# Allow the murderer to throw their knife
scoreboard players add #rotation switch.data 30
scoreboard players operation #rotation switch.data %= #360 switch.data
execute as @a[scores={switch.temp.role=3}] at @s run function switch:modes/murder_mystery/throw/player_tick
execute as @e[type=armor_stand,tag=switch.thrown] at @s run function switch:modes/murder_mystery/throw/loop

# Fun
#execute as @a[tag=!detached,scores={switch.right_click=1..}] at @s run function switch:modes/murder_mystery/throw/throw

## Détection de fin de partie
execute if score #murder_mystery_seconds switch.data matches 1.. if score #remaining_time switch.data matches 1.. run function switch:modes/murder_mystery/detect_end
execute if score #remaining_time switch.data matches ..0 run function switch:modes/murder_mystery/process_end
""")

	# /tick_bow (brace-heavy: plain string, translation ref rewritten)
	write_function(f"{path}/tick_bow", """
# Rotate the bow
execute store result score #rotation switch.data run data get entity @s Rotation[0]
scoreboard players add #rotation switch.data 5
execute if score #rotation switch.data matches 360.. run scoreboard players remove #rotation switch.data 360
execute store result entity @s Rotation[0] float 1 run scoreboard players get #rotation switch.data

# Give bow to innocent player close
execute as @p[gamemode=!spectator,scores={switch.temp.role=1..2},distance=..1] if data entity @s Inventory[{id:"minecraft:bow"}] run clear @s bow
execute as @p[gamemode=!spectator,scores={switch.temp.role=1..2},distance=..1] run give @s bow[unbreakable={},item_name={"text":"Arc du Détective","color":"green"},lore=[{"text":"5 secondes pour recharger","color":"gray","italic":false}],custom_data={switch:{detective_bow:true}}]
execute as @p[gamemode=!spectator,scores={switch.temp.role=1..2},distance=..1] unless data entity @s Inventory[{id:"minecraft:arrow"}] run give @s arrow 1
function switch:modes/murder_mystery/translations/tick_bow
execute as @p[gamemode=!spectator,scores={switch.temp.role=1..2},distance=..1] as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s
execute if entity @p[gamemode=!spectator,scores={switch.temp.role=1..2},distance=..1] run kill @s
""")

	# /tick_ingot
	write_function(f"{path}/tick_ingot", """
scoreboard players set #count switch.data 0
execute store result score #count switch.data run clear @s gold_ingot 0

# If count >= 10, give bow and arrow
execute if score #count switch.data matches 10.. run clear @s gold_ingot 10
execute if score #count switch.data matches 10.. unless data entity @s Inventory[{id:"minecraft:bow"}] run give @s bow[unbreakable={}]
execute if score #count switch.data matches 10.. run give @s arrow
execute if score #count switch.data matches 10.. run scoreboard players add @s switch.temp.nb_arrows_get 1
execute unless score #test_mode switch.data matches 1 if score #count switch.data matches 10.. if score @s switch.temp.nb_arrows_get matches 2.. run advancement grant @s only switch:visible/34
""")

	# === percentage ===

	# /percentage/_choose_from_list
	write_function(f"{path}/percentage/_choose_from_list", """
data modify storage switch:temp input set value {index:0}
execute store result score #modulo_rand switch.data run data get storage switch:temp list
function switch:utils/get_random/main
execute store result storage switch:temp input.index int 1 run scoreboard players get #random switch.data
scoreboard players set #chosen_id switch.data 0
function switch:modes/murder_mystery/percentage/get_id_from_list with storage switch:temp input
""")

	# /percentage/choose_pair
	write_function(f"{path}/percentage/choose_pair", """
## Choose a murderer
# Get a list of all players ID multiplied by their score
data modify storage switch:temp list set value []
execute as @a[scores={switch.temp.role=1}] run function switch:modes/murder_mystery/percentage/get_murderer_id

# Choose a random ID from the list
function switch:modes/murder_mystery/percentage/_choose_from_list
execute as @a[scores={switch.temp.role=1}] if score @s switch.id = #chosen_id switch.data run scoreboard players set @s switch.temp.role 3


## Choose a detective
# Get a list of all players ID multiplied by their score
data modify storage switch:temp list set value []
execute as @a[scores={switch.temp.role=1}] run function switch:modes/murder_mystery/percentage/get_detective_id

# Choose a random ID from the list
function switch:modes/murder_mystery/percentage/_choose_from_list
execute as @a[scores={switch.temp.role=1}] if score @s switch.id = #chosen_id switch.data run scoreboard players set @s switch.temp.role 2
""")

	# /percentage/get_detective_id
	write_function(f"{path}/percentage/get_detective_id", f"""
# Store ID in storage
execute store result storage switch:temp temp int 1 run scoreboard players get @s switch.id

# Add it multiple times
scoreboard players operation #count switch.data = @s switch.games_not_being_detective
execute if score #count switch.data matches 1.. run function {path}/percentage/get_detective_id_loop
""")

	# /percentage/get_detective_id_loop
	write_function(f"{path}/percentage/get_detective_id_loop", f"""
# Add the ID to the list
data modify storage switch:temp list append from storage switch:temp temp

# Loop again
scoreboard players remove #count switch.data 1
execute if score #count switch.data matches 1.. run function {path}/percentage/get_detective_id_loop
""")

	# /percentage/get_id_from_list
	write_function(f"{path}/percentage/get_id_from_list", """
$execute store result score #chosen_id switch.data run data get storage switch:temp list[$(index)]
""")

	# /percentage/get_murderer_id
	write_function(f"{path}/percentage/get_murderer_id", f"""
# Store ID in storage
execute store result storage switch:temp temp int 1 run scoreboard players get @s switch.id

# Add it multiple times
scoreboard players operation #count switch.data = @s switch.games_not_being_murderer
execute if score #count switch.data matches 1.. run function {path}/percentage/get_murderer_id_loop
""")

	# /percentage/get_murderer_id_loop
	write_function(f"{path}/percentage/get_murderer_id_loop", f"""
# Add the ID to the list
data modify storage switch:temp list append from storage switch:temp temp

# Loop again
scoreboard players remove #count switch.data 1
execute if score #count switch.data matches 1.. run function {path}/percentage/get_murderer_id_loop
""")

	# /percentage/select_roles (brace-heavy: plain string)
	write_function(f"{path}/percentage/select_roles", """
# Set everyone innocent
scoreboard players set @a[tag=!detached] switch.temp.role 1

# Choose a pair of detective + murderer
function switch:modes/murder_mystery/percentage/choose_pair

# Get number of players
execute store result score #nb_players switch.data if entity @a[tag=!detached]
execute if score #nb_players switch.data matches 15.. run function switch:modes/murder_mystery/percentage/choose_pair
execute if score #nb_players switch.data matches 27.. run function switch:modes/murder_mystery/percentage/choose_pair
execute if score #nb_players switch.data matches 45.. run function switch:modes/murder_mystery/percentage/choose_pair
execute if score #nb_players switch.data matches 64.. run function switch:modes/murder_mystery/percentage/choose_pair

# Probabilities
scoreboard players add @a[scores={switch.temp.role=1}] switch.games_not_being_detective 1
scoreboard players add @a[scores={switch.temp.role=1}] switch.games_not_being_murderer 1
scoreboard players reset @a[scores={switch.temp.role=2}] switch.games_not_being_detective
scoreboard players reset @a[scores={switch.temp.role=3}] switch.games_not_being_murderer
""")

	# /percentage/title (translation ref)
	write_function(f"{path}/percentage/title", f"""

# Calculate percentages
scoreboard players operation #percentage_murderer switch.data = @s switch.games_not_being_murderer
scoreboard players operation #percentage_murderer switch.data *= #100 switch.data
scoreboard players operation #percentage_murderer switch.data /= #total_murderer switch.data
scoreboard players operation #percentage_detective switch.data = @s switch.games_not_being_detective
scoreboard players operation #percentage_detective switch.data *= #100 switch.data
scoreboard players operation #percentage_detective switch.data /= #total_detective switch.data

# Display
function {translations}/percentage_title
""")

	# === throw ===

	# /throw/advancement (brace-heavy: plain string)
	write_function(f"{path}/throw/advancement", """
# Revoke advancement
advancement revoke @s only switch:murder_mystery/right_click

# Depending on the cooldown, launch proper function
execute if score @s switch.temp.throw_reload matches 0 if data entity @s SelectedItem{id:"minecraft:golden_sword"} run function switch:modes/murder_mystery/throw/init
execute if score @s switch.temp.throw_reload matches 1..187 run function switch:modes/murder_mystery/throw/error
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
	write_function(f"{path}/throw/init", """
scoreboard players set @s switch.temp.throw_reload 200
effect give @s slowness 2 4 true
""")

	# /throw/loop (brace-heavy: plain string, translation ref rewritten)
	write_function(f"{path}/throw/loop", """
# Go forward and rotate (360/12 = 30°)
tp @s ^ ^ ^0.69
execute if score #rotation switch.data matches 000..029 on passengers run data modify entity @s transformation.left_rotation set value [0f,      0f, 0f, 1f]
execute if score #rotation switch.data matches 030..059 on passengers run data modify entity @s transformation.left_rotation set value [0.2588f, 0f, 0f, 0.9659f]
execute if score #rotation switch.data matches 060..089 on passengers run data modify entity @s transformation.left_rotation set value [0.5f,    0f, 0f, 0.8660f]
execute if score #rotation switch.data matches 090..119 on passengers run data modify entity @s transformation.left_rotation set value [0.7071f, 0f, 0f, 0.7071f]
execute if score #rotation switch.data matches 120..149 on passengers run data modify entity @s transformation.left_rotation set value [0.8660f, 0f, 0f, 0.5f]
execute if score #rotation switch.data matches 150..179 on passengers run data modify entity @s transformation.left_rotation set value [0.9659f, 0f, 0f, 0.2588f]
execute if score #rotation switch.data matches 180..209 on passengers run data modify entity @s transformation.left_rotation set value [1f,      0f, 0f, 0f]
execute if score #rotation switch.data matches 210..239 on passengers run data modify entity @s transformation.left_rotation set value [0.9659f, 0f, 0f, -0.2588f]
execute if score #rotation switch.data matches 240..269 on passengers run data modify entity @s transformation.left_rotation set value [0.8660f, 0f, 0f, -0.5f]
execute if score #rotation switch.data matches 270..299 on passengers run data modify entity @s transformation.left_rotation set value [0.7071f, 0f, 0f, -0.7071f]
execute if score #rotation switch.data matches 300..329 on passengers run data modify entity @s transformation.left_rotation set value [0.5f,    0f, 0f, -0.8660f]
execute if score #rotation switch.data matches 330..359 on passengers run data modify entity @s transformation.left_rotation set value [0.2588f, 0f, 0f, -0.9659f]

# Kill arrow if on path
scoreboard players set #arrow switch.data 0
execute at @s store success score #arrow switch.data run kill @e[type=arrow,limit=1,sort=nearest,distance=..1]
execute if score #arrow switch.data matches 1 on passengers run kill @s
execute if score #arrow switch.data matches 1 run kill @s
execute if score #arrow switch.data matches 1 unless score #test_mode switch.data matches 1 run advancement grant @p[tag=!detached,gamemode=!spectator,scores={switch.temp.role=3}] only switch:visible/73
execute if score #arrow switch.data matches 1 run return 0

# Kill player if on path
execute unless score #test_mode switch.data matches 1 at @s positioned ~ ~-1 ~ if entity @a[tag=!detached,gamemode=adventure,distance=..1] run advancement grant @p[tag=!detached,gamemode=adventure,scores={switch.temp.role=3}] only switch:visible/15
execute at @s positioned ~ ~-1 ~ as @a[tag=!detached,gamemode=adventure,distance=..1] at @s run function switch:modes/murder_mystery/kill_player

# Kill the knife if on destination (x10 for 1 digit)
execute store result score #x switch.data run data get entity @s Pos[0] 10
execute store result score #y switch.data run data get entity @s Pos[1] 10
execute store result score #z switch.data run data get entity @s Pos[2] 10
execute on passengers store result score #dest_x switch.data run data get entity @s item.components."minecraft:custom_data".destination[0] 10
execute on passengers store result score #dest_y switch.data run data get entity @s item.components."minecraft:custom_data".destination[1] 10
execute on passengers store result score #dest_z switch.data run data get entity @s item.components."minecraft:custom_data".destination[2] 10
function switch:modes/murder_mystery/translations/throw_loop
scoreboard players operation #x switch.data -= #dest_x switch.data
scoreboard players operation #y switch.data -= #dest_y switch.data
scoreboard players operation #z switch.data -= #dest_z switch.data
execute if score #x switch.data matches -10..10 if score #y switch.data matches -10..10 if score #z switch.data matches -10..10 on passengers run kill @s
execute if score #x switch.data matches -10..10 if score #y switch.data matches -10..10 if score #z switch.data matches -10..10 run kill @s
""")

	# /throw/on_entry_point
	write_function(f"{path}/throw/on_entry_point", """
# Copy destination (absolute x10)
data modify storage switch:temp destination set value [0.0d, 0.0d, 0.0d]
scoreboard players operation #destination_x switch.data = $raycast.targeted_block.x bs.lambda
scoreboard players operation #destination_y switch.data = $raycast.targeted_block.y bs.lambda
scoreboard players operation #destination_z switch.data = $raycast.targeted_block.z bs.lambda
scoreboard players operation #destination_x switch.data *= #10 switch.data
scoreboard players operation #destination_y switch.data *= #10 switch.data
scoreboard players operation #destination_z switch.data *= #10 switch.data

# Get the relative position to the block (x1000 -> x10)
scoreboard players operation #digit_x switch.data = $raycast.entry_point.x bs.lambda
scoreboard players operation #digit_y switch.data = $raycast.entry_point.y bs.lambda
scoreboard players operation #digit_z switch.data = $raycast.entry_point.z bs.lambda
scoreboard players operation #digit_x switch.data /= #100 switch.data
scoreboard players operation #digit_y switch.data /= #100 switch.data
scoreboard players operation #digit_z switch.data /= #100 switch.data

# Add the relative position to the block position
scoreboard players operation #destination_x switch.data += #digit_x switch.data
scoreboard players operation #destination_y switch.data += #digit_y switch.data
scoreboard players operation #destination_z switch.data += #digit_z switch.data

# Store the destination in the item
execute store result storage switch:temp destination[0] double 0.1 run scoreboard players get #destination_x switch.data
execute store result storage switch:temp destination[1] double 0.1 run scoreboard players get #destination_y switch.data
execute store result storage switch:temp destination[2] double 0.1 run scoreboard players get #destination_z switch.data
""")

	# /throw/player_tick
	write_function(f"{path}/throw/player_tick", f"""
# Reload
execute if score @s switch.temp.throw_reload matches 1.. run scoreboard players remove @s switch.temp.throw_reload 1

# Detect if right click
execute if score @s switch.temp.throw_reload matches 188 run function {path}/throw/throw
execute if score @s switch.temp.throw_reload matches 189.. run function {path}/throw/feedback
""")

	# /throw/throw (brace-heavy: plain string)
	write_function(f"{path}/throw/throw", """
# Clear slowness
effect clear @s slowness

# Use Bookshelf Raycast to get destination
execute anchored eyes positioned ^ ^ ^ run function #bs.raycast:run {with:{blocks:true,entities:false,max_distance:128,on_entry_point:"function switch:modes/murder_mystery/throw/on_entry_point"}}

# Summon the item
data modify storage switch:main Rotation set from entity @s Rotation
execute rotated ~ 0 run summon armor_stand ^ ^1.5 ^1.5 {Tags:["switch.thrown"],Marker:true,Invisible:true,Passengers:[{id:"item_display",item:{id:"golden_sword",count:1},item_display:"firstperson_righthand",Tags:["switch.thrown"]}]}
execute as @e[tag=switch.thrown,sort=nearest,limit=2] run data modify entity @s Rotation set from storage switch:main Rotation
execute as @e[type=item_display,tag=switch.thrown,sort=nearest,limit=1] run data modify entity @s item.components."minecraft:custom_data".destination set from storage switch:temp destination
""")
