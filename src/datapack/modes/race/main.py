
# ruff: noqa: W291
# Imports
from stewbeet import Mem, write_function

from ..emit import write_modes_calls, write_time_xp_bar
from .translations import write_translations

# Constants
CHECKPOINT_SCAN_RADIUS: int = 20
""" Radius around a checkpoint marker outside which no player can be inside its box.

check_player_pos reads three coordinates out of the player NBT, the most expensive thing a hot path can do, so it must only run for players who could plausibly pass.
The widest box in the map tables is 14x5x8 and comparing truncated coordinates adds a block per axis, which puts every winning position within sqrt(15^2 + 6^2 + 9^2) = 18.5 blocks. check_conventions.py enforces the bound.
"""


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "race"
	path: str = f"{ns}:modes/{mode}"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()


	# /advancements/inventory_changed
	write_function(f"{path}/advancements/inventory_changed", f"""
execute if score #engine_state {ns}.data matches 3 if data storage {ns}:main {{current_game:"race"}} if entity @s[gamemode=!creative,tag=!detached] run function {ns}:modes/race/advancements/inventory_changed_confirm
advancement revoke @s only {ns}:race/inventory_changed
""")

	# /advancements/inventory_changed_confirm
	write_function(f"{path}/advancements/inventory_changed_confirm", f"""
# Copy for faster nbt check
data modify storage {ns}:main Inventory set from entity @s Inventory

# If any item is missing, set #success to 1
scoreboard players set #success {ns}.data 0
execute if score #success {ns}.data matches 0 store success score #success {ns}.data unless data storage {ns}:main Inventory[{{Slot:0b}}].components."minecraft:custom_data".{ns}.classic_respawn
execute if score #success {ns}.data matches 0 store success score #success {ns}.data unless data storage {ns}:main Inventory[{{Slot:1b}}].components."minecraft:custom_data".{ns}.hard_respawn
execute if score #success {ns}.data matches 0 store success score #success {ns}.data unless data storage {ns}:main Inventory[{{Slot:8b}}].components."minecraft:custom_data".{ns}.change_map

# If any item is missing, clear and regive items
execute if score #success {ns}.data matches 1 run clear @s warped_fungus_on_a_stick
execute if score #success {ns}.data matches 1 run item replace entity @s hotbar.0 with warped_fungus_on_a_stick[unbreakable={{}},item_name={{"text":"Classic Respawn","color":"yellow"}},item_model="{ns}:wormhole_potion",custom_data={{{ns}:{{classic_respawn:1b}}}}]
execute if score #success {ns}.data matches 1 run item replace entity @s hotbar.1 with warped_fungus_on_a_stick[unbreakable={{}},item_name={{"text":"Hard Respawn","color":"yellow"}},item_model="{ns}:travel_staff",custom_data={{{ns}:{{hard_respawn:1b}}}}]
execute if score #success {ns}.data matches 1 if score #can_vote {ns}.data matches 1 run item replace entity @s[scores={{{ns}.lang=0}}] hotbar.8 with warped_fungus_on_a_stick[unbreakable={{}},item_name={{"text":"Vote pour changer de map","color":"yellow"}},item_model="{ns}:quarry_configurator",custom_data={{{ns}:{{change_map:1b,vote:1b}}}}]
execute if score #success {ns}.data matches 1 if score #can_vote {ns}.data matches 1 run item replace entity @s[scores={{{ns}.lang=1}}] hotbar.8 with warped_fungus_on_a_stick[unbreakable={{}},item_name={{"text":"Vote to change map","color":"yellow"}},item_model="{ns}:quarry_configurator",custom_data={{{ns}:{{change_map:1b,vote:1b}}}}]
""")

	# /checkpoints/check_player_pos (translation ref rewritten)
	write_function(f"{path}/checkpoints/check_player_pos", f"""
execute store result score #px {ns}.data run data get entity @s Pos[0]
execute store result score #py {ns}.data run data get entity @s Pos[1]
execute store result score #pz {ns}.data run data get entity @s Pos[2]


scoreboard players operation #px {ns}.data -= #x {ns}.data
scoreboard players operation #py {ns}.data -= #y {ns}.data
scoreboard players operation #pz {ns}.data -= #z {ns}.data
execute if score #px {ns}.data matches ..-1 run scoreboard players operation #px {ns}.data *= #-1 {ns}.data
execute if score #py {ns}.data matches ..-1 run scoreboard players operation #py {ns}.data *= #-1 {ns}.data
execute if score #pz {ns}.data matches ..-1 run scoreboard players operation #pz {ns}.data *= #-1 {ns}.data

execute if score #px {ns}.data <= #dx {ns}.data if score #py {ns}.data <= #dy {ns}.data if score #pz {ns}.data <= #dz {ns}.data run function {ns}:modes/race/checkpoints/player_in

function {ns}:modes/race/translations/checkpoints_check_player_pos
""")

	# /checkpoints/forced_respawn (translation ref rewritten)
	write_function(f"{path}/checkpoints/forced_respawn", f"""
function {ns}:modes/race/checkpoints/respawn/hard
function {ns}:modes/race/translations/checkpoints_forced_respawn
execute at @s run playsound stardust:wormhole_potion ambient @s ^ ^ ^3
execute at @s run particle portal ^ ^1 ^1 1 1 1 1 1000
""")

	# /checkpoints/player_in (translation ref rewritten)
	write_function(f"{path}/checkpoints/player_in", f"""
# Switch to next checkpoint
scoreboard players add @s {ns}.checkpoint 1
scoreboard players add @s {ns}.temp.checkpoint 1
scoreboard players operation @s {ns}.checkpoint %= #modulo {ns}.data
execute if score @s {ns}.checkpoint matches 0 run scoreboard players add @s {ns}.lap 1
execute if score @s {ns}.checkpoint matches 0 unless score @s {ns}.lap > #total_laps {ns}.data run scoreboard players operation @s {ns}.temp.pos_on_last_lap = @s {ns}.temp.pv_classement

# Playsounds & messages
execute if score @s {ns}.checkpoint matches 0 at @e[limit=2] at @s run playsound item.goat_horn.sound.1 ambient @s ^ ^ ^10 100 1 1
function {ns}:modes/race/translations/checkpoints_player_in
execute unless score @s {ns}.checkpoint matches 0 at @s run playsound entity.player.levelup ambient @s ^ ^ ^10 100 2 1
execute if score @s {ns}.checkpoint matches 0 if score @s {ns}.lap > #total_laps {ns}.data run function {ns}:modes/race/complete

# Checkpoint remember
function {ns}:modes/race/checkpoints/remember/main
""")

	# /checkpoints/remember/get_from_kart
	write_function(f"{path}/checkpoints/remember/get_from_kart", f"""
function {ns}:modes/race/tm_blocks/reset_checkpoint

data modify storage {ns}:main temp.Pos set from entity @s Pos
data modify storage {ns}:main temp.Rotation set from entity @s Rotation
data modify storage {ns}:main temp.Motion set from entity @s Motion
data modify storage {ns}:main temp.Tags set from entity @s Tags
data modify storage {ns}:main temp.active_effects set from entity @s active_effects
data modify storage {ns}:main temp.Fire set from entity @s Fire
data modify storage {ns}:main temp.HurtTime set from entity @s HurtTime
data modify storage {ns}:main temp.Brain set from entity @s Brain
execute store result storage {ns}:main temp.scores.shopping_kart.engine int 1 run scoreboard players get @s shopping_kart.engine
execute store result storage {ns}:main temp.scores.shopping_kart.max_engine int 1 run scoreboard players get @s shopping_kart.max_engine
execute store result storage {ns}:main temp.scores.shopping_kart.motion_x int 1 run scoreboard players get @s shopping_kart.motion_x
execute store result storage {ns}:main temp.scores.shopping_kart.motion_z int 1 run scoreboard players get @s shopping_kart.motion_z
execute store result storage {ns}:main temp.scores.shopping_kart.predicted_pos_x int 1 run scoreboard players get @s shopping_kart.predicted_pos_x
execute store result storage {ns}:main temp.scores.shopping_kart.predicted_pos_z int 1 run scoreboard players get @s shopping_kart.predicted_pos_z
execute store result storage {ns}:main temp.scores.shopping_kart.old_pos_x int 1 run scoreboard players get @s shopping_kart.old_pos_x
execute store result storage {ns}:main temp.scores.shopping_kart.old_pos_y int 1 run scoreboard players get @s shopping_kart.old_pos_y
execute store result storage {ns}:main temp.scores.shopping_kart.old_pos_z int 1 run scoreboard players get @s shopping_kart.old_pos_z
execute store result storage {ns}:main temp.scores.shopping_kart.booster_timer int 1 run scoreboard players get @s shopping_kart.booster_timer
execute store result storage {ns}:main temp.scores.shopping_kart.reactor_boost int 1 run scoreboard players get @s shopping_kart.reactor_boost
execute store result storage {ns}:main temp.scores.shopping_kart.cruise_control int 1 run scoreboard players get @s shopping_kart.cruise_control
""")

	# /checkpoints/remember/main
	write_function(f"{path}/checkpoints/remember/main", f"""
scoreboard players operation @s {ns}.respawn_cp_id = #respawn_cp_id {ns}.data
execute if score #can_hard_reset {ns}.data matches 1 run scoreboard players operation @s {ns}.hard_respawn_cp_id = #respawn_cp_id {ns}.data

tag @s add {ns}.temp
data modify storage {ns}:main temp set value {{id:0,Pos:[0.d,0.d,0.d],Rotation:[0.f,0.f],Motion:[0.d,0.d,0.d],Tags:[],scores:{{shopping_kart:{{engine:0,max_engine:0,motion_x:0,motion_z:0,predicted_pos_x:0,predicted_pos_z:0,old_pos_x:0,old_pos_y:0,old_pos_z:0,booster_timer:0,reactor_boost:0,cruise_control:0}}}}}}
execute as @e[tag={ns}.vehicle,predicate={ns}:have_temp_player_passenger] run function {ns}:modes/race/checkpoints/remember/get_from_kart
execute store result storage {ns}:main temp.id int 1 run scoreboard players get @s {ns}.temp.id
tag @s remove {ns}.temp

data modify storage {ns}:main copy set from storage {ns}:main respawn_states
data modify storage {ns}:main new set value []

execute if data storage {ns}:main copy[0] run function {ns}:modes/race/checkpoints/remember/storage_loop
data modify storage {ns}:main respawn_states set from storage {ns}:main new
""")

	# /checkpoints/remember/storage_loop
	write_function(f"{path}/checkpoints/remember/storage_loop", f"""
execute store result score #id {ns}.data run data get storage {ns}:main copy[0].id
execute if score @s {ns}.temp.id = #id {ns}.data run data modify storage {ns}:main new append from storage {ns}:main temp
execute unless score @s {ns}.temp.id = #id {ns}.data run data modify storage {ns}:main new append from storage {ns}:main copy[0]

data remove storage {ns}:main copy[0]
execute if data storage {ns}:main copy[0] run function {ns}:modes/race/checkpoints/remember/storage_loop
""")

	# /checkpoints/respawn/classic
	write_function(f"{path}/checkpoints/respawn/classic", f"""
scoreboard players operation #p_id {ns}.data = @s {ns}.temp.id
data modify storage {ns}:main copy set from storage {ns}:main respawn_states
execute if data storage {ns}:main copy[0] run function {ns}:modes/race/checkpoints/respawn/get_storage_loop

tag @s add {ns}.temp
execute at @s positioned 0 0 0 summon marker run function {ns}:modes/race/checkpoints/respawn/from_marker
execute on vehicle run tp @p[tag={ns}.temp] @s
tag @s remove {ns}.temp

tag @s add {ns}.playsound
""")

	# /checkpoints/respawn/from_kart
	write_function(f"{path}/checkpoints/respawn/from_kart", f"""
# copy[0] is the respawn state
tp @s ~ ~ ~ ~ ~
data modify entity @s Pos set from storage {ns}:main copy[0].Pos
data modify entity @s Rotation set from storage {ns}:main copy[0].Rotation
data modify entity @s Motion set from storage {ns}:main copy[0].Motion
data modify entity @s Tags set from storage {ns}:main copy[0].Tags
data modify entity @s active_effects set from storage {ns}:main copy[0].active_effects
data modify entity @s Fire set from storage {ns}:main copy[0].Fire
data modify entity @s HurtTime set from storage {ns}:main copy[0].HurtTime
data modify entity @s Brain set from storage {ns}:main copy[0].Brain
execute store result score @s shopping_kart.engine run data get storage {ns}:main copy[0].scores.shopping_kart.engine
execute store result score @s shopping_kart.max_engine run data get storage {ns}:main copy[0].scores.shopping_kart.max_engine
execute store result score @s shopping_kart.motion_x run data get storage {ns}:main copy[0].scores.shopping_kart.motion_x
execute store result score @s shopping_kart.motion_z run data get storage {ns}:main copy[0].scores.shopping_kart.motion_z
execute store result score @s shopping_kart.predicted_pos_x run data get storage {ns}:main copy[0].scores.shopping_kart.predicted_pos_x
execute store result score @s shopping_kart.predicted_pos_z run data get storage {ns}:main copy[0].scores.shopping_kart.predicted_pos_z
execute store result score @s shopping_kart.old_pos_x run data get storage {ns}:main copy[0].scores.shopping_kart.old_pos_x
execute store result score @s shopping_kart.old_pos_y run data get storage {ns}:main copy[0].scores.shopping_kart.old_pos_y
execute store result score @s shopping_kart.old_pos_z run data get storage {ns}:main copy[0].scores.shopping_kart.old_pos_z
execute store result score @s shopping_kart.booster_timer run data get storage {ns}:main copy[0].scores.shopping_kart.booster_timer
execute store result score @s shopping_kart.reactor_boost run data get storage {ns}:main copy[0].scores.shopping_kart.reactor_boost
execute store result score @s shopping_kart.cruise_control run data get storage {ns}:main copy[0].scores.shopping_kart.cruise_control
scoreboard players remove @s shopping_kart.old_pos_y 100000
scoreboard players reset @s {ns}.temp.compteur
scoreboard players reset @s {ns}.effects.timer
""")

	# /checkpoints/respawn/from_marker
	write_function(f"{path}/checkpoints/respawn/from_marker", f"""
data modify entity @s Pos set from storage {ns}:main copy[0].Pos
data modify entity @s Rotation set from storage {ns}:main copy[0].Rotation
execute at @s as @n[tag={ns}.vehicle,predicate={ns}:have_temp_player_passenger] run function {ns}:modes/race/checkpoints/respawn/from_kart
kill @s
""")

	# /checkpoints/respawn/get_storage_loop
	write_function(f"{path}/checkpoints/respawn/get_storage_loop", f"""
execute store result score #id {ns}.data run data get storage {ns}:main copy[0].id
execute unless score #p_id {ns}.data = #id {ns}.data run data remove storage {ns}:main copy[0]
execute unless score #p_id {ns}.data = #id {ns}.data if data storage {ns}:main copy[0] run function {ns}:modes/race/checkpoints/respawn/get_storage_loop
""")

	# /checkpoints/respawn/hard
	write_function(f"{path}/checkpoints/respawn/hard", f"""
tag @s add {ns}.temp
scoreboard players operation #respawn_cp_id {ns}.data = @s {ns}.hard_respawn_cp_id
execute if score @s {ns}.hard_respawn_cp_id matches -1 run scoreboard players operation #respawn_cp_id {ns}.data = #default {ns}.hard_respawn_cp_id
execute at @e[tag={ns}.checkpoint,predicate={ns}:has_same_respawn_cp_id] as @e[tag={ns}.vehicle,predicate={ns}:have_temp_player_passenger] run function {ns}:modes/race/checkpoints/respawn/hard_from_kart
tag @s remove {ns}.temp

tag @s add {ns}.playsound
""")

	# /checkpoints/respawn/hard_from_kart
	write_function(f"{path}/checkpoints/respawn/hard_from_kart", f"""
tp @s ~ ~ ~ ~ ~
data modify entity @s Motion set value [0.d, 0.d, 0.d]
data modify entity @s Tags set value ["{ns}.vehicle"]
execute if score #map_type {ns}.data matches 0 run tag @s add shopping_kart.kart
data modify entity @s Fire set value 0s
data modify entity @s Brain set value {{memories:{{}}}}
scoreboard players set @s shopping_kart.engine 0
scoreboard players set @s shopping_kart.booster_timer 0
scoreboard players set @s shopping_kart.reactor_boost 0
scoreboard players set @s shopping_kart.cruise_control 0
scoreboard players remove @s shopping_kart.old_pos_y 100000
scoreboard players reset @s {ns}.temp.compteur
scoreboard players reset @s {ns}.effects.timer
""")

	# /checkpoints/setup
	write_function(f"{path}/checkpoints/setup", f"""
# Apply Checkpoint ID for Respawn
scoreboard players add #next_id {ns}.temp.id 1
scoreboard players operation @s {ns}.temp.id = #next_id {ns}.temp.id

execute store result score @s {ns}.checkpoint run data get entity @s data.cp
execute store result score @s {ns}.temp.x run data get entity @s Pos[0]
execute store result score @s {ns}.temp.y run data get entity @s Pos[1]
execute store result score @s {ns}.temp.z run data get entity @s Pos[2]
execute store result score @s {ns}.temp.dx run data get entity @s data.dx
execute store result score @s {ns}.temp.dy run data get entity @s data.dy
execute store result score @s {ns}.temp.dz run data get entity @s data.dz
""")

	# /checkpoints/tick
	write_function(f"{path}/checkpoints/tick", f"""
scoreboard players operation #x {ns}.data = @s {ns}.temp.x
scoreboard players operation #y {ns}.data = @s {ns}.temp.y
scoreboard players operation #z {ns}.data = @s {ns}.temp.z
scoreboard players operation #dx {ns}.data = @s {ns}.temp.dx
scoreboard players operation #dy {ns}.data = @s {ns}.temp.dy
scoreboard players operation #dz {ns}.data = @s {ns}.temp.dz
scoreboard players operation #respawn_cp_id {ns}.data = @s {ns}.temp.id
scoreboard players operation #checkpoint {ns}.data = @s {ns}.checkpoint
scoreboard players remove #checkpoint {ns}.data 1
execute if score #checkpoint {ns}.data matches -1 run scoreboard players operation #checkpoint {ns}.data = #total_checkpoints {ns}.data

scoreboard players set #can_hard_reset {ns}.data 0
execute if entity @s[tag={ns}.can_hard_reset] run scoreboard players set #can_hard_reset {ns}.data 1
execute as @a[tag=!detached,gamemode=!spectator,distance=..{CHECKPOINT_SCAN_RADIUS},predicate={ns}:has_same_checkpoint] run function {ns}:modes/race/checkpoints/check_player_pos

particle wax_on ~ ~2 ~ 2 2 2 0 2
particle wax_off ~ ~2 ~ 2 2 2 0 2
""")

	# /classement/find_anyone_in_same_cp
	write_function(f"{path}/classement/find_anyone_in_same_cp", f"""
execute unless score @s {ns}.temp matches 1 run function {ns}:modes/race/classement/find_anyone_in_same_cp_more
""")

	# /classement/find_anyone_in_same_cp_more (NOTE: trailing space on line 2)
	write_function(f"{path}/classement/find_anyone_in_same_cp_more", f"""
tag @s add {ns}.temp
scoreboard players operation #predicate {ns}.data = @s {ns}.temp.classement 
scoreboard players set @a[tag=!detached,tag=!{ns}.temp,predicate={ns}:has_same_classement] {ns}.temp 1
tag @s remove {ns}.temp
""")

	# /classement/has_same_classement
	write_function(f"{path}/classement/has_same_classement", f"""
scoreboard players operation #checkpoint {ns}.data = @s {ns}.temp.checkpoint
tag @a[tag=!detached,predicate={ns}:has_same_temp_checkpoint] add {ns}.process

scoreboard players operation #checkpoint {ns}.data = @s {ns}.checkpoint
scoreboard players add #checkpoint {ns}.data 1
scoreboard players operation #checkpoint {ns}.data %= #modulo {ns}.data

scoreboard players set #add {ns}.data 0
execute at @e[type=marker,tag={ns}.checkpoint,predicate={ns}:has_same_checkpoint,sort=nearest,limit=1] as @a[tag=!detached,tag={ns}.process,sort=nearest] run function {ns}:modes/race/classement/increase

scoreboard players reset @a[tag=!detached,tag={ns}.process] {ns}.temp
tag @a[tag=!detached,tag={ns}.process] remove {ns}.process
""")

	# /classement/increase
	write_function(f"{path}/classement/increase", f"""
scoreboard players operation @s {ns}.temp.classement += #add {ns}.data
scoreboard players add #add {ns}.data 1
""")

	# /classement/main
	write_function(f"{path}/classement/main", f"""
# Définition du classement selon le nombre de checkpoints passés
scoreboard players set @a[tag=!detached] {ns}.temp.classement 1
execute as @a[tag=!detached] at @a[tag=!detached] if score @s {ns}.temp.checkpoint < @p {ns}.temp.checkpoint run scoreboard players add @s {ns}.temp.classement 1


# Amélioration du classement selon leur distance du prochain checkpoint si des joueurs ont le même nombre de checkpoints
execute as @a[tag=!detached] run function {ns}:modes/race/classement/find_anyone_in_same_cp
execute as @a[tag=!detached] run function {ns}:modes/race/classement/try


# Attribution des places
team join {ns}.temp.1 @a[scores={{{ns}.temp.classement=1}}]
team join {ns}.temp.2 @a[scores={{{ns}.temp.classement=2}}]
team join {ns}.temp.3 @a[scores={{{ns}.temp.classement=3}}]
team join {ns}.temp.4 @a[scores={{{ns}.temp.classement=4}}]
team join {ns}.temp.5 @a[scores={{{ns}.temp.classement=5}}]
team join {ns}.temp.6 @a[scores={{{ns}.temp.classement=6}}]
team join {ns}.temp.7 @a[scores={{{ns}.temp.classement=7}}]
team join {ns}.temp.8 @a[scores={{{ns}.temp.classement=8}}]
team join {ns}.temp.9 @a[scores={{{ns}.temp.classement=9}}]
team join {ns}.temp.10 @a[scores={{{ns}.temp.classement=10}}]
team join {ns}.temp.10+ @a[scores={{{ns}.temp.classement=11..}}]
execute as @a[tag=!detached] run scoreboard players operation @s {ns}.temp.pv_classement = @s {ns}.temp.classement


# Repositionnement des joueurs selon leur place dans le scoreboard sidebar
scoreboard players set #max {ns}.temp.classement 0
scoreboard players operation #max {ns}.temp.classement > @a[tag=!detached] {ns}.temp.classement
scoreboard players operation @a[tag=!detached] {ns}.temp.classement -= #max {ns}.temp.classement
scoreboard players operation @a[tag=!detached] {ns}.temp.classement *= #-1 {ns}.data

# Application des changements à droite
execute as @a[tag=!detached] run scoreboard players operation @s {ns}.temp.sidebar = @s {ns}.temp.classement
""")

	# /classement/try
	write_function(f"{path}/classement/try", f"""
execute if score @s {ns}.temp matches 1 at @s run function {ns}:modes/race/classement/has_same_classement
""")

	# /complete
	write_function(f"{path}/complete", f"""
execute if entity @s[scores={{{ns}.alive=1}}] run function {ns}:modes/race/finished

execute unless score @s {ns}.alive matches 1.. at @n[type=marker,tag={ns}.selected_map] run tp @s ~ ~ ~ ~ ~
gamemode spectator @s
effect clear @s
clear @s
""")

	# /finished (translation ref rewritten)
	write_function(f"{path}/finished", f"""
scoreboard players operation #digit {ns}.data = #race_ticks {ns}.data
scoreboard players operation #digit {ns}.data *= #5 {ns}.data
scoreboard players operation #digit {ns}.data %= #100 {ns}.data

scoreboard players set @s {ns}.alive 2
function {ns}:modes/race/translations/finished
execute if score #remaining_time {ns}.data matches 61.. run scoreboard players set #remaining_time {ns}.data 60
scoreboard players add @s {ns}.temp.checkpoint 1000000
scoreboard players operation @s {ns}.temp.checkpoint -= #race_ticks {ns}.data

tag @s add {ns}.temp
function {ns}:utils/safe_kill_macro {{selector:"@e[tag={ns}.vehicle,predicate={ns}:have_temp_player_passenger]"}}
kill @e[type=item]
tag @s remove {ns}.temp

# Advancement
scoreboard players remove @s {ns}.temp.pos_on_last_lap 5
execute unless score #test_mode {ns}.data matches 1 if score @s {ns}.temp.pv_classement <= @s {ns}.temp.pos_on_last_lap run advancement grant @s only {ns}:visible/20

# Clear people the vote items
clear @a[tag=!detached] warped_fungus_on_a_stick[custom_data~{{{ns}:{{vote:true}}}}]
scoreboard players reset #can_vote {ns}.data
""")

	# /give_items
	write_function(f"{path}/give_items", f"""
# Load map checkpoints
kill @e[type=marker,tag={ns}.selected_map]
function {ns}:maps/load_gamemode

# Summon vehicles or give items depending on the map type
execute if score #map_type {ns}.data matches 0 as @a[tag=!detached] at @s run function shopping_kart:kart/summon
execute if score #map_type {ns}.data matches 0 run tag @e[tag=shopping_kart.kart] add {ns}.vehicle
execute if score #map_type {ns}.data matches 1 as @a[tag=!detached] at @s run summon minecraft:bamboo_chest_raft ~ ~ ~ {{Tags:["{ns}.vehicle"]}}
execute if score #map_type {ns}.data matches 1 as @a[tag=!detached] at @s run tp @n[tag={ns}.vehicle] ~ ~ ~ ~ ~

# Set up hotbar inventory
execute as @a[tag=!detached] at @s run function {ns}:modes/race/advancements/inventory_changed_confirm
""")

	# /joined
	write_function(f"{path}/joined", f"""
# Ici : dans tous les cas, mettre la personne qui join en spec
scoreboard players reset @s {ns}.alive
function {ns}:modes/race/complete
""")

	# /map_tick/airship_fortress
	write_function(f"{path}/map_tick/airship_fortress", f"""
scoreboard players set @e[tag={ns}.vehicle,x=7217,y=109,z=-4994,distance=..5] {ns}.temp.compteur 1
execute as @e[tag={ns}.vehicle,scores={{{ns}.temp.compteur=1..}}] run function {ns}:modes/race/map_tick/airship_fortress_tp
""")

	# /map_tick/airship_fortress_tp (NOTE: trailing space on old_speed line)
	write_function(f"{path}/map_tick/airship_fortress_tp", f"""
# l1 = [7225, 110, -4994]
# l2 = [7295, 138, -4994]
# total = 40
# dx = (l2[0] - l1[0]) / total
# dy = (l2[1] - l1[1]) / total
# dz = (l2[2] - l1[2]) / total
# for i in range(0,total+1):
#    print('tp @s[scores={{{ns}.temp.compteur='+str(i+1)+'}}]', round(l1[0] + i*dx, 4), round(l1[1] + i*dy, 4), round(l1[2] + i*dz, 4))

execute if score @s {ns}.temp.compteur matches 1 run scoreboard players operation @s {ns}.temp.old_speed = @s shopping_kart.engine
execute if score @s {ns}.temp.compteur matches 1 run particle explosion 7225 110 -4994 2 2 2 0 10 force
execute if score @s {ns}.temp.compteur matches 1 run playsound {ns}:explosion block @a[tag=!detached] 7225 110 -4994

tp @s[scores={{{ns}.temp.compteur=1}}] 7225.0 110.0 -4994.0
tp @s[scores={{{ns}.temp.compteur=2}}] 7226.75 110.7 -4994.0
tp @s[scores={{{ns}.temp.compteur=3}}] 7228.5 111.4 -4994.0
tp @s[scores={{{ns}.temp.compteur=4}}] 7230.25 112.1 -4994.0
tp @s[scores={{{ns}.temp.compteur=5}}] 7232.0 112.8 -4994.0
tp @s[scores={{{ns}.temp.compteur=6}}] 7233.75 113.5 -4994.0
tp @s[scores={{{ns}.temp.compteur=7}}] 7235.5 114.2 -4994.0
tp @s[scores={{{ns}.temp.compteur=8}}] 7237.25 114.9 -4994.0
tp @s[scores={{{ns}.temp.compteur=9}}] 7239.0 115.6 -4994.0
tp @s[scores={{{ns}.temp.compteur=10}}] 7240.75 116.3 -4994.0
tp @s[scores={{{ns}.temp.compteur=11}}] 7242.5 117.0 -4994.0
tp @s[scores={{{ns}.temp.compteur=12}}] 7244.25 117.7 -4994.0
tp @s[scores={{{ns}.temp.compteur=13}}] 7246.0 118.4 -4994.0
tp @s[scores={{{ns}.temp.compteur=14}}] 7247.75 119.1 -4994.0
tp @s[scores={{{ns}.temp.compteur=15}}] 7249.5 119.8 -4994.0
tp @s[scores={{{ns}.temp.compteur=16}}] 7251.25 120.5 -4994.0
tp @s[scores={{{ns}.temp.compteur=17}}] 7253.0 121.2 -4994.0
tp @s[scores={{{ns}.temp.compteur=18}}] 7254.75 121.9 -4994.0
tp @s[scores={{{ns}.temp.compteur=19}}] 7256.5 122.6 -4994.0
tp @s[scores={{{ns}.temp.compteur=20}}] 7258.25 123.3 -4994.0
tp @s[scores={{{ns}.temp.compteur=21}}] 7260.0 124.0 -4994.0
tp @s[scores={{{ns}.temp.compteur=22}}] 7261.75 124.7 -4994.0
tp @s[scores={{{ns}.temp.compteur=23}}] 7263.5 125.4 -4994.0
tp @s[scores={{{ns}.temp.compteur=24}}] 7265.25 126.1 -4994.0
tp @s[scores={{{ns}.temp.compteur=25}}] 7267.0 126.8 -4994.0
tp @s[scores={{{ns}.temp.compteur=26}}] 7268.75 127.5 -4994.0
tp @s[scores={{{ns}.temp.compteur=27}}] 7270.5 128.2 -4994.0
tp @s[scores={{{ns}.temp.compteur=28}}] 7272.25 128.9 -4994.0
tp @s[scores={{{ns}.temp.compteur=29}}] 7274.0 129.6 -4994.0
tp @s[scores={{{ns}.temp.compteur=30}}] 7275.75 130.3 -4994.0
tp @s[scores={{{ns}.temp.compteur=31}}] 7277.5 131.0 -4994.0
tp @s[scores={{{ns}.temp.compteur=32}}] 7279.25 131.7 -4994.0
tp @s[scores={{{ns}.temp.compteur=33}}] 7281.0 132.4 -4994.0
tp @s[scores={{{ns}.temp.compteur=34}}] 7282.75 133.1 -4994.0
tp @s[scores={{{ns}.temp.compteur=35}}] 7284.5 133.8 -4994.0
tp @s[scores={{{ns}.temp.compteur=36}}] 7286.25 134.5 -4994.0
tp @s[scores={{{ns}.temp.compteur=37}}] 7288.0 135.2 -4994.0
tp @s[scores={{{ns}.temp.compteur=38}}] 7289.75 135.9 -4994.0
tp @s[scores={{{ns}.temp.compteur=39}}] 7291.5 136.6 -4994.0
tp @s[scores={{{ns}.temp.compteur=40}}] 7293.25 137.3 -4994.0
tp @s[scores={{{ns}.temp.compteur=41}}] 7295.0 138.0 -4994.0

function {ns}:modes/race/map_tick/restore_speed {{count:42}}
""")

	# /map_tick/restore_speed (macro: shared tail of the per-map _tp climbs: advance the compteur,
	# and once it reaches $(count) restore the kart engine speed and clear the compteur)
	write_function(f"{path}/map_tick/restore_speed", f"""
scoreboard players add @s {ns}.temp.compteur 1
$execute if score @s {ns}.temp.compteur matches $(count).. run scoreboard players operation @s shopping_kart.engine = @s {ns}.temp.old_speed
$scoreboard players reset @s[scores={{{ns}.temp.compteur=$(count)..}}] {ns}.temp.compteur
""")

	# /map_tick/clock_circuit
	write_function(f"{path}/map_tick/clock_circuit", f"""
execute as @e[tag={ns}.vehicle,x=6126,y=127,z=-5037,distance=..10] at @s if block ~ ~-1 ~ diamond_block run scoreboard players set @s {ns}.temp.compteur 1
execute as @e[tag={ns}.vehicle,scores={{{ns}.temp.compteur=1..}}] at @s run function {ns}:modes/race/map_tick/clock_circuit_tp
""")

	# /map_tick/clock_circuit_tp (NOTE: trailing space on old_speed line)
	write_function(f"{path}/map_tick/clock_circuit_tp", f"""
execute if score @s {ns}.temp.compteur matches 1 run scoreboard players operation @s {ns}.temp.old_speed = @s shopping_kart.engine

data modify entity @s[scores={{{ns}.temp.compteur=1}}] NoAI set value 1b
tp @s[scores={{{ns}.temp.compteur=1}}] ~ ~.5 -5039.5
tp @s[scores={{{ns}.temp.compteur=2}}] ~ ~.25 ~-1.5
tp @s[scores={{{ns}.temp.compteur=3}}] ~ ~.25 ~-1.5
tp @s[scores={{{ns}.temp.compteur=4}}] ~ ~.1 ~-1.5
tp @s[scores={{{ns}.temp.compteur=5}}] ~ ~.1 ~-1.5
tp @s[scores={{{ns}.temp.compteur=6}}] ~ ~.3 ~-1.5
tp @s[scores={{{ns}.temp.compteur=7}}] ~ ~.5 ~-1.5
tp @s[scores={{{ns}.temp.compteur=8}}] ~ ~.5 ~-1.5
tp @s[scores={{{ns}.temp.compteur=9}}] ~ ~.5 ~-1.5
tp @s[scores={{{ns}.temp.compteur=10}}] ~ ~1 ~-1
tp @s[scores={{{ns}.temp.compteur=11}}] ~ ~1 ~-1
tp @s[scores={{{ns}.temp.compteur=12}}] ~ ~1.5 ~-.5
tp @s[scores={{{ns}.temp.compteur=13}}] ~ ~1.5 ~-.5
tp @s[scores={{{ns}.temp.compteur=14}}] ~.5 ~1.5 ~-.5
tp @s[scores={{{ns}.temp.compteur=15}}] ~.5 ~1.5 ~-.5
tp @s[scores={{{ns}.temp.compteur=16}}] ~.5 ~2 ~.5
tp @s[scores={{{ns}.temp.compteur=17}}] ~.5 ~2 ~.5
tp @s[scores={{{ns}.temp.compteur=18}}] ~.5 ~1.5 ~.5
tp @s[scores={{{ns}.temp.compteur=19}}] ~.5 ~1.5 ~.5
tp @s[scores={{{ns}.temp.compteur=20}}] ~.5 ~1 ~1
tp @s[scores={{{ns}.temp.compteur=21}}] ~.5 ~1 ~1
tp @s[scores={{{ns}.temp.compteur=22}}] ~.5 ~.5 ~1.5
tp @s[scores={{{ns}.temp.compteur=23}}] ~.5 ~.5 ~1.5
tp @s[scores={{{ns}.temp.compteur=24}}] ~.5 ~.5 ~1.5
tp @s[scores={{{ns}.temp.compteur=25}}] ~.5 ~.5 ~1.5
tp @s[scores={{{ns}.temp.compteur=26}}] ~ ~-.1 ~2
tp @s[scores={{{ns}.temp.compteur=27}}] ~ ~.1 ~2
tp @s[scores={{{ns}.temp.compteur=28}}] ~.5 ~-.5 ~1.5
tp @s[scores={{{ns}.temp.compteur=29}}] ~.5 ~-.5 ~1.5
tp @s[scores={{{ns}.temp.compteur=30}}] ~.5 ~-1 ~1.5
tp @s[scores={{{ns}.temp.compteur=31}}] ~.5 ~-1 ~1.5
tp @s[scores={{{ns}.temp.compteur=32}}] ~ ~-1.5 ~1
tp @s[scores={{{ns}.temp.compteur=33}}] ~ ~-1.5 ~1
tp @s[scores={{{ns}.temp.compteur=34}}] ~ ~-2 ~.5
tp @s[scores={{{ns}.temp.compteur=35}}] ~ ~-2 ~.5
tp @s[scores={{{ns}.temp.compteur=36}}] ~ ~-2 ~-.5
tp @s[scores={{{ns}.temp.compteur=37}}] ~ ~-2 ~-.5
tp @s[scores={{{ns}.temp.compteur=38}}] ~ ~-1.5 ~-.5
tp @s[scores={{{ns}.temp.compteur=39}}] ~ ~-1.5 ~-.5
tp @s[scores={{{ns}.temp.compteur=40}}] ~ ~-1 ~-1
tp @s[scores={{{ns}.temp.compteur=41}}] ~ ~-1 ~-1
tp @s[scores={{{ns}.temp.compteur=42}}] ~ ~-.5 ~-1.5
tp @s[scores={{{ns}.temp.compteur=43}}] ~ ~-.5 ~-1.5
tp @s[scores={{{ns}.temp.compteur=44}}] ~ ~-.5 ~-2
tp @s[scores={{{ns}.temp.compteur=45}}] ~ ~-.3 ~-2
tp @s[scores={{{ns}.temp.compteur=46}}] ~ ~-.1 ~-2
tp @s[scores={{{ns}.temp.compteur=47}}] ~ ~-.1 ~-2
data modify entity @s[scores={{{ns}.temp.compteur=47}}] NoAI set value 0b

function {ns}:modes/race/map_tick/restore_speed {{count:48}}
""")

	# /map_tick/dk_mountain
	write_function(f"{path}/map_tick/dk_mountain", f"""
scoreboard players set @e[tag={ns}.vehicle,x=6551,y=115,z=-4834,distance=..3] {ns}.temp.compteur 1
execute as @e[tag={ns}.vehicle,scores={{{ns}.temp.compteur=1..}}] run function {ns}:modes/race/map_tick/dk_mountain_tp
""")

	# /map_tick/dk_mountain_tp (NOTE: trailing space on old_speed line)
	write_function(f"{path}/map_tick/dk_mountain_tp", f"""
# l1 = [6545, 117, -4834]
# l2 = [6295, 164, -4831]
# total = 80
# dx = (l2[0] - l1[0]) / total
# dy = (l2[1] - l1[1]) / total
# dz = (l2[2] - l1[2]) / total
# for i in range(0,total+1):
#    print('tp @s[scores={{{ns}.temp.compteur='+str(i+1)+'}}]', round(l1[0] + i*dx, 4), round(l1[1] + i*dy, 4), round(l1[2] + i*dz, 4))

execute if score @s {ns}.temp.compteur matches 1 run scoreboard players operation @s {ns}.temp.old_speed = @s shopping_kart.engine
execute if score @s {ns}.temp.compteur matches 1 run particle explosion 6545 117 -4834 2 2 2 0 10 force
execute if score @s {ns}.temp.compteur matches 1 run playsound {ns}:explosion block @a[tag=!detached] 6545 117 -4834

tp @s[scores={{{ns}.temp.compteur=1}}] 6545.0 117.0 -4834.0
tp @s[scores={{{ns}.temp.compteur=2}}] 6541.875 117.5875 -4833.9625
tp @s[scores={{{ns}.temp.compteur=3}}] 6538.75 118.175 -4833.925
tp @s[scores={{{ns}.temp.compteur=4}}] 6535.625 118.7625 -4833.8875
tp @s[scores={{{ns}.temp.compteur=5}}] 6532.5 119.35 -4833.85
tp @s[scores={{{ns}.temp.compteur=6}}] 6529.375 119.9375 -4833.8125
tp @s[scores={{{ns}.temp.compteur=7}}] 6526.25 120.525 -4833.775
tp @s[scores={{{ns}.temp.compteur=8}}] 6523.125 121.1125 -4833.7375
tp @s[scores={{{ns}.temp.compteur=9}}] 6520.0 121.7 -4833.7
tp @s[scores={{{ns}.temp.compteur=10}}] 6516.875 122.2875 -4833.6625
tp @s[scores={{{ns}.temp.compteur=11}}] 6513.75 122.875 -4833.625
tp @s[scores={{{ns}.temp.compteur=12}}] 6510.625 123.4625 -4833.5875
tp @s[scores={{{ns}.temp.compteur=13}}] 6507.5 124.05 -4833.55
tp @s[scores={{{ns}.temp.compteur=14}}] 6504.375 124.6375 -4833.5125
tp @s[scores={{{ns}.temp.compteur=15}}] 6501.25 125.225 -4833.475
tp @s[scores={{{ns}.temp.compteur=16}}] 6498.125 125.8125 -4833.4375
tp @s[scores={{{ns}.temp.compteur=17}}] 6495.0 126.4 -4833.4
tp @s[scores={{{ns}.temp.compteur=18}}] 6491.875 126.9875 -4833.3625
tp @s[scores={{{ns}.temp.compteur=19}}] 6488.75 127.575 -4833.325
tp @s[scores={{{ns}.temp.compteur=20}}] 6485.625 128.1625 -4833.2875
tp @s[scores={{{ns}.temp.compteur=21}}] 6482.5 128.75 -4833.25
tp @s[scores={{{ns}.temp.compteur=22}}] 6479.375 129.3375 -4833.2125
tp @s[scores={{{ns}.temp.compteur=23}}] 6476.25 129.925 -4833.175
tp @s[scores={{{ns}.temp.compteur=24}}] 6473.125 130.5125 -4833.1375
tp @s[scores={{{ns}.temp.compteur=25}}] 6470.0 131.1 -4833.1
tp @s[scores={{{ns}.temp.compteur=26}}] 6466.875 131.6875 -4833.0625
tp @s[scores={{{ns}.temp.compteur=27}}] 6463.75 132.275 -4833.025
tp @s[scores={{{ns}.temp.compteur=28}}] 6460.625 132.8625 -4832.9875
tp @s[scores={{{ns}.temp.compteur=29}}] 6457.5 133.45 -4832.95
tp @s[scores={{{ns}.temp.compteur=30}}] 6454.375 134.0375 -4832.9125
tp @s[scores={{{ns}.temp.compteur=31}}] 6451.25 134.625 -4832.875
tp @s[scores={{{ns}.temp.compteur=32}}] 6448.125 135.2125 -4832.8375
tp @s[scores={{{ns}.temp.compteur=33}}] 6445.0 135.8 -4832.8
tp @s[scores={{{ns}.temp.compteur=34}}] 6441.875 136.3875 -4832.7625
tp @s[scores={{{ns}.temp.compteur=35}}] 6438.75 136.975 -4832.725
tp @s[scores={{{ns}.temp.compteur=36}}] 6435.625 137.5625 -4832.6875
tp @s[scores={{{ns}.temp.compteur=37}}] 6432.5 138.15 -4832.65
tp @s[scores={{{ns}.temp.compteur=38}}] 6429.375 138.7375 -4832.6125
tp @s[scores={{{ns}.temp.compteur=39}}] 6426.25 139.325 -4832.575
tp @s[scores={{{ns}.temp.compteur=40}}] 6423.125 139.9125 -4832.5375
tp @s[scores={{{ns}.temp.compteur=41}}] 6420.0 140.5 -4832.5
tp @s[scores={{{ns}.temp.compteur=42}}] 6416.875 141.0875 -4832.4625
tp @s[scores={{{ns}.temp.compteur=43}}] 6413.75 141.675 -4832.425
tp @s[scores={{{ns}.temp.compteur=44}}] 6410.625 142.2625 -4832.3875
tp @s[scores={{{ns}.temp.compteur=45}}] 6407.5 142.85 -4832.35
tp @s[scores={{{ns}.temp.compteur=46}}] 6404.375 143.4375 -4832.3125
tp @s[scores={{{ns}.temp.compteur=47}}] 6401.25 144.025 -4832.275
tp @s[scores={{{ns}.temp.compteur=48}}] 6398.125 144.6125 -4832.2375
tp @s[scores={{{ns}.temp.compteur=49}}] 6395.0 145.2 -4832.2
tp @s[scores={{{ns}.temp.compteur=50}}] 6391.875 145.7875 -4832.1625
tp @s[scores={{{ns}.temp.compteur=51}}] 6388.75 146.375 -4832.125
tp @s[scores={{{ns}.temp.compteur=52}}] 6385.625 146.9625 -4832.0875
tp @s[scores={{{ns}.temp.compteur=53}}] 6382.5 147.55 -4832.05
tp @s[scores={{{ns}.temp.compteur=54}}] 6379.375 148.1375 -4832.0125
tp @s[scores={{{ns}.temp.compteur=55}}] 6376.25 148.725 -4831.975
tp @s[scores={{{ns}.temp.compteur=56}}] 6373.125 149.3125 -4831.9375
tp @s[scores={{{ns}.temp.compteur=57}}] 6370.0 149.9 -4831.9
tp @s[scores={{{ns}.temp.compteur=58}}] 6366.875 150.4875 -4831.8625
tp @s[scores={{{ns}.temp.compteur=59}}] 6363.75 151.075 -4831.825
tp @s[scores={{{ns}.temp.compteur=60}}] 6360.625 151.6625 -4831.7875
tp @s[scores={{{ns}.temp.compteur=61}}] 6357.5 152.25 -4831.75
tp @s[scores={{{ns}.temp.compteur=62}}] 6354.375 152.8375 -4831.7125
tp @s[scores={{{ns}.temp.compteur=63}}] 6351.25 153.425 -4831.675
tp @s[scores={{{ns}.temp.compteur=64}}] 6348.125 154.0125 -4831.6375
tp @s[scores={{{ns}.temp.compteur=65}}] 6345.0 154.6 -4831.6
tp @s[scores={{{ns}.temp.compteur=66}}] 6341.875 155.1875 -4831.5625
tp @s[scores={{{ns}.temp.compteur=67}}] 6338.75 155.775 -4831.525
tp @s[scores={{{ns}.temp.compteur=68}}] 6335.625 156.3625 -4831.4875
tp @s[scores={{{ns}.temp.compteur=69}}] 6332.5 156.95 -4831.45
tp @s[scores={{{ns}.temp.compteur=70}}] 6329.375 157.5375 -4831.4125
tp @s[scores={{{ns}.temp.compteur=71}}] 6326.25 158.125 -4831.375
tp @s[scores={{{ns}.temp.compteur=72}}] 6323.125 158.7125 -4831.3375
tp @s[scores={{{ns}.temp.compteur=73}}] 6320.0 159.3 -4831.3
tp @s[scores={{{ns}.temp.compteur=74}}] 6316.875 159.8875 -4831.2625
tp @s[scores={{{ns}.temp.compteur=75}}] 6313.75 160.475 -4831.225
tp @s[scores={{{ns}.temp.compteur=76}}] 6310.625 161.0625 -4831.1875
tp @s[scores={{{ns}.temp.compteur=77}}] 6307.5 161.65 -4831.15
tp @s[scores={{{ns}.temp.compteur=78}}] 6304.375 162.2375 -4831.1125
tp @s[scores={{{ns}.temp.compteur=79}}] 6301.25 162.825 -4831.075
tp @s[scores={{{ns}.temp.compteur=80}}] 6298.125 163.4125 -4831.0375
tp @s[scores={{{ns}.temp.compteur=81}}] 6295.0 164.0 -4831.0

function {ns}:modes/race/map_tick/restore_speed {{count:82}}
""")

	# /map_tick/plains_routine
	write_function(f"{path}/map_tick/plains_routine", f"""
execute as @e[tag={ns}.vehicle,x=6712,y=105,z=-5591,distance=..10] at @s if block ~ ~-1 ~ diamond_block run scoreboard players set @s {ns}.temp.compteur 1
execute as @e[tag={ns}.vehicle,scores={{{ns}.temp.compteur=1..}}] at @s run function {ns}:modes/race/map_tick/plains_routine_tp
effect give @e[x=6777,y=93,z=-5601,distance=..3] levitation 1 15 true
""")

	# /map_tick/plains_routine_tp (NOTE: trailing space on old_speed line)
	write_function(f"{path}/map_tick/plains_routine_tp", f"""
execute if score @s {ns}.temp.compteur matches 1 run scoreboard players operation @s {ns}.temp.old_speed = @s shopping_kart.engine

data modify entity @s[scores={{{ns}.temp.compteur=1}}] NoAI set value 1b
tp @s[scores={{{ns}.temp.compteur=1}}] 6714.0 ~.1 ~
tp @s[scores={{{ns}.temp.compteur=2}}] ~1.5 ~-.05 ~
tp @s[scores={{{ns}.temp.compteur=3}}] ~1.5 ~-.05 ~
tp @s[scores={{{ns}.temp.compteur=4}}] ~1.5 ~.5 ~
tp @s[scores={{{ns}.temp.compteur=5}}] ~1.5 ~.5 ~
tp @s[scores={{{ns}.temp.compteur=6}}] ~1.5 ~.5 ~
tp @s[scores={{{ns}.temp.compteur=7}}] ~1.5 ~.5 ~
tp @s[scores={{{ns}.temp.compteur=8}}] ~.5 ~1 ~
tp @s[scores={{{ns}.temp.compteur=9}}] ~.5 ~1 ~
tp @s[scores={{{ns}.temp.compteur=10}}] ~.5 ~1.5 ~
tp @s[scores={{{ns}.temp.compteur=11}}] ~.5 ~1.5 ~
tp @s[scores={{{ns}.temp.compteur=12}}] ~.5 ~1 ~.5
tp @s[scores={{{ns}.temp.compteur=13}}] ~.5 ~1 ~.5
tp @s[scores={{{ns}.temp.compteur=14}}] ~-.5 ~1 ~.5
tp @s[scores={{{ns}.temp.compteur=15}}] ~-.5 ~1 ~.5
tp @s[scores={{{ns}.temp.compteur=16}}] ~-.5 ~1.25 ~
tp @s[scores={{{ns}.temp.compteur=17}}] ~-.5 ~1.25 ~
tp @s[scores={{{ns}.temp.compteur=18}}] ~-1 ~.5 ~
tp @s[scores={{{ns}.temp.compteur=19}}] ~-1 ~.5 ~
tp @s[scores={{{ns}.temp.compteur=20}}] ~-1 ~.5 ~.5
tp @s[scores={{{ns}.temp.compteur=21}}] ~-1 ~.5 ~.5
tp @s[scores={{{ns}.temp.compteur=22}}] ~-1 ~.5 ~
tp @s[scores={{{ns}.temp.compteur=23}}] ~-1.5 ~.5 ~
tp @s[scores={{{ns}.temp.compteur=24}}] ~-1.5 ~-.5 ~.5
tp @s[scores={{{ns}.temp.compteur=25}}] ~-1.5 ~-.5 ~.5
tp @s[scores={{{ns}.temp.compteur=26}}] ~-1.5 ~-.5 ~.5
tp @s[scores={{{ns}.temp.compteur=27}}] ~-1.5 ~-.5 ~.5
tp @s[scores={{{ns}.temp.compteur=28}}] ~-1 ~-1.25 ~
tp @s[scores={{{ns}.temp.compteur=29}}] ~-1 ~-1.25 ~
tp @s[scores={{{ns}.temp.compteur=30}}] ~-1 ~-1.5 ~.5
tp @s[scores={{{ns}.temp.compteur=31}}] ~-1 ~-1.5 ~.5
tp @s[scores={{{ns}.temp.compteur=32}}] ~.5 ~-1.5 ~
tp @s[scores={{{ns}.temp.compteur=33}}] ~.5 ~-1.5 ~
tp @s[scores={{{ns}.temp.compteur=34}}] ~.5 ~-1.5 ~
tp @s[scores={{{ns}.temp.compteur=35}}] ~.5 ~-1.5 ~
tp @s[scores={{{ns}.temp.compteur=36}}] ~1 ~-.5 ~
tp @s[scores={{{ns}.temp.compteur=37}}] ~1 ~-.5 ~
tp @s[scores={{{ns}.temp.compteur=38}}] ~1.5 ~-.5 ~
tp @s[scores={{{ns}.temp.compteur=39}}] ~1.5 ~-.5 ~
tp @s[scores={{{ns}.temp.compteur=40}}] ~1.5 ~-.5 ~
tp @s[scores={{{ns}.temp.compteur=41}}] ~1.5 ~-.5 ~
data modify entity @s[scores={{{ns}.temp.compteur=41}}] NoAI set value 0b

function {ns}:modes/race/map_tick/restore_speed {{count:42}}
""")

	# /map_tick/trackmania_stadium_2
	write_function(f"{path}/map_tick/trackmania_stadium_2", f"""
scoreboard players set @e[tag={ns}.vehicle,x=4094,y=139,z=6015,distance=..2] {ns}.temp.compteur 1
execute as @e[tag={ns}.vehicle,scores={{{ns}.temp.compteur=1..}}] run function {ns}:modes/race/map_tick/trackmania_stadium_2_tp
""")

	# /map_tick/trackmania_stadium_2_tp
	write_function(f"{path}/map_tick/trackmania_stadium_2_tp", f"""
# l1 = [4091, 139, 6015]
# l2 = [3896, 153, 6015]
# total = 80
# dx = (l2[0] - l1[0]) / total
# dy = (l2[1] - l1[1]) / total
# dz = (l2[2] - l1[2]) / total
# for i in range(0,total+1):
#    print('tp @s[scores={{{ns}.temp.compteur='+str(i+1)+'}}]', round(l1[0] + i*dx, 4), round(l1[1] + i*dy, 4), round(l1[2] + i*dz, 4))

execute if score @s {ns}.temp.compteur matches 1 run particle explosion 7225 110 -4994 2 2 2 0 10 force
execute if score @s {ns}.temp.compteur matches 1 run playsound {ns}:explosion block @a[tag=!detached] 7225 110 -4994
execute at @s run particle flame ~ ~ ~ .5 .5 .5 0 50 force

tp @s[scores={{{ns}.temp.compteur=1}}] 4091.0 139.0 6015.0
tp @s[scores={{{ns}.temp.compteur=2}}] 4088.5625 139.175 6015.0
tp @s[scores={{{ns}.temp.compteur=3}}] 4086.125 139.35 6015.0
tp @s[scores={{{ns}.temp.compteur=4}}] 4083.6875 139.525 6015.0
tp @s[scores={{{ns}.temp.compteur=5}}] 4081.25 139.7 6015.0
tp @s[scores={{{ns}.temp.compteur=6}}] 4078.8125 139.875 6015.0
tp @s[scores={{{ns}.temp.compteur=7}}] 4076.375 140.05 6015.0
tp @s[scores={{{ns}.temp.compteur=8}}] 4073.9375 140.225 6015.0
tp @s[scores={{{ns}.temp.compteur=9}}] 4071.5 140.4 6015.0
tp @s[scores={{{ns}.temp.compteur=10}}] 4069.0625 140.575 6015.0
tp @s[scores={{{ns}.temp.compteur=11}}] 4066.625 140.75 6015.0
tp @s[scores={{{ns}.temp.compteur=12}}] 4064.1875 140.925 6015.0
tp @s[scores={{{ns}.temp.compteur=13}}] 4061.75 141.1 6015.0
tp @s[scores={{{ns}.temp.compteur=14}}] 4059.3125 141.275 6015.0
tp @s[scores={{{ns}.temp.compteur=15}}] 4056.875 141.45 6015.0
tp @s[scores={{{ns}.temp.compteur=16}}] 4054.4375 141.625 6015.0
tp @s[scores={{{ns}.temp.compteur=17}}] 4052.0 141.8 6015.0
tp @s[scores={{{ns}.temp.compteur=18}}] 4049.5625 141.975 6015.0
tp @s[scores={{{ns}.temp.compteur=19}}] 4047.125 142.15 6015.0
tp @s[scores={{{ns}.temp.compteur=20}}] 4044.6875 142.325 6015.0
tp @s[scores={{{ns}.temp.compteur=21}}] 4042.25 142.5 6015.0
tp @s[scores={{{ns}.temp.compteur=22}}] 4039.8125 142.675 6015.0
tp @s[scores={{{ns}.temp.compteur=23}}] 4037.375 142.85 6015.0
tp @s[scores={{{ns}.temp.compteur=24}}] 4034.9375 143.025 6015.0
tp @s[scores={{{ns}.temp.compteur=25}}] 4032.5 143.2 6015.0
tp @s[scores={{{ns}.temp.compteur=26}}] 4030.0625 143.375 6015.0
tp @s[scores={{{ns}.temp.compteur=27}}] 4027.625 143.55 6015.0
tp @s[scores={{{ns}.temp.compteur=28}}] 4025.1875 143.725 6015.0
tp @s[scores={{{ns}.temp.compteur=29}}] 4022.75 143.9 6015.0
tp @s[scores={{{ns}.temp.compteur=30}}] 4020.3125 144.075 6015.0
tp @s[scores={{{ns}.temp.compteur=31}}] 4017.875 144.25 6015.0
tp @s[scores={{{ns}.temp.compteur=32}}] 4015.4375 144.425 6015.0
tp @s[scores={{{ns}.temp.compteur=33}}] 4013.0 144.6 6015.0
tp @s[scores={{{ns}.temp.compteur=34}}] 4010.5625 144.775 6015.0
tp @s[scores={{{ns}.temp.compteur=35}}] 4008.125 144.95 6015.0
tp @s[scores={{{ns}.temp.compteur=36}}] 4005.6875 145.125 6015.0
tp @s[scores={{{ns}.temp.compteur=37}}] 4003.25 145.3 6015.0
tp @s[scores={{{ns}.temp.compteur=38}}] 4000.8125 145.475 6015.0
tp @s[scores={{{ns}.temp.compteur=39}}] 3998.375 145.65 6015.0
tp @s[scores={{{ns}.temp.compteur=40}}] 3995.9375 145.825 6015.0
tp @s[scores={{{ns}.temp.compteur=41}}] 3993.5 146.0 6015.0
tp @s[scores={{{ns}.temp.compteur=42}}] 3991.0625 146.175 6015.0
tp @s[scores={{{ns}.temp.compteur=43}}] 3988.625 146.35 6015.0
tp @s[scores={{{ns}.temp.compteur=44}}] 3986.1875 146.525 6015.0
tp @s[scores={{{ns}.temp.compteur=45}}] 3983.75 146.7 6015.0
tp @s[scores={{{ns}.temp.compteur=46}}] 3981.3125 146.875 6015.0
tp @s[scores={{{ns}.temp.compteur=47}}] 3978.875 147.05 6015.0
tp @s[scores={{{ns}.temp.compteur=48}}] 3976.4375 147.225 6015.0
tp @s[scores={{{ns}.temp.compteur=49}}] 3974.0 147.4 6015.0
tp @s[scores={{{ns}.temp.compteur=50}}] 3971.5625 147.575 6015.0
tp @s[scores={{{ns}.temp.compteur=51}}] 3969.125 147.75 6015.0
tp @s[scores={{{ns}.temp.compteur=52}}] 3966.6875 147.925 6015.0
tp @s[scores={{{ns}.temp.compteur=53}}] 3964.25 148.1 6015.0
tp @s[scores={{{ns}.temp.compteur=54}}] 3961.8125 148.275 6015.0
tp @s[scores={{{ns}.temp.compteur=55}}] 3959.375 148.45 6015.0
tp @s[scores={{{ns}.temp.compteur=56}}] 3956.9375 148.625 6015.0
tp @s[scores={{{ns}.temp.compteur=57}}] 3954.5 148.8 6015.0
tp @s[scores={{{ns}.temp.compteur=58}}] 3952.0625 148.975 6015.0
tp @s[scores={{{ns}.temp.compteur=59}}] 3949.625 149.15 6015.0
tp @s[scores={{{ns}.temp.compteur=60}}] 3947.1875 149.325 6015.0
tp @s[scores={{{ns}.temp.compteur=61}}] 3944.75 149.5 6015.0
tp @s[scores={{{ns}.temp.compteur=62}}] 3942.3125 149.675 6015.0
tp @s[scores={{{ns}.temp.compteur=63}}] 3939.875 149.85 6015.0
tp @s[scores={{{ns}.temp.compteur=64}}] 3937.4375 150.025 6015.0
tp @s[scores={{{ns}.temp.compteur=65}}] 3935.0 150.2 6015.0
tp @s[scores={{{ns}.temp.compteur=66}}] 3932.5625 150.375 6015.0
tp @s[scores={{{ns}.temp.compteur=67}}] 3930.125 150.55 6015.0
tp @s[scores={{{ns}.temp.compteur=68}}] 3927.6875 150.725 6015.0
tp @s[scores={{{ns}.temp.compteur=69}}] 3925.25 150.9 6015.0
tp @s[scores={{{ns}.temp.compteur=70}}] 3922.8125 151.075 6015.0
tp @s[scores={{{ns}.temp.compteur=71}}] 3920.375 151.25 6015.0
tp @s[scores={{{ns}.temp.compteur=72}}] 3917.9375 151.425 6015.0
tp @s[scores={{{ns}.temp.compteur=73}}] 3915.5 151.6 6015.0
tp @s[scores={{{ns}.temp.compteur=74}}] 3913.0625 151.775 6015.0
tp @s[scores={{{ns}.temp.compteur=75}}] 3910.625 151.95 6015.0
tp @s[scores={{{ns}.temp.compteur=76}}] 3908.1875 152.125 6015.0
tp @s[scores={{{ns}.temp.compteur=77}}] 3905.75 152.3 6015.0
tp @s[scores={{{ns}.temp.compteur=78}}] 3903.3125 152.475 6015.0
tp @s[scores={{{ns}.temp.compteur=79}}] 3900.875 152.65 6015.0
tp @s[scores={{{ns}.temp.compteur=80}}] 3898.4375 152.825 6015.0
tp @s[scores={{{ns}.temp.compteur=81}}] 3896.0 153.0 6015.0

scoreboard players add @s {ns}.temp.compteur 1
scoreboard players reset @s[scores={{{ns}.temp.compteur=82..}}] {ns}.temp.compteur
""")

	# /out_of_map
	write_function(f"{path}/out_of_map", f"""
tag @s add {ns}.temp
execute as @a[tag=!detached,predicate={ns}:has_vehicle_with_tag,limit=1] at @s run function {ns}:modes/race/checkpoints/forced_respawn
""")

	# /player_setup_id
	write_function(f"{path}/player_setup_id", f"""
# Apply ID for Respawn
scoreboard players add #next_id {ns}.temp.id 1
scoreboard players operation @s {ns}.temp.id = #next_id {ns}.temp.id

data modify storage {ns}:main temp set value {{id:0}}
execute store result storage {ns}:main temp.id int 1 run scoreboard players get @s {ns}.temp.id
data modify storage {ns}:main respawn_states append from storage {ns}:main temp
""")

	# /post_load
	write_function(f"{path}/post_load", f"""
scoreboard players operation #modulo {ns}.data = #total_checkpoints {ns}.data
scoreboard players add #modulo {ns}.data 1

# Checkpoint remember kart state (for respawn)
data modify storage {ns}:main respawn_states set value []
scoreboard players set #next_id {ns}.temp.id 0
execute as @e[type=marker,tag={ns}.checkpoint] run function {ns}:modes/race/checkpoints/setup
execute as @a[tag=!detached] run function {ns}:modes/race/player_setup_id
""")

	# /process_end (translation ref rewritten)
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end {ns}.data 1

execute if score #process_end {ns}.data matches 1 as @a[team={ns}.temp.1,tag=!detached,scores={{{ns}.alive=2}}] at @s run function {ns}:engine/add_win
function {ns}:modes/race/translations/process_end
execute if score #process_end {ns}.data matches 1 run scoreboard players reset @a[tag=!detached] {ns}.alive
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {ns}:modes/race/complete
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {ns}:player/trigger/rating/print_current_game

# Safe kill karts and checkpoints
function {ns}:utils/safe_kill_macro {{selector:"@e[tag={ns}.vehicle]"}}
function {ns}:utils/safe_kill_macro {{selector:"@e[tag={ns}.checkpoint]"}}

# Obligatoire
execute if score #process_end {ns}.data matches 200 run function {ns}:engine/restart
""")

	# /restart_game (translation ref rewritten)
	write_function(f"{path}/restart_game", f"""
function {ns}:modes/race/translations/restart_game

scoreboard players set #no_force_start_msg {ns}.data 1
function {ns}:modes/race/_force_start

execute as @a[tag=!detached] at @s run playsound entity.wither.ambient ambient @s ^ ^ ^20 100
""")

	# /right_click (translation ref rewritten)
	write_function(f"{path}/right_click", f"""
# Manage Respawns
function {ns}:modes/race/translations/right_click
execute if score #race_seconds {ns}.data matches 3.. unless score @s {ns}.respawn_cp_id matches -1 if data entity @s SelectedItem.components."minecraft:custom_data".{ns}.classic_respawn run function {ns}:modes/race/checkpoints/respawn/classic
execute if score #race_seconds {ns}.data matches 3.. if data entity @s SelectedItem.components."minecraft:custom_data".{ns}.hard_respawn run function {ns}:modes/race/checkpoints/respawn/hard

# Manage Votes
execute unless score @s {ns}.temp.vote_collisions matches 1 if data entity @s SelectedItem.components."minecraft:custom_data".{ns}.enable_collisions run function {ns}:modes/race/vote_for_collisions
execute unless score @s {ns}.temp.change_map matches 1 if data entity @s SelectedItem.components."minecraft:custom_data".{ns}.change_map run function {ns}:modes/race/vote_for_change_map

# Playsounds
execute if entity @s[tag={ns}.playsound] at @s run playsound {ns}:wormhole_potion ambient @s ^ ^ ^3
execute if entity @s[tag={ns}.playsound] at @s run particle portal ^ ^1 ^1 1 1 1 1 1000
tag @s remove {ns}.playsound

# Reset score
scoreboard players reset @s {ns}.right_click
""")

	# /second (translation ref rewritten)
	write_function(f"{path}/second", f"""
# Timer
scoreboard players add #race_seconds {ns}.data 1
execute if score #remaining_time {ns}.data matches 1.. if entity @a[tag=!detached,gamemode=adventure] run scoreboard players remove #remaining_time {ns}.data 1

# Start countdown
function {ns}:modes/race/translations/second

# Start sounds
execute if score #race_seconds {ns}.data matches -5..-1 as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 100
execute if score #race_seconds {ns}.data matches 0 at @e[limit=2] as @a[tag=!detached] at @s run playsound item.goat_horn.sound.0 ambient @s ^ ^ ^5 100 1 1
execute if score #race_seconds {ns}.data matches 0 at @r[tag=!detached] run scoreboard players operation #default {ns}.hard_respawn_cp_id = @n[tag={ns}.checkpoint] {ns}.temp.id

# XP bar and gravity fix
execute if score #race_seconds {ns}.data matches 0.. run function {ns}:modes/race/xp_bar
execute if score #race_seconds {ns}.data matches 0.. as @a[tag=!detached] run attribute @s gravity base reset


# Détection de fin de partie
execute if score #detect_end {ns}.data matches 0 if score #remaining_time {ns}.data matches 0 run scoreboard players set #detect_end {ns}.data 1
execute if score #detect_end {ns}.data matches 0 unless entity @a[scores={{{ns}.alive=1}}] run scoreboard players set #detect_end {ns}.data 1

## Classement
function {ns}:modes/race/classement/main
""")

	# /start (translation ref rewritten)
	write_function(f"{path}/start", f"""
scoreboard players set @a[tag=!detached] {ns}.alive 1

effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] regeneration infinite 255 true
effect give @a[tag=!detached] resistance infinite 255 true
execute as @a[tag=!detached] run attribute @s gravity base set 0
function {ns}:utils/set_dynamic_time

gamerule minecraft:fall_damage false

function {ns}:modes/race/translations/start

# Tell map loading that it's race game mode
scoreboard players set #is_race {ns}.data 1

# Setup starting variables
scoreboard players set #can_vote {ns}.data 1
scoreboard players set #remaining_time {ns}.data 615
scoreboard players set #race_seconds {ns}.data -8
scoreboard players set #race_ticks {ns}.data 0
scoreboard players set #process_end {ns}.data 0
scoreboard players set #detect_end {ns}.data 0

function {ns}:modes/_common/racing_start_setup

## Téléportation des joueurs + give d'items
scoreboard players set #dont_regenerate {ns}.data 1
function {ns}:maps/choose_map_for {{id:"race", maps:["bowser_castle","snow_travel","mario_circuit","plains_routine","sakura_land","hills_land","airship_fortress","dk_mountain","clock_circuit","boat_race_1","boat_race_2"]}}
schedule function {ns}:modes/race/give_items 1s
schedule function {ns}:modes/race/post_load 9s

# Get the map type (shopping kart = 0, boat = 1, etc.)
scoreboard players set #map_type {ns}.data 0
execute if data storage {ns}:main {{map:"boat_race_1"}} run scoreboard players set #map_type {ns}.data 1
execute if data storage {ns}:main {{map:"boat_race_2"}} run scoreboard players set #map_type {ns}.data 1
""")

	# /stop
	write_function(f"{path}/stop", f"""
execute at @e[tag={ns}.checkpoint] run forceload remove ~ ~
execute at @e[tag={ns}.effect_block] run forceload remove ~ ~

# Safe kill karts and checkpoints
function {ns}:utils/safe_kill_macro {{selector:"@e[tag={ns}.vehicle]"}}
function {ns}:utils/safe_kill_macro {{selector:"@e[tag={ns}.checkpoint]"}}

schedule clear {ns}:modes/race/give_items
schedule clear {ns}:modes/race/post_load

function {ns}:modes/race/stop_cleanup
""")

	# /stop_cleanup
	write_function(f"{path}/stop_cleanup", f"""
scoreboard objectives remove {ns}.temp
scoreboard objectives remove {ns}.temp.old_speed
scoreboard objectives remove {ns}.temp.compteur
scoreboard objectives remove {ns}.temp.x
scoreboard objectives remove {ns}.temp.y
scoreboard objectives remove {ns}.temp.z
scoreboard objectives remove {ns}.temp.dx
scoreboard objectives remove {ns}.temp.dy
scoreboard objectives remove {ns}.temp.dz
scoreboard objectives remove {ns}.temp.id
scoreboard objectives remove {ns}.temp.vote_collisions
scoreboard objectives remove {ns}.temp.change_map
scoreboard objectives remove {ns}.temp.checkpoint
scoreboard objectives remove {ns}.temp.classement
scoreboard objectives remove {ns}.temp.pv_classement
scoreboard objectives remove {ns}.temp.pos_on_last_lap
scoreboard objectives remove {ns}.temp.sidebar
scoreboard objectives remove {ns}.respawn_cp_id
scoreboard objectives remove {ns}.hard_respawn_cp_id
scoreboard objectives remove {ns}.checkpoint
scoreboard objectives remove {ns}.lap
scoreboard objectives remove {ns}.effects.last
scoreboard objectives remove {ns}.effects.timer

team remove {ns}.temp.kart
team remove {ns}.temp.1
team remove {ns}.temp.2
team remove {ns}.temp.3
team remove {ns}.temp.4
team remove {ns}.temp.5
team remove {ns}.temp.6
team remove {ns}.temp.7
team remove {ns}.temp.8
team remove {ns}.temp.9
team remove {ns}.temp.10
team remove {ns}.temp.10+

data remove storage {ns}:main respawn_states
""")

	# /tick
	write_function(f"{path}/tick", f"""
# Timer
scoreboard players add #race_ticks {ns}.data 1

# Blocks tick, checkpoints tick, right click detection
execute if score #detect_end {ns}.data matches 0 as @e[tag=shopping_kart.kart] at @s run function {ns}:modes/race/tm_blocks/tick
execute if score #detect_end {ns}.data matches 0 as @e[type=marker,tag={ns}.checkpoint] at @s run function {ns}:modes/race/checkpoints/tick
execute if score #detect_end {ns}.data matches 0 as @a[tag=!detached,scores={{{ns}.right_click=1..}}] run function {ns}:modes/race/right_click

# Start fixes -7
execute if score #race_seconds {ns}.data matches -7..-1 run team join {ns}.temp.kart @e[tag={ns}.vehicle]
execute if score #race_seconds {ns}.data matches -7..-1 as @e[tag={ns}.vehicle] run data modify entity @s NoAI set value 1b
execute if score #race_seconds {ns}.data matches -7..-1 as @e[tag={ns}.vehicle] run tp @s @s
execute if score #race_seconds {ns}.data matches ..-8 if score #map_type {ns}.data matches 0 run scoreboard players set @e[tag=shopping_kart.kart] shopping_kart.engine 0
execute if score #race_seconds {ns}.data matches -7..-1 if score #map_type {ns}.data matches 0 run scoreboard players set @e[tag=shopping_kart.kart,scores={{shopping_kart.engine=200..}}] shopping_kart.engine 200
execute if score #race_seconds {ns}.data matches 0 as @e[tag={ns}.vehicle] run data modify entity @s NoAI set value 0b

# Force riding the kart
execute as @a[tag=!detached,gamemode=adventure,predicate=!{ns}:has_vehicle] at @s run ride @s mount @n[tag={ns}.vehicle,predicate=!{ns}:has_player_passenger,distance=..100]

# Remove items and death prevention
function {ns}:utils/on_death_run_function {{function:"{ns}:modes/race/joined"}}
kill @e[type=item]

# Maps tick for special events
execute if data storage {ns}:main {{map:"plains_routine"}} run function {ns}:modes/race/map_tick/plains_routine
execute if data storage {ns}:main {{map:"airship_fortress"}} run function {ns}:modes/race/map_tick/airship_fortress
execute if data storage {ns}:main {{map:"dk_mountain"}} run function {ns}:modes/race/map_tick/dk_mountain
execute if data storage {ns}:main {{map:"clock_circuit"}} run function {ns}:modes/race/map_tick/clock_circuit
execute if data storage {ns}:main {{map:"trackmania_stadium_2"}} run function {ns}:modes/race/map_tick/trackmania_stadium_2

## Fin de la partie
execute if score #detect_end {ns}.data matches 1.. run function {ns}:modes/race/process_end
""")

	# /tm_blocks/cruise_control (translation ref rewritten)
	write_function(f"{path}/tm_blocks/cruise_control", f"""
## Cruise control block
# This block is used to change the max engine speed of
# the kart to the current engine speed of the kart

# Define last effect and timer
scoreboard players set @s {ns}.effects.last 4
scoreboard players set @s {ns}.effects.timer 50

# Title and subtitle to the player
tag @s add {ns}.temp
function {ns}:modes/race/translations/blocks_cruise_control
execute on passengers at @s run playsound entity.experience_orb.pickup ambient @s ^ ^ ^10 100 1 1
tag @s remove {ns}.temp

# Applying effects
scoreboard players operation @s shopping_kart.cruise_control = @s shopping_kart.max_engine
scoreboard players operation @s shopping_kart.max_engine = @s shopping_kart.engine
""")

	# /tm_blocks/engine_off (translation ref rewritten)
	write_function(f"{path}/tm_blocks/engine_off", f"""
## Engine off block
# This block is used to turn off the engine

# Define last effect and timer
scoreboard players set @s {ns}.effects.last 2
scoreboard players set @s {ns}.effects.timer 50

# Title and subtitle to the player
tag @s add {ns}.temp
function {ns}:modes/race/translations/blocks_engine_off
execute on passengers at @s run playsound entity.experience_orb.pickup ambient @s ^ ^ ^10 100 1 1
tag @s remove {ns}.temp

# Applying effects
tag @s add shopping_kart.engine_off
""")

	# /tm_blocks/no_grip (translation ref rewritten)
	write_function(f"{path}/tm_blocks/no_grip", f"""
## No grip block
# This block is used to disable grip for the kart

# Define last effect and timer
scoreboard players set @s {ns}.effects.last 6
scoreboard players set @s {ns}.effects.timer 50

# Title and subtitle to the player
tag @s add {ns}.temp
function {ns}:modes/race/translations/blocks_no_grip
execute on passengers at @s run playsound entity.experience_orb.pickup ambient @s ^ ^ ^10 100 1 1
tag @s remove {ns}.temp

# Applying effects
tag @s add shopping_kart.no_grip
""")

	# /tm_blocks/no_steering (translation ref rewritten)
	write_function(f"{path}/tm_blocks/no_steering", f"""
## No steering block
# This block is used to disable steering for the kart

# Define last effect and timer
scoreboard players set @s {ns}.effects.last 3
scoreboard players set @s {ns}.effects.timer 50

# Title and subtitle to the player
tag @s add {ns}.temp
function {ns}:modes/race/translations/blocks_no_steering
execute on passengers at @s run playsound entity.experience_orb.pickup ambient @s ^ ^ ^10 100 1 1
tag @s remove {ns}.temp

# Applying effects
tag @s add shopping_kart.no_steering
""")

	# /tm_blocks/reactor_boost (translation ref rewritten; NOTE: trailing space on "used to ")
	write_function(f"{path}/tm_blocks/reactor_boost", f"""
## Reactor boost block
# This block is used to 

# Define last effect and timer
scoreboard players set @s {ns}.effects.last 5
scoreboard players set @s {ns}.effects.timer 50

# Title and subtitle to the player
tag @s add {ns}.temp
function {ns}:modes/race/translations/blocks_reactor_boost
execute on passengers at @s run playsound entity.experience_orb.pickup ambient @s ^ ^ ^10 100 1 1
tag @s remove {ns}.temp

# Applying effects
scoreboard players set @s shopping_kart.reactor_boost 120
""")

	# /tm_blocks/reset (translation ref rewritten)
	write_function(f"{path}/tm_blocks/reset", f"""
## Reset block
# This block is used to reset the vehicle to its default state
# (Remove cruise_control, reactor_boost, engine_off, no_steering, no_grip)

# Define last effect and timer
scoreboard players set @s {ns}.effects.last 1
scoreboard players set @s {ns}.effects.timer 50

# Title and subtitle to the player
tag @s add {ns}.temp
function {ns}:modes/race/translations/blocks_reset
execute on passengers at @s run playsound entity.experience_orb.pickup ambient @s ^ ^ ^10 100 1 1
tag @s remove {ns}.temp

# Reseting effects
scoreboard players operation @s[scores={{shopping_kart.cruise_control=1..}}] shopping_kart.max_engine = @s shopping_kart.cruise_control
scoreboard players set @s shopping_kart.cruise_control 0
scoreboard players set @s shopping_kart.reactor_boost 0
tag @s remove shopping_kart.engine_off
tag @s remove shopping_kart.no_steering
tag @s remove shopping_kart.no_grip
""")

	# /tm_blocks/reset_checkpoint
	write_function(f"{path}/tm_blocks/reset_checkpoint", """
## Reset effects due to crossing a checkpoint
# (Remove cruise_control, engine_off, no_steering, no_grip)
scoreboard players operation @s[scores={shopping_kart.cruise_control=1..}] shopping_kart.max_engine = @s shopping_kart.cruise_control
scoreboard players set @s shopping_kart.cruise_control 0
tag @s remove shopping_kart.engine_off
tag @s remove shopping_kart.no_steering
tag @s remove shopping_kart.no_grip
""")

	# /tm_blocks/tick
	write_function(f"{path}/tm_blocks/tick", f"""
## Out of map
execute if block ~ ~-1 ~ barrier if block ~ ~-2 ~ structure_void run function {ns}:modes/race/out_of_map


## Trackmania blocks
execute if score @s {ns}.effects.timer matches 1.. run scoreboard players remove @s {ns}.effects.timer 1

# Reset Block
execute unless score @s {ns}.effects.last matches 1 if entity @e[tag={ns}.tm_blocks.reset,distance=..4] at @s if block ~ ~-1 ~ lime_wool run function {ns}:modes/race/tm_blocks/reset
execute if score @s {ns}.effects.last matches 1 unless score @s {ns}.effects.timer matches 1.. if entity @e[tag={ns}.tm_blocks.reset,distance=..4] at @s if block ~ ~-1 ~ lime_wool run function {ns}:modes/race/tm_blocks/reset

# Engine Off Block
execute unless score @s {ns}.effects.last matches 2 if entity @e[tag={ns}.tm_blocks.engine_off,distance=..4] at @s if block ~ ~-1 ~ red_wool run function {ns}:modes/race/tm_blocks/engine_off
execute if score @s {ns}.effects.last matches 2 unless score @s {ns}.effects.timer matches 1.. if entity @e[tag={ns}.tm_blocks.engine_off,distance=..4] at @s if block ~ ~-1 ~ red_wool run function {ns}:modes/race/tm_blocks/engine_off

# No Steering Block
execute unless score @s {ns}.effects.last matches 3 if entity @e[tag={ns}.tm_blocks.no_steering,distance=..4] at @s if block ~ ~-1 ~ purple_wool run function {ns}:modes/race/tm_blocks/no_steering
execute if score @s {ns}.effects.last matches 3 unless score @s {ns}.effects.timer matches 1.. if entity @e[tag={ns}.tm_blocks.no_steering,distance=..4] at @s if block ~ ~-1 ~ purple_wool run function {ns}:modes/race/tm_blocks/no_steering

# Cruise Control Block
execute unless score @s {ns}.effects.last matches 4 if entity @e[tag={ns}.tm_blocks.cruise_control,distance=..4] at @s if block ~ ~-1 ~ blue_wool run function {ns}:modes/race/tm_blocks/cruise_control
execute if score @s {ns}.effects.last matches 4 unless score @s {ns}.effects.timer matches 1.. if entity @e[tag={ns}.tm_blocks.cruise_control,distance=..4] at @s if block ~ ~-1 ~ blue_wool run function {ns}:modes/race/tm_blocks/cruise_control

# Reactor Boost Block
execute unless score @s {ns}.effects.last matches 5 if entity @e[tag={ns}.tm_blocks.reactor_boost,distance=..4] at @s if block ~ ~-1 ~ orange_wool run function {ns}:modes/race/tm_blocks/reactor_boost
execute if score @s {ns}.effects.last matches 5 unless score @s {ns}.effects.timer matches 1.. if entity @e[tag={ns}.tm_blocks.reactor_boost,distance=..4] at @s if block ~ ~-1 ~ orange_wool run function {ns}:modes/race/tm_blocks/reactor_boost

# No Grip Block
execute unless score @s {ns}.effects.last matches 6 if entity @e[tag={ns}.tm_blocks.no_grip,distance=..4] at @s if block ~ ~-1 ~ light_blue_wool run function {ns}:modes/race/tm_blocks/no_grip
execute if score @s {ns}.effects.last matches 6 unless score @s {ns}.effects.timer matches 1.. if entity @e[tag={ns}.tm_blocks.no_grip,distance=..4] at @s if block ~ ~-1 ~ light_blue_wool run function {ns}:modes/race/tm_blocks/no_grip
""")

	# /vote_for_change_map (translation ref rewritten)
	write_function(f"{path}/vote_for_change_map", f"""
scoreboard players set @s {ns}.temp.change_map 1

scoreboard players set #votes {ns}.data 0
scoreboard players set #votes_max {ns}.data 0
execute store result score #votes {ns}.data if entity @a[scores={{{ns}.temp.change_map=1}}]
execute store result score #votes_max {ns}.data if entity @a[tag=!detached,gamemode=!spectator]
scoreboard players operation #votes_max {ns}.data /= #2 {ns}.data
scoreboard players add #votes_max {ns}.data 1

function {ns}:modes/race/translations/vote_for_change_map

execute if score #votes {ns}.data >= #votes_max {ns}.data run function {ns}:modes/race/restart_game
""")

	# /vote_for_collisions (translation ref rewritten)
	write_function(f"{path}/vote_for_collisions", f"""
scoreboard players set @s {ns}.temp.vote_collisions 1

scoreboard players set #votes {ns}.data 0
scoreboard players set #votes_max {ns}.data 0
execute store result score #votes {ns}.data if entity @a[scores={{{ns}.temp.vote_collisions=1}}]
execute store result score #votes_max {ns}.data if entity @a[tag=!detached,gamemode=!spectator]
scoreboard players operation #votes_max {ns}.data /= #2 {ns}.data
scoreboard players add #votes_max {ns}.data 1


execute if score #votes {ns}.data >= #votes_max {ns}.data run scoreboard players set @a[tag=!detached] {ns}.temp.vote_collisions 1
function {ns}:modes/race/translations/vote_for_collisions
execute if score #votes {ns}.data >= #votes_max {ns}.data run team modify {ns}.temp.kart collisionRule always
execute if score #votes {ns}.data >= #votes_max {ns}.data run team modify {ns}.temp.1 collisionRule always
execute if score #votes {ns}.data >= #votes_max {ns}.data run team modify {ns}.temp.2 collisionRule always
execute if score #votes {ns}.data >= #votes_max {ns}.data run team modify {ns}.temp.3 collisionRule always
execute if score #votes {ns}.data >= #votes_max {ns}.data run team modify {ns}.temp.4 collisionRule always
execute if score #votes {ns}.data >= #votes_max {ns}.data run team modify {ns}.temp.5 collisionRule always
execute if score #votes {ns}.data >= #votes_max {ns}.data run team modify {ns}.temp.6 collisionRule always
execute if score #votes {ns}.data >= #votes_max {ns}.data run team modify {ns}.temp.7 collisionRule always
execute if score #votes {ns}.data >= #votes_max {ns}.data run team modify {ns}.temp.8 collisionRule always
execute if score #votes {ns}.data >= #votes_max {ns}.data run team modify {ns}.temp.9 collisionRule always
execute if score #votes {ns}.data >= #votes_max {ns}.data run team modify {ns}.temp.10 collisionRule always
execute if score #votes {ns}.data >= #votes_max {ns}.data run team modify {ns}.temp.10+ collisionRule always
""")

	# /xp_bar
	write_time_xp_bar(f"{path}/xp_bar", 300)

