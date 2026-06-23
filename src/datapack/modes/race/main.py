
# ruff: noqa: E501, W291
# Imports
from stewbeet import Mem, write_function

from ..common import write_modes_calls, write_time_xp_bar
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "race"
	path: str = f"{ns}:modes/{mode}"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()


	# /advancements/inventory_changed
	write_function(f"{path}/advancements/inventory_changed", """
execute if score #engine_state switch.data matches 3 if data storage switch:main {current_game:"race"} if entity @s[gamemode=!creative,tag=!detached] run function switch:modes/race/advancements/inventory_changed_confirm
advancement revoke @s only switch:race/inventory_changed
""")

	# /advancements/inventory_changed_confirm
	write_function(f"{path}/advancements/inventory_changed_confirm", """
# Copy for faster nbt check
data modify storage switch:main Inventory set from entity @s Inventory

# If any item is missing, set #success to 1
scoreboard players set #success switch.data 0
execute if score #success switch.data matches 0 store success score #success switch.data unless data storage switch:main Inventory[{Slot:0b}].components."minecraft:custom_data".switch.classic_respawn
execute if score #success switch.data matches 0 store success score #success switch.data unless data storage switch:main Inventory[{Slot:1b}].components."minecraft:custom_data".switch.hard_respawn
execute if score #success switch.data matches 0 store success score #success switch.data unless data storage switch:main Inventory[{Slot:8b}].components."minecraft:custom_data".switch.change_map

# If any item is missing, clear and regive items
execute if score #success switch.data matches 1 run clear @s warped_fungus_on_a_stick
execute if score #success switch.data matches 1 run item replace entity @s hotbar.0 with warped_fungus_on_a_stick[unbreakable={},item_name={"text":"Classic Respawn","color":"yellow"},item_model="switch:wormhole_potion",custom_data={switch:{classic_respawn:1b}}]
execute if score #success switch.data matches 1 run item replace entity @s hotbar.1 with warped_fungus_on_a_stick[unbreakable={},item_name={"text":"Hard Respawn","color":"yellow"},item_model="switch:travel_staff",custom_data={switch:{hard_respawn:1b}}]
execute if score #success switch.data matches 1 if score #can_vote switch.data matches 1 run item replace entity @s[scores={switch.lang=0}] hotbar.8 with warped_fungus_on_a_stick[unbreakable={},item_name={"text":"Vote pour changer de map","color":"yellow"},item_model="switch:quarry_configurator",custom_data={switch:{change_map:1b,vote:1b}}]
execute if score #success switch.data matches 1 if score #can_vote switch.data matches 1 run item replace entity @s[scores={switch.lang=1}] hotbar.8 with warped_fungus_on_a_stick[unbreakable={},item_name={"text":"Vote to change map","color":"yellow"},item_model="switch:quarry_configurator",custom_data={switch:{change_map:1b,vote:1b}}]
""")

	# /checkpoints/check_player_pos (translation ref rewritten)
	write_function(f"{path}/checkpoints/check_player_pos", """
execute store result score #px switch.data run data get entity @s Pos[0]
execute store result score #py switch.data run data get entity @s Pos[1]
execute store result score #pz switch.data run data get entity @s Pos[2]


scoreboard players operation #px switch.data -= #x switch.data
scoreboard players operation #py switch.data -= #y switch.data
scoreboard players operation #pz switch.data -= #z switch.data
execute if score #px switch.data matches ..-1 run scoreboard players operation #px switch.data *= #-1 switch.data
execute if score #py switch.data matches ..-1 run scoreboard players operation #py switch.data *= #-1 switch.data
execute if score #pz switch.data matches ..-1 run scoreboard players operation #pz switch.data *= #-1 switch.data

execute if score #px switch.data <= #dx switch.data if score #py switch.data <= #dy switch.data if score #pz switch.data <= #dz switch.data run function switch:modes/race/checkpoints/player_in

function switch:modes/race/translations/checkpoints_check_player_pos
""")

	# /checkpoints/forced_respawn (translation ref rewritten)
	write_function(f"{path}/checkpoints/forced_respawn", """
function switch:modes/race/checkpoints/respawn/hard
function switch:modes/race/translations/checkpoints_forced_respawn
execute at @s run playsound stardust:wormhole_potion ambient @s ^ ^ ^3
execute at @s run particle portal ^ ^1 ^1 1 1 1 1 1000
""")

	# /checkpoints/player_in (translation ref rewritten)
	write_function(f"{path}/checkpoints/player_in", """
# Switch to next checkpoint
scoreboard players add @s switch.checkpoint 1
scoreboard players add @s switch.temp.checkpoint 1
scoreboard players operation @s switch.checkpoint %= #modulo switch.data
execute if score @s switch.checkpoint matches 0 run scoreboard players add @s switch.lap 1
execute if score @s switch.checkpoint matches 0 unless score @s switch.lap > #total_laps switch.data run scoreboard players operation @s switch.temp.pos_on_last_lap = @s switch.temp.pv_classement

# Playsounds & messages
execute if score @s switch.checkpoint matches 0 at @e[limit=2] at @s run playsound item.goat_horn.sound.1 ambient @s ^ ^ ^10 100 1 1
function switch:modes/race/translations/checkpoints_player_in
execute unless score @s switch.checkpoint matches 0 at @s run playsound entity.player.levelup ambient @s ^ ^ ^10 100 2 1
execute if score @s switch.checkpoint matches 0 if score @s switch.lap > #total_laps switch.data run function switch:modes/race/complete

# Checkpoint remember
function switch:modes/race/checkpoints/remember/main
""")

	# /checkpoints/remember/get_from_kart
	write_function(f"{path}/checkpoints/remember/get_from_kart", """
function switch:modes/race/tm_blocks/reset_checkpoint

data modify storage switch:main temp.Pos set from entity @s Pos
data modify storage switch:main temp.Rotation set from entity @s Rotation
data modify storage switch:main temp.Motion set from entity @s Motion
data modify storage switch:main temp.Tags set from entity @s Tags
data modify storage switch:main temp.active_effects set from entity @s active_effects
data modify storage switch:main temp.Fire set from entity @s Fire
data modify storage switch:main temp.HurtTime set from entity @s HurtTime
data modify storage switch:main temp.Brain set from entity @s Brain
execute store result storage switch:main temp.scores.shopping_kart.engine int 1 run scoreboard players get @s shopping_kart.engine
execute store result storage switch:main temp.scores.shopping_kart.max_engine int 1 run scoreboard players get @s shopping_kart.max_engine
execute store result storage switch:main temp.scores.shopping_kart.motion_x int 1 run scoreboard players get @s shopping_kart.motion_x
execute store result storage switch:main temp.scores.shopping_kart.motion_z int 1 run scoreboard players get @s shopping_kart.motion_z
execute store result storage switch:main temp.scores.shopping_kart.predicted_pos_x int 1 run scoreboard players get @s shopping_kart.predicted_pos_x
execute store result storage switch:main temp.scores.shopping_kart.predicted_pos_z int 1 run scoreboard players get @s shopping_kart.predicted_pos_z
execute store result storage switch:main temp.scores.shopping_kart.old_pos_x int 1 run scoreboard players get @s shopping_kart.old_pos_x
execute store result storage switch:main temp.scores.shopping_kart.old_pos_y int 1 run scoreboard players get @s shopping_kart.old_pos_y
execute store result storage switch:main temp.scores.shopping_kart.old_pos_z int 1 run scoreboard players get @s shopping_kart.old_pos_z
execute store result storage switch:main temp.scores.shopping_kart.booster_timer int 1 run scoreboard players get @s shopping_kart.booster_timer
execute store result storage switch:main temp.scores.shopping_kart.reactor_boost int 1 run scoreboard players get @s shopping_kart.reactor_boost
execute store result storage switch:main temp.scores.shopping_kart.cruise_control int 1 run scoreboard players get @s shopping_kart.cruise_control
""")

	# /checkpoints/remember/main
	write_function(f"{path}/checkpoints/remember/main", """
scoreboard players operation @s switch.respawn_cp_id = #respawn_cp_id switch.data
execute if score #can_hard_reset switch.data matches 1 run scoreboard players operation @s switch.hard_respawn_cp_id = #respawn_cp_id switch.data

tag @s add switch.temp
data modify storage switch:main temp set value {id:0,Pos:[0.d,0.d,0.d],Rotation:[0.f,0.f],Motion:[0.d,0.d,0.d],Tags:[],scores:{shopping_kart:{engine:0,max_engine:0,motion_x:0,motion_z:0,predicted_pos_x:0,predicted_pos_z:0,old_pos_x:0,old_pos_y:0,old_pos_z:0,booster_timer:0,reactor_boost:0,cruise_control:0}}}
execute as @e[tag=switch.vehicle,predicate=switch:have_temp_player_passenger] run function switch:modes/race/checkpoints/remember/get_from_kart
execute store result storage switch:main temp.id int 1 run scoreboard players get @s switch.temp.id
tag @s remove switch.temp

data modify storage switch:main copy set from storage switch:main respawn_states
data modify storage switch:main new set value []

execute if data storage switch:main copy[0] run function switch:modes/race/checkpoints/remember/storage_loop
data modify storage switch:main respawn_states set from storage switch:main new
""")

	# /checkpoints/remember/storage_loop
	write_function(f"{path}/checkpoints/remember/storage_loop", """
execute store result score #id switch.data run data get storage switch:main copy[0].id
execute if score @s switch.temp.id = #id switch.data run data modify storage switch:main new append from storage switch:main temp
execute unless score @s switch.temp.id = #id switch.data run data modify storage switch:main new append from storage switch:main copy[0]

data remove storage switch:main copy[0]
execute if data storage switch:main copy[0] run function switch:modes/race/checkpoints/remember/storage_loop
""")

	# /checkpoints/respawn/classic
	write_function(f"{path}/checkpoints/respawn/classic", """
scoreboard players operation #p_id switch.data = @s switch.temp.id
data modify storage switch:main copy set from storage switch:main respawn_states
execute if data storage switch:main copy[0] run function switch:modes/race/checkpoints/respawn/get_storage_loop

tag @s add switch.temp
execute at @s positioned 0 0 0 summon marker run function switch:modes/race/checkpoints/respawn/from_marker
execute on vehicle run tp @p[tag=switch.temp] @s
tag @s remove switch.temp

tag @s add switch.playsound
""")

	# /checkpoints/respawn/from_kart
	write_function(f"{path}/checkpoints/respawn/from_kart", """
# copy[0] is the respawn state
tp @s ~ ~ ~ ~ ~
data modify entity @s Pos set from storage switch:main copy[0].Pos
data modify entity @s Rotation set from storage switch:main copy[0].Rotation
data modify entity @s Motion set from storage switch:main copy[0].Motion
data modify entity @s Tags set from storage switch:main copy[0].Tags
data modify entity @s active_effects set from storage switch:main copy[0].active_effects
data modify entity @s Fire set from storage switch:main copy[0].Fire
data modify entity @s HurtTime set from storage switch:main copy[0].HurtTime
data modify entity @s Brain set from storage switch:main copy[0].Brain
execute store result score @s shopping_kart.engine run data get storage switch:main copy[0].scores.shopping_kart.engine
execute store result score @s shopping_kart.max_engine run data get storage switch:main copy[0].scores.shopping_kart.max_engine
execute store result score @s shopping_kart.motion_x run data get storage switch:main copy[0].scores.shopping_kart.motion_x
execute store result score @s shopping_kart.motion_z run data get storage switch:main copy[0].scores.shopping_kart.motion_z
execute store result score @s shopping_kart.predicted_pos_x run data get storage switch:main copy[0].scores.shopping_kart.predicted_pos_x
execute store result score @s shopping_kart.predicted_pos_z run data get storage switch:main copy[0].scores.shopping_kart.predicted_pos_z
execute store result score @s shopping_kart.old_pos_x run data get storage switch:main copy[0].scores.shopping_kart.old_pos_x
execute store result score @s shopping_kart.old_pos_y run data get storage switch:main copy[0].scores.shopping_kart.old_pos_y
execute store result score @s shopping_kart.old_pos_z run data get storage switch:main copy[0].scores.shopping_kart.old_pos_z
execute store result score @s shopping_kart.booster_timer run data get storage switch:main copy[0].scores.shopping_kart.booster_timer
execute store result score @s shopping_kart.reactor_boost run data get storage switch:main copy[0].scores.shopping_kart.reactor_boost
execute store result score @s shopping_kart.cruise_control run data get storage switch:main copy[0].scores.shopping_kart.cruise_control
scoreboard players remove @s shopping_kart.old_pos_y 100000
scoreboard players reset @s switch.temp.compteur
scoreboard players reset @s switch.effects.timer
""")

	# /checkpoints/respawn/from_marker
	write_function(f"{path}/checkpoints/respawn/from_marker", """
data modify entity @s Pos set from storage switch:main copy[0].Pos
data modify entity @s Rotation set from storage switch:main copy[0].Rotation
execute at @s as @n[tag=switch.vehicle,predicate=switch:have_temp_player_passenger] run function switch:modes/race/checkpoints/respawn/from_kart
kill @s
""")

	# /checkpoints/respawn/get_storage_loop
	write_function(f"{path}/checkpoints/respawn/get_storage_loop", """
execute store result score #id switch.data run data get storage switch:main copy[0].id
execute unless score #p_id switch.data = #id switch.data run data remove storage switch:main copy[0]
execute unless score #p_id switch.data = #id switch.data if data storage switch:main copy[0] run function switch:modes/race/checkpoints/respawn/get_storage_loop
""")

	# /checkpoints/respawn/hard
	write_function(f"{path}/checkpoints/respawn/hard", """
tag @s add switch.temp
scoreboard players operation #respawn_cp_id switch.data = @s switch.hard_respawn_cp_id
execute if score @s switch.hard_respawn_cp_id matches -1 run scoreboard players operation #respawn_cp_id switch.data = #default switch.hard_respawn_cp_id
execute at @e[tag=switch.checkpoint,predicate=switch:has_same_respawn_cp_id] as @e[tag=switch.vehicle,predicate=switch:have_temp_player_passenger] run function switch:modes/race/checkpoints/respawn/hard_from_kart
tag @s remove switch.temp

tag @s add switch.playsound
""")

	# /checkpoints/respawn/hard_from_kart
	write_function(f"{path}/checkpoints/respawn/hard_from_kart", """
tp @s ~ ~ ~ ~ ~
data modify entity @s Motion set value [0.d, 0.d, 0.d]
data modify entity @s Tags set value ["switch.vehicle"]
execute if score #map_type switch.data matches 0 run tag @s add shopping_kart.kart
data modify entity @s Fire set value 0s
data modify entity @s Brain set value {memories:{}}
scoreboard players set @s shopping_kart.engine 0
scoreboard players set @s shopping_kart.booster_timer 0
scoreboard players set @s shopping_kart.reactor_boost 0
scoreboard players set @s shopping_kart.cruise_control 0
scoreboard players remove @s shopping_kart.old_pos_y 100000
scoreboard players reset @s switch.temp.compteur
scoreboard players reset @s switch.effects.timer
""")

	# /checkpoints/setup
	write_function(f"{path}/checkpoints/setup", """
# Apply Checkpoint ID for Respawn
scoreboard players add #next_id switch.temp.id 1
scoreboard players operation @s switch.temp.id = #next_id switch.temp.id

execute store result score @s switch.checkpoint run data get entity @s data.cp
execute store result score @s switch.temp.dx run data get entity @s data.dx
execute store result score @s switch.temp.dy run data get entity @s data.dy
execute store result score @s switch.temp.dz run data get entity @s data.dz
""")

	# /checkpoints/tick
	write_function(f"{path}/checkpoints/tick", """
execute store result score #x switch.data run data get entity @s Pos[0]
execute store result score #y switch.data run data get entity @s Pos[1]
execute store result score #z switch.data run data get entity @s Pos[2]
scoreboard players operation #dx switch.data = @s switch.temp.dx
scoreboard players operation #dy switch.data = @s switch.temp.dy
scoreboard players operation #dz switch.data = @s switch.temp.dz
scoreboard players operation #respawn_cp_id switch.data = @s switch.temp.id
scoreboard players operation #checkpoint switch.data = @s switch.checkpoint
scoreboard players remove #checkpoint switch.data 1
execute if score #checkpoint switch.data matches -1 run scoreboard players operation #checkpoint switch.data = #total_checkpoints switch.data

scoreboard players set #can_hard_reset switch.data 0
execute if entity @s[tag=switch.can_hard_reset] run scoreboard players set #can_hard_reset switch.data 1
execute as @a[tag=!detached,predicate=switch:has_same_checkpoint] run function switch:modes/race/checkpoints/check_player_pos

particle wax_on ~ ~2 ~ 2 2 2 0 2
particle wax_off ~ ~2 ~ 2 2 2 0 2
""")

	# /classement/find_anyone_in_same_cp
	write_function(f"{path}/classement/find_anyone_in_same_cp", """
execute unless score @s switch.temp matches 1 run function switch:modes/race/classement/find_anyone_in_same_cp_more
""")

	# /classement/find_anyone_in_same_cp_more (NOTE: trailing space on line 2)
	write_function(f"{path}/classement/find_anyone_in_same_cp_more", """
tag @s add switch.temp
scoreboard players operation #predicate switch.data = @s switch.temp.classement 
scoreboard players set @a[tag=!detached,tag=!switch.temp,predicate=switch:has_same_classement] switch.temp 1
tag @s remove switch.temp
""")

	# /classement/has_same_classement
	write_function(f"{path}/classement/has_same_classement", """
scoreboard players operation #checkpoint switch.data = @s switch.temp.checkpoint
tag @a[tag=!detached,predicate=switch:has_same_temp_checkpoint] add switch.process

scoreboard players operation #checkpoint switch.data = @s switch.checkpoint
scoreboard players add #checkpoint switch.data 1
scoreboard players operation #checkpoint switch.data %= #modulo switch.data

scoreboard players set #add switch.data 0
execute at @e[type=marker,tag=switch.checkpoint,predicate=switch:has_same_checkpoint,sort=nearest,limit=1] as @a[tag=!detached,tag=switch.process,sort=nearest] run function switch:modes/race/classement/increase

scoreboard players reset @a[tag=!detached,tag=switch.process] switch.temp
tag @a[tag=!detached,tag=switch.process] remove switch.process
""")

	# /classement/increase
	write_function(f"{path}/classement/increase", """
scoreboard players operation @s switch.temp.classement += #add switch.data
scoreboard players add #add switch.data 1
""")

	# /classement/main
	write_function(f"{path}/classement/main", """
# Définition du classement selon le nombre de checkpoints passés
scoreboard players set @a[tag=!detached] switch.temp.classement 1
execute as @a[tag=!detached] at @a[tag=!detached] if score @s switch.temp.checkpoint < @p switch.temp.checkpoint run scoreboard players add @s switch.temp.classement 1


# Amélioration du classement selon leur distance du prochain checkpoint si des joueurs ont le même nombre de checkpoints
execute as @a[tag=!detached] run function switch:modes/race/classement/find_anyone_in_same_cp
execute as @a[tag=!detached] run function switch:modes/race/classement/try


# Attribution des places
team join switch.temp.1 @a[scores={switch.temp.classement=1}]
team join switch.temp.2 @a[scores={switch.temp.classement=2}]
team join switch.temp.3 @a[scores={switch.temp.classement=3}]
team join switch.temp.4 @a[scores={switch.temp.classement=4}]
team join switch.temp.5 @a[scores={switch.temp.classement=5}]
team join switch.temp.6 @a[scores={switch.temp.classement=6}]
team join switch.temp.7 @a[scores={switch.temp.classement=7}]
team join switch.temp.8 @a[scores={switch.temp.classement=8}]
team join switch.temp.9 @a[scores={switch.temp.classement=9}]
team join switch.temp.10 @a[scores={switch.temp.classement=10}]
team join switch.temp.10+ @a[scores={switch.temp.classement=11..}]
execute as @a[tag=!detached] run scoreboard players operation @s switch.temp.pv_classement = @s switch.temp.classement


# Repositionnement des joueurs selon leur place dans le scoreboard sidebar
scoreboard players set #max switch.temp.classement 0
scoreboard players operation #max switch.temp.classement > @a[tag=!detached] switch.temp.classement
scoreboard players operation @a[tag=!detached] switch.temp.classement -= #max switch.temp.classement
scoreboard players operation @a[tag=!detached] switch.temp.classement *= #-1 switch.data

# Application des changements à droite
execute as @a[tag=!detached] run scoreboard players operation @s switch.temp.sidebar = @s switch.temp.classement
""")

	# /classement/try
	write_function(f"{path}/classement/try", """
execute if score @s switch.temp matches 1 at @s run function switch:modes/race/classement/has_same_classement
""")

	# /complete
	write_function(f"{path}/complete", """
execute if entity @s[scores={switch.alive=1}] run function switch:modes/race/finished

execute unless score @s switch.alive matches 1.. at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~ ~ ~
gamemode spectator @s
effect clear @s
clear @s
""")

	# /finished (translation ref rewritten)
	write_function(f"{path}/finished", """
scoreboard players operation #digit switch.data = #race_ticks switch.data
scoreboard players operation #digit switch.data *= #5 switch.data
scoreboard players operation #digit switch.data %= #100 switch.data

scoreboard players set @s switch.alive 2
function switch:modes/race/translations/finished
execute if score #remaining_time switch.data matches 61.. run scoreboard players set #remaining_time switch.data 60
scoreboard players add @s switch.temp.checkpoint 1000000
scoreboard players operation @s switch.temp.checkpoint -= #race_ticks switch.data

tag @s add switch.temp
function switch:utils/safe_kill_macro {selector:"@e[tag=switch.vehicle,predicate=switch:have_temp_player_passenger]"}
kill @e[type=item]
tag @s remove switch.temp

# Advancement
scoreboard players remove @s switch.temp.pos_on_last_lap 5
execute unless score #test_mode switch.data matches 1 if score @s switch.temp.pv_classement <= @s switch.temp.pos_on_last_lap run advancement grant @s only switch:visible/20

# Clear people the vote items
clear @a[tag=!detached] warped_fungus_on_a_stick[custom_data~{switch:{vote:true}}]
scoreboard players reset #can_vote switch.data
""")

	# /give_items
	write_function(f"{path}/give_items", """
# Load map checkpoints
kill @e[type=marker,tag=switch.selected_map]
function switch:maps/load_gamemode

# Summon vehicles or give items depending on the map type
execute if score #map_type switch.data matches 0 as @a[tag=!detached] at @s run function shopping_kart:kart/summon
execute if score #map_type switch.data matches 0 run tag @e[tag=shopping_kart.kart] add switch.vehicle
execute if score #map_type switch.data matches 1 as @a[tag=!detached] at @s run summon minecraft:bamboo_chest_raft ~ ~ ~ {Tags:["switch.vehicle"]}
execute if score #map_type switch.data matches 1 as @a[tag=!detached] at @s run tp @n[tag=switch.vehicle] ~ ~ ~ ~ ~

# Set up hotbar inventory
execute as @a[tag=!detached] at @s run function switch:modes/race/advancements/inventory_changed_confirm
""")

	# /joined
	write_function(f"{path}/joined", """
# Ici : dans tous les cas, mettre la personne qui join en spec
scoreboard players reset @s switch.alive
function switch:modes/race/complete
""")

	# /map_tick/airship_fortress
	write_function(f"{path}/map_tick/airship_fortress", """
scoreboard players set @e[tag=switch.vehicle,x=20654,y=109,z=20382,distance=..5] switch.temp.compteur 1
execute as @e[tag=switch.vehicle,scores={switch.temp.compteur=1..}] run function switch:modes/race/map_tick/airship_fortress_tp
""")

	# /map_tick/airship_fortress_tp (NOTE: trailing space on old_speed line)
	write_function(f"{path}/map_tick/airship_fortress_tp", """
# l1 = [20662, 110, 20382]
# l2 = [20732, 138, 20382]
# total = 40
# dx = (l2[0] - l1[0]) / total
# dy = (l2[1] - l1[1]) / total
# dz = (l2[2] - l1[2]) / total
# for i in range(0,total+1):
#    print('tp @s[scores={switch.temp.compteur='+str(i+1)+'}]', round(l1[0] + i*dx, 4), round(l1[1] + i*dy, 4), round(l1[2] + i*dz, 4))

execute if score @s switch.temp.compteur matches 1 run scoreboard players operation @s switch.temp.old_speed = @s shopping_kart.engine
execute if score @s switch.temp.compteur matches 1 run particle explosion 20662 110 20382 2 2 2 0 10 force
execute if score @s switch.temp.compteur matches 1 run playsound switch:explosion block @a[tag=!detached] 20662 110 20382

tp @s[scores={switch.temp.compteur=1}] 20662.0 110.0 20382.0
tp @s[scores={switch.temp.compteur=2}] 20663.75 110.7 20382.0
tp @s[scores={switch.temp.compteur=3}] 20665.5 111.4 20382.0
tp @s[scores={switch.temp.compteur=4}] 20667.25 112.1 20382.0
tp @s[scores={switch.temp.compteur=5}] 20669.0 112.8 20382.0
tp @s[scores={switch.temp.compteur=6}] 20670.75 113.5 20382.0
tp @s[scores={switch.temp.compteur=7}] 20672.5 114.2 20382.0
tp @s[scores={switch.temp.compteur=8}] 20674.25 114.9 20382.0
tp @s[scores={switch.temp.compteur=9}] 20676.0 115.6 20382.0
tp @s[scores={switch.temp.compteur=10}] 20677.75 116.3 20382.0
tp @s[scores={switch.temp.compteur=11}] 20679.5 117.0 20382.0
tp @s[scores={switch.temp.compteur=12}] 20681.25 117.7 20382.0
tp @s[scores={switch.temp.compteur=13}] 20683.0 118.4 20382.0
tp @s[scores={switch.temp.compteur=14}] 20684.75 119.1 20382.0
tp @s[scores={switch.temp.compteur=15}] 20686.5 119.8 20382.0
tp @s[scores={switch.temp.compteur=16}] 20688.25 120.5 20382.0
tp @s[scores={switch.temp.compteur=17}] 20690.0 121.2 20382.0
tp @s[scores={switch.temp.compteur=18}] 20691.75 121.9 20382.0
tp @s[scores={switch.temp.compteur=19}] 20693.5 122.6 20382.0
tp @s[scores={switch.temp.compteur=20}] 20695.25 123.3 20382.0
tp @s[scores={switch.temp.compteur=21}] 20697.0 124.0 20382.0
tp @s[scores={switch.temp.compteur=22}] 20698.75 124.7 20382.0
tp @s[scores={switch.temp.compteur=23}] 20700.5 125.4 20382.0
tp @s[scores={switch.temp.compteur=24}] 20702.25 126.1 20382.0
tp @s[scores={switch.temp.compteur=25}] 20704.0 126.8 20382.0
tp @s[scores={switch.temp.compteur=26}] 20705.75 127.5 20382.0
tp @s[scores={switch.temp.compteur=27}] 20707.5 128.2 20382.0
tp @s[scores={switch.temp.compteur=28}] 20709.25 128.9 20382.0
tp @s[scores={switch.temp.compteur=29}] 20711.0 129.6 20382.0
tp @s[scores={switch.temp.compteur=30}] 20712.75 130.3 20382.0
tp @s[scores={switch.temp.compteur=31}] 20714.5 131.0 20382.0
tp @s[scores={switch.temp.compteur=32}] 20716.25 131.7 20382.0
tp @s[scores={switch.temp.compteur=33}] 20718.0 132.4 20382.0
tp @s[scores={switch.temp.compteur=34}] 20719.75 133.1 20382.0
tp @s[scores={switch.temp.compteur=35}] 20721.5 133.8 20382.0
tp @s[scores={switch.temp.compteur=36}] 20723.25 134.5 20382.0
tp @s[scores={switch.temp.compteur=37}] 20725.0 135.2 20382.0
tp @s[scores={switch.temp.compteur=38}] 20726.75 135.9 20382.0
tp @s[scores={switch.temp.compteur=39}] 20728.5 136.6 20382.0
tp @s[scores={switch.temp.compteur=40}] 20730.25 137.3 20382.0
tp @s[scores={switch.temp.compteur=41}] 20732.0 138.0 20382.0

function switch:modes/race/map_tick/restore_speed {count:42}
""")

	# /map_tick/restore_speed (macro: shared tail of the per-map _tp climbs — advance the compteur,
	# and once it reaches $(count) restore the kart engine speed and clear the compteur)
	write_function(f"{path}/map_tick/restore_speed", """
scoreboard players add @s switch.temp.compteur 1
$execute if score @s switch.temp.compteur matches $(count).. run scoreboard players operation @s shopping_kart.engine = @s switch.temp.old_speed
$scoreboard players reset @s[scores={switch.temp.compteur=$(count)..}] switch.temp.compteur
""")

	# /map_tick/clock_circuit
	write_function(f"{path}/map_tick/clock_circuit", """
execute as @e[tag=switch.vehicle,x=19563,y=127,z=20339,distance=..10] at @s if block ~ ~-1 ~ diamond_block run scoreboard players set @s switch.temp.compteur 1
execute as @e[tag=switch.vehicle,scores={switch.temp.compteur=1..}] at @s run function switch:modes/race/map_tick/clock_circuit_tp
""")

	# /map_tick/clock_circuit_tp (NOTE: trailing space on old_speed line)
	write_function(f"{path}/map_tick/clock_circuit_tp", """
execute if score @s switch.temp.compteur matches 1 run scoreboard players operation @s switch.temp.old_speed = @s shopping_kart.engine

data modify entity @s[scores={switch.temp.compteur=1}] NoAI set value 1b
tp @s[scores={switch.temp.compteur=1}] ~ ~.5 20336.5
tp @s[scores={switch.temp.compteur=2}] ~ ~.25 ~-1.5
tp @s[scores={switch.temp.compteur=3}] ~ ~.25 ~-1.5
tp @s[scores={switch.temp.compteur=4}] ~ ~.1 ~-1.5
tp @s[scores={switch.temp.compteur=5}] ~ ~.1 ~-1.5
tp @s[scores={switch.temp.compteur=6}] ~ ~.3 ~-1.5
tp @s[scores={switch.temp.compteur=7}] ~ ~.5 ~-1.5
tp @s[scores={switch.temp.compteur=8}] ~ ~.5 ~-1.5
tp @s[scores={switch.temp.compteur=9}] ~ ~.5 ~-1.5
tp @s[scores={switch.temp.compteur=10}] ~ ~1 ~-1
tp @s[scores={switch.temp.compteur=11}] ~ ~1 ~-1
tp @s[scores={switch.temp.compteur=12}] ~ ~1.5 ~-.5
tp @s[scores={switch.temp.compteur=13}] ~ ~1.5 ~-.5
tp @s[scores={switch.temp.compteur=14}] ~.5 ~1.5 ~-.5
tp @s[scores={switch.temp.compteur=15}] ~.5 ~1.5 ~-.5
tp @s[scores={switch.temp.compteur=16}] ~.5 ~2 ~.5
tp @s[scores={switch.temp.compteur=17}] ~.5 ~2 ~.5
tp @s[scores={switch.temp.compteur=18}] ~.5 ~1.5 ~.5
tp @s[scores={switch.temp.compteur=19}] ~.5 ~1.5 ~.5
tp @s[scores={switch.temp.compteur=20}] ~.5 ~1 ~1
tp @s[scores={switch.temp.compteur=21}] ~.5 ~1 ~1
tp @s[scores={switch.temp.compteur=22}] ~.5 ~.5 ~1.5
tp @s[scores={switch.temp.compteur=23}] ~.5 ~.5 ~1.5
tp @s[scores={switch.temp.compteur=24}] ~.5 ~.5 ~1.5
tp @s[scores={switch.temp.compteur=25}] ~.5 ~.5 ~1.5
tp @s[scores={switch.temp.compteur=26}] ~ ~-.1 ~2
tp @s[scores={switch.temp.compteur=27}] ~ ~.1 ~2
tp @s[scores={switch.temp.compteur=28}] ~.5 ~-.5 ~1.5
tp @s[scores={switch.temp.compteur=29}] ~.5 ~-.5 ~1.5
tp @s[scores={switch.temp.compteur=30}] ~.5 ~-1 ~1.5
tp @s[scores={switch.temp.compteur=31}] ~.5 ~-1 ~1.5
tp @s[scores={switch.temp.compteur=32}] ~ ~-1.5 ~1
tp @s[scores={switch.temp.compteur=33}] ~ ~-1.5 ~1
tp @s[scores={switch.temp.compteur=34}] ~ ~-2 ~.5
tp @s[scores={switch.temp.compteur=35}] ~ ~-2 ~.5
tp @s[scores={switch.temp.compteur=36}] ~ ~-2 ~-.5
tp @s[scores={switch.temp.compteur=37}] ~ ~-2 ~-.5
tp @s[scores={switch.temp.compteur=38}] ~ ~-1.5 ~-.5
tp @s[scores={switch.temp.compteur=39}] ~ ~-1.5 ~-.5
tp @s[scores={switch.temp.compteur=40}] ~ ~-1 ~-1
tp @s[scores={switch.temp.compteur=41}] ~ ~-1 ~-1
tp @s[scores={switch.temp.compteur=42}] ~ ~-.5 ~-1.5
tp @s[scores={switch.temp.compteur=43}] ~ ~-.5 ~-1.5
tp @s[scores={switch.temp.compteur=44}] ~ ~-.5 ~-2
tp @s[scores={switch.temp.compteur=45}] ~ ~-.3 ~-2
tp @s[scores={switch.temp.compteur=46}] ~ ~-.1 ~-2
tp @s[scores={switch.temp.compteur=47}] ~ ~-.1 ~-2
data modify entity @s[scores={switch.temp.compteur=47}] NoAI set value 0b

function switch:modes/race/map_tick/restore_speed {count:48}
""")

	# /map_tick/dk_mountain
	write_function(f"{path}/map_tick/dk_mountain", """
scoreboard players set @e[tag=switch.vehicle,x=19988,y=115,z=20542,distance=..3] switch.temp.compteur 1
execute as @e[tag=switch.vehicle,scores={switch.temp.compteur=1..}] run function switch:modes/race/map_tick/dk_mountain_tp
""")

	# /map_tick/dk_mountain_tp (NOTE: trailing space on old_speed line)
	write_function(f"{path}/map_tick/dk_mountain_tp", """
# l1 = [19982, 117, 20542]
# l2 = [19732, 164, 20545]
# total = 80
# dx = (l2[0] - l1[0]) / total
# dy = (l2[1] - l1[1]) / total
# dz = (l2[2] - l1[2]) / total
# for i in range(0,total+1):
#    print('tp @s[scores={switch.temp.compteur='+str(i+1)+'}]', round(l1[0] + i*dx, 4), round(l1[1] + i*dy, 4), round(l1[2] + i*dz, 4))

execute if score @s switch.temp.compteur matches 1 run scoreboard players operation @s switch.temp.old_speed = @s shopping_kart.engine
execute if score @s switch.temp.compteur matches 1 run particle explosion 19982 117 20542 2 2 2 0 10 force
execute if score @s switch.temp.compteur matches 1 run playsound switch:explosion block @a[tag=!detached] 19982 117 20542

tp @s[scores={switch.temp.compteur=1}] 19982.0 117.0 20542.0
tp @s[scores={switch.temp.compteur=2}] 19978.875 117.5875 20542.0375
tp @s[scores={switch.temp.compteur=3}] 19975.75 118.175 20542.075
tp @s[scores={switch.temp.compteur=4}] 19972.625 118.7625 20542.1125
tp @s[scores={switch.temp.compteur=5}] 19969.5 119.35 20542.15
tp @s[scores={switch.temp.compteur=6}] 19966.375 119.9375 20542.1875
tp @s[scores={switch.temp.compteur=7}] 19963.25 120.525 20542.225
tp @s[scores={switch.temp.compteur=8}] 19960.125 121.1125 20542.2625
tp @s[scores={switch.temp.compteur=9}] 19957.0 121.7 20542.3
tp @s[scores={switch.temp.compteur=10}] 19953.875 122.2875 20542.3375
tp @s[scores={switch.temp.compteur=11}] 19950.75 122.875 20542.375
tp @s[scores={switch.temp.compteur=12}] 19947.625 123.4625 20542.4125
tp @s[scores={switch.temp.compteur=13}] 19944.5 124.05 20542.45
tp @s[scores={switch.temp.compteur=14}] 19941.375 124.6375 20542.4875
tp @s[scores={switch.temp.compteur=15}] 19938.25 125.225 20542.525
tp @s[scores={switch.temp.compteur=16}] 19935.125 125.8125 20542.5625
tp @s[scores={switch.temp.compteur=17}] 19932.0 126.4 20542.6
tp @s[scores={switch.temp.compteur=18}] 19928.875 126.9875 20542.6375
tp @s[scores={switch.temp.compteur=19}] 19925.75 127.575 20542.675
tp @s[scores={switch.temp.compteur=20}] 19922.625 128.1625 20542.7125
tp @s[scores={switch.temp.compteur=21}] 19919.5 128.75 20542.75
tp @s[scores={switch.temp.compteur=22}] 19916.375 129.3375 20542.7875
tp @s[scores={switch.temp.compteur=23}] 19913.25 129.925 20542.825
tp @s[scores={switch.temp.compteur=24}] 19910.125 130.5125 20542.8625
tp @s[scores={switch.temp.compteur=25}] 19907.0 131.1 20542.9
tp @s[scores={switch.temp.compteur=26}] 19903.875 131.6875 20542.9375
tp @s[scores={switch.temp.compteur=27}] 19900.75 132.275 20542.975
tp @s[scores={switch.temp.compteur=28}] 19897.625 132.8625 20543.0125
tp @s[scores={switch.temp.compteur=29}] 19894.5 133.45 20543.05
tp @s[scores={switch.temp.compteur=30}] 19891.375 134.0375 20543.0875
tp @s[scores={switch.temp.compteur=31}] 19888.25 134.625 20543.125
tp @s[scores={switch.temp.compteur=32}] 19885.125 135.2125 20543.1625
tp @s[scores={switch.temp.compteur=33}] 19882.0 135.8 20543.2
tp @s[scores={switch.temp.compteur=34}] 19878.875 136.3875 20543.2375
tp @s[scores={switch.temp.compteur=35}] 19875.75 136.975 20543.275
tp @s[scores={switch.temp.compteur=36}] 19872.625 137.5625 20543.3125
tp @s[scores={switch.temp.compteur=37}] 19869.5 138.15 20543.35
tp @s[scores={switch.temp.compteur=38}] 19866.375 138.7375 20543.3875
tp @s[scores={switch.temp.compteur=39}] 19863.25 139.325 20543.425
tp @s[scores={switch.temp.compteur=40}] 19860.125 139.9125 20543.4625
tp @s[scores={switch.temp.compteur=41}] 19857.0 140.5 20543.5
tp @s[scores={switch.temp.compteur=42}] 19853.875 141.0875 20543.5375
tp @s[scores={switch.temp.compteur=43}] 19850.75 141.675 20543.575
tp @s[scores={switch.temp.compteur=44}] 19847.625 142.2625 20543.6125
tp @s[scores={switch.temp.compteur=45}] 19844.5 142.85 20543.65
tp @s[scores={switch.temp.compteur=46}] 19841.375 143.4375 20543.6875
tp @s[scores={switch.temp.compteur=47}] 19838.25 144.025 20543.725
tp @s[scores={switch.temp.compteur=48}] 19835.125 144.6125 20543.7625
tp @s[scores={switch.temp.compteur=49}] 19832.0 145.2 20543.8
tp @s[scores={switch.temp.compteur=50}] 19828.875 145.7875 20543.8375
tp @s[scores={switch.temp.compteur=51}] 19825.75 146.375 20543.875
tp @s[scores={switch.temp.compteur=52}] 19822.625 146.9625 20543.9125
tp @s[scores={switch.temp.compteur=53}] 19819.5 147.55 20543.95
tp @s[scores={switch.temp.compteur=54}] 19816.375 148.1375 20543.9875
tp @s[scores={switch.temp.compteur=55}] 19813.25 148.725 20544.025
tp @s[scores={switch.temp.compteur=56}] 19810.125 149.3125 20544.0625
tp @s[scores={switch.temp.compteur=57}] 19807.0 149.9 20544.1
tp @s[scores={switch.temp.compteur=58}] 19803.875 150.4875 20544.1375
tp @s[scores={switch.temp.compteur=59}] 19800.75 151.075 20544.175
tp @s[scores={switch.temp.compteur=60}] 19797.625 151.6625 20544.2125
tp @s[scores={switch.temp.compteur=61}] 19794.5 152.25 20544.25
tp @s[scores={switch.temp.compteur=62}] 19791.375 152.8375 20544.2875
tp @s[scores={switch.temp.compteur=63}] 19788.25 153.425 20544.325
tp @s[scores={switch.temp.compteur=64}] 19785.125 154.0125 20544.3625
tp @s[scores={switch.temp.compteur=65}] 19782.0 154.6 20544.4
tp @s[scores={switch.temp.compteur=66}] 19778.875 155.1875 20544.4375
tp @s[scores={switch.temp.compteur=67}] 19775.75 155.775 20544.475
tp @s[scores={switch.temp.compteur=68}] 19772.625 156.3625 20544.5125
tp @s[scores={switch.temp.compteur=69}] 19769.5 156.95 20544.55
tp @s[scores={switch.temp.compteur=70}] 19766.375 157.5375 20544.5875
tp @s[scores={switch.temp.compteur=71}] 19763.25 158.125 20544.625
tp @s[scores={switch.temp.compteur=72}] 19760.125 158.7125 20544.6625
tp @s[scores={switch.temp.compteur=73}] 19757.0 159.3 20544.7
tp @s[scores={switch.temp.compteur=74}] 19753.875 159.8875 20544.7375
tp @s[scores={switch.temp.compteur=75}] 19750.75 160.475 20544.775
tp @s[scores={switch.temp.compteur=76}] 19747.625 161.0625 20544.8125
tp @s[scores={switch.temp.compteur=77}] 19744.5 161.65 20544.85
tp @s[scores={switch.temp.compteur=78}] 19741.375 162.2375 20544.8875
tp @s[scores={switch.temp.compteur=79}] 19738.25 162.825 20544.925
tp @s[scores={switch.temp.compteur=80}] 19735.125 163.4125 20544.9625
tp @s[scores={switch.temp.compteur=81}] 19732.0 164.0 20545.0

function switch:modes/race/map_tick/restore_speed {count:82}
""")

	# /map_tick/plains_routine
	write_function(f"{path}/map_tick/plains_routine", """
execute as @e[tag=switch.vehicle,x=20149,y=105,z=19785,distance=..10] at @s if block ~ ~-1 ~ diamond_block run scoreboard players set @s switch.temp.compteur 1
execute as @e[tag=switch.vehicle,scores={switch.temp.compteur=1..}] at @s run function switch:modes/race/map_tick/plains_routine_tp
effect give @e[x=20214,y=93,z=19775,distance=..3] levitation 1 15 true
""")

	# /map_tick/plains_routine_tp (NOTE: trailing space on old_speed line)
	write_function(f"{path}/map_tick/plains_routine_tp", """
execute if score @s switch.temp.compteur matches 1 run scoreboard players operation @s switch.temp.old_speed = @s shopping_kart.engine

data modify entity @s[scores={switch.temp.compteur=1}] NoAI set value 1b
tp @s[scores={switch.temp.compteur=1}] 20151.0 ~.1 ~
tp @s[scores={switch.temp.compteur=2}] ~1.5 ~-.05 ~
tp @s[scores={switch.temp.compteur=3}] ~1.5 ~-.05 ~
tp @s[scores={switch.temp.compteur=4}] ~1.5 ~.5 ~
tp @s[scores={switch.temp.compteur=5}] ~1.5 ~.5 ~
tp @s[scores={switch.temp.compteur=6}] ~1.5 ~.5 ~
tp @s[scores={switch.temp.compteur=7}] ~1.5 ~.5 ~
tp @s[scores={switch.temp.compteur=8}] ~.5 ~1 ~
tp @s[scores={switch.temp.compteur=9}] ~.5 ~1 ~
tp @s[scores={switch.temp.compteur=10}] ~.5 ~1.5 ~
tp @s[scores={switch.temp.compteur=11}] ~.5 ~1.5 ~
tp @s[scores={switch.temp.compteur=12}] ~.5 ~1 ~.5
tp @s[scores={switch.temp.compteur=13}] ~.5 ~1 ~.5
tp @s[scores={switch.temp.compteur=14}] ~-.5 ~1 ~.5
tp @s[scores={switch.temp.compteur=15}] ~-.5 ~1 ~.5
tp @s[scores={switch.temp.compteur=16}] ~-.5 ~1.25 ~
tp @s[scores={switch.temp.compteur=17}] ~-.5 ~1.25 ~
tp @s[scores={switch.temp.compteur=18}] ~-1 ~.5 ~
tp @s[scores={switch.temp.compteur=19}] ~-1 ~.5 ~
tp @s[scores={switch.temp.compteur=20}] ~-1 ~.5 ~.5
tp @s[scores={switch.temp.compteur=21}] ~-1 ~.5 ~.5
tp @s[scores={switch.temp.compteur=22}] ~-1 ~.5 ~
tp @s[scores={switch.temp.compteur=23}] ~-1.5 ~.5 ~
tp @s[scores={switch.temp.compteur=24}] ~-1.5 ~-.5 ~.5
tp @s[scores={switch.temp.compteur=25}] ~-1.5 ~-.5 ~.5
tp @s[scores={switch.temp.compteur=26}] ~-1.5 ~-.5 ~.5
tp @s[scores={switch.temp.compteur=27}] ~-1.5 ~-.5 ~.5
tp @s[scores={switch.temp.compteur=28}] ~-1 ~-1.25 ~
tp @s[scores={switch.temp.compteur=29}] ~-1 ~-1.25 ~
tp @s[scores={switch.temp.compteur=30}] ~-1 ~-1.5 ~.5
tp @s[scores={switch.temp.compteur=31}] ~-1 ~-1.5 ~.5
tp @s[scores={switch.temp.compteur=32}] ~.5 ~-1.5 ~
tp @s[scores={switch.temp.compteur=33}] ~.5 ~-1.5 ~
tp @s[scores={switch.temp.compteur=34}] ~.5 ~-1.5 ~
tp @s[scores={switch.temp.compteur=35}] ~.5 ~-1.5 ~
tp @s[scores={switch.temp.compteur=36}] ~1 ~-.5 ~
tp @s[scores={switch.temp.compteur=37}] ~1 ~-.5 ~
tp @s[scores={switch.temp.compteur=38}] ~1.5 ~-.5 ~
tp @s[scores={switch.temp.compteur=39}] ~1.5 ~-.5 ~
tp @s[scores={switch.temp.compteur=40}] ~1.5 ~-.5 ~
tp @s[scores={switch.temp.compteur=41}] ~1.5 ~-.5 ~
data modify entity @s[scores={switch.temp.compteur=41}] NoAI set value 0b

function switch:modes/race/map_tick/restore_speed {count:42}
""")

	# /map_tick/trackmania_stadium_2
	write_function(f"{path}/map_tick/trackmania_stadium_2", """
scoreboard players set @e[tag=switch.vehicle,x=37094,y=139,z=37015,distance=..2] switch.temp.compteur 1
execute as @e[tag=switch.vehicle,scores={switch.temp.compteur=1..}] run function switch:modes/race/map_tick/trackmania_stadium_2_tp
""")

	# /map_tick/trackmania_stadium_2_tp
	write_function(f"{path}/map_tick/trackmania_stadium_2_tp", """
# l1 = [37091, 139, 37015]
# l2 = [36896, 153, 37015]
# total = 80
# dx = (l2[0] - l1[0]) / total
# dy = (l2[1] - l1[1]) / total
# dz = (l2[2] - l1[2]) / total
# for i in range(0,total+1):
#    print('tp @s[scores={switch.temp.compteur='+str(i+1)+'}]', round(l1[0] + i*dx, 4), round(l1[1] + i*dy, 4), round(l1[2] + i*dz, 4))

execute if score @s switch.temp.compteur matches 1 run particle explosion 20662 110 20382 2 2 2 0 10 force
execute if score @s switch.temp.compteur matches 1 run playsound switch:explosion block @a[tag=!detached] 20662 110 20382
execute at @s run particle flame ~ ~ ~ .5 .5 .5 0 50 force

tp @s[scores={switch.temp.compteur=1}] 37091.0 139.0 37015.0
tp @s[scores={switch.temp.compteur=2}] 37088.5625 139.175 37015.0
tp @s[scores={switch.temp.compteur=3}] 37086.125 139.35 37015.0
tp @s[scores={switch.temp.compteur=4}] 37083.6875 139.525 37015.0
tp @s[scores={switch.temp.compteur=5}] 37081.25 139.7 37015.0
tp @s[scores={switch.temp.compteur=6}] 37078.8125 139.875 37015.0
tp @s[scores={switch.temp.compteur=7}] 37076.375 140.05 37015.0
tp @s[scores={switch.temp.compteur=8}] 37073.9375 140.225 37015.0
tp @s[scores={switch.temp.compteur=9}] 37071.5 140.4 37015.0
tp @s[scores={switch.temp.compteur=10}] 37069.0625 140.575 37015.0
tp @s[scores={switch.temp.compteur=11}] 37066.625 140.75 37015.0
tp @s[scores={switch.temp.compteur=12}] 37064.1875 140.925 37015.0
tp @s[scores={switch.temp.compteur=13}] 37061.75 141.1 37015.0
tp @s[scores={switch.temp.compteur=14}] 37059.3125 141.275 37015.0
tp @s[scores={switch.temp.compteur=15}] 37056.875 141.45 37015.0
tp @s[scores={switch.temp.compteur=16}] 37054.4375 141.625 37015.0
tp @s[scores={switch.temp.compteur=17}] 37052.0 141.8 37015.0
tp @s[scores={switch.temp.compteur=18}] 37049.5625 141.975 37015.0
tp @s[scores={switch.temp.compteur=19}] 37047.125 142.15 37015.0
tp @s[scores={switch.temp.compteur=20}] 37044.6875 142.325 37015.0
tp @s[scores={switch.temp.compteur=21}] 37042.25 142.5 37015.0
tp @s[scores={switch.temp.compteur=22}] 37039.8125 142.675 37015.0
tp @s[scores={switch.temp.compteur=23}] 37037.375 142.85 37015.0
tp @s[scores={switch.temp.compteur=24}] 37034.9375 143.025 37015.0
tp @s[scores={switch.temp.compteur=25}] 37032.5 143.2 37015.0
tp @s[scores={switch.temp.compteur=26}] 37030.0625 143.375 37015.0
tp @s[scores={switch.temp.compteur=27}] 37027.625 143.55 37015.0
tp @s[scores={switch.temp.compteur=28}] 37025.1875 143.725 37015.0
tp @s[scores={switch.temp.compteur=29}] 37022.75 143.9 37015.0
tp @s[scores={switch.temp.compteur=30}] 37020.3125 144.075 37015.0
tp @s[scores={switch.temp.compteur=31}] 37017.875 144.25 37015.0
tp @s[scores={switch.temp.compteur=32}] 37015.4375 144.425 37015.0
tp @s[scores={switch.temp.compteur=33}] 37013.0 144.6 37015.0
tp @s[scores={switch.temp.compteur=34}] 37010.5625 144.775 37015.0
tp @s[scores={switch.temp.compteur=35}] 37008.125 144.95 37015.0
tp @s[scores={switch.temp.compteur=36}] 37005.6875 145.125 37015.0
tp @s[scores={switch.temp.compteur=37}] 37003.25 145.3 37015.0
tp @s[scores={switch.temp.compteur=38}] 37000.8125 145.475 37015.0
tp @s[scores={switch.temp.compteur=39}] 36998.375 145.65 37015.0
tp @s[scores={switch.temp.compteur=40}] 36995.9375 145.825 37015.0
tp @s[scores={switch.temp.compteur=41}] 36993.5 146.0 37015.0
tp @s[scores={switch.temp.compteur=42}] 36991.0625 146.175 37015.0
tp @s[scores={switch.temp.compteur=43}] 36988.625 146.35 37015.0
tp @s[scores={switch.temp.compteur=44}] 36986.1875 146.525 37015.0
tp @s[scores={switch.temp.compteur=45}] 36983.75 146.7 37015.0
tp @s[scores={switch.temp.compteur=46}] 36981.3125 146.875 37015.0
tp @s[scores={switch.temp.compteur=47}] 36978.875 147.05 37015.0
tp @s[scores={switch.temp.compteur=48}] 36976.4375 147.225 37015.0
tp @s[scores={switch.temp.compteur=49}] 36974.0 147.4 37015.0
tp @s[scores={switch.temp.compteur=50}] 36971.5625 147.575 37015.0
tp @s[scores={switch.temp.compteur=51}] 36969.125 147.75 37015.0
tp @s[scores={switch.temp.compteur=52}] 36966.6875 147.925 37015.0
tp @s[scores={switch.temp.compteur=53}] 36964.25 148.1 37015.0
tp @s[scores={switch.temp.compteur=54}] 36961.8125 148.275 37015.0
tp @s[scores={switch.temp.compteur=55}] 36959.375 148.45 37015.0
tp @s[scores={switch.temp.compteur=56}] 36956.9375 148.625 37015.0
tp @s[scores={switch.temp.compteur=57}] 36954.5 148.8 37015.0
tp @s[scores={switch.temp.compteur=58}] 36952.0625 148.975 37015.0
tp @s[scores={switch.temp.compteur=59}] 36949.625 149.15 37015.0
tp @s[scores={switch.temp.compteur=60}] 36947.1875 149.325 37015.0
tp @s[scores={switch.temp.compteur=61}] 36944.75 149.5 37015.0
tp @s[scores={switch.temp.compteur=62}] 36942.3125 149.675 37015.0
tp @s[scores={switch.temp.compteur=63}] 36939.875 149.85 37015.0
tp @s[scores={switch.temp.compteur=64}] 36937.4375 150.025 37015.0
tp @s[scores={switch.temp.compteur=65}] 36935.0 150.2 37015.0
tp @s[scores={switch.temp.compteur=66}] 36932.5625 150.375 37015.0
tp @s[scores={switch.temp.compteur=67}] 36930.125 150.55 37015.0
tp @s[scores={switch.temp.compteur=68}] 36927.6875 150.725 37015.0
tp @s[scores={switch.temp.compteur=69}] 36925.25 150.9 37015.0
tp @s[scores={switch.temp.compteur=70}] 36922.8125 151.075 37015.0
tp @s[scores={switch.temp.compteur=71}] 36920.375 151.25 37015.0
tp @s[scores={switch.temp.compteur=72}] 36917.9375 151.425 37015.0
tp @s[scores={switch.temp.compteur=73}] 36915.5 151.6 37015.0
tp @s[scores={switch.temp.compteur=74}] 36913.0625 151.775 37015.0
tp @s[scores={switch.temp.compteur=75}] 36910.625 151.95 37015.0
tp @s[scores={switch.temp.compteur=76}] 36908.1875 152.125 37015.0
tp @s[scores={switch.temp.compteur=77}] 36905.75 152.3 37015.0
tp @s[scores={switch.temp.compteur=78}] 36903.3125 152.475 37015.0
tp @s[scores={switch.temp.compteur=79}] 36900.875 152.65 37015.0
tp @s[scores={switch.temp.compteur=80}] 36898.4375 152.825 37015.0
tp @s[scores={switch.temp.compteur=81}] 36896.0 153.0 37015.0

scoreboard players add @s switch.temp.compteur 1
scoreboard players reset @s[scores={switch.temp.compteur=82..}] switch.temp.compteur
""")

	# /out_of_map
	write_function(f"{path}/out_of_map", """
tag @s add switch.temp
execute as @a[tag=!detached,predicate=switch:has_vehicle_with_tag,limit=1] at @s run function switch:modes/race/checkpoints/forced_respawn
""")

	# /player_setup_id
	write_function(f"{path}/player_setup_id", """
# Apply ID for Respawn
scoreboard players add #next_id switch.temp.id 1
scoreboard players operation @s switch.temp.id = #next_id switch.temp.id

data modify storage switch:main temp set value {id:0}
execute store result storage switch:main temp.id int 1 run scoreboard players get @s switch.temp.id
data modify storage switch:main respawn_states append from storage switch:main temp
""")

	# /post_load
	write_function(f"{path}/post_load", """
scoreboard players operation #modulo switch.data = #total_checkpoints switch.data
scoreboard players add #modulo switch.data 1

# Checkpoint remember kart state (for respawn)
data modify storage switch:main respawn_states set value []
scoreboard players set #next_id switch.temp.id 0
execute as @e[type=marker,tag=switch.checkpoint] run function switch:modes/race/checkpoints/setup
execute as @a[tag=!detached] run function switch:modes/race/player_setup_id
""")

	# /process_end (translation ref rewritten)
	write_function(f"{path}/process_end", """
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 as @a[team=switch.temp.1,tag=!detached,scores={switch.alive=2}] at @s run function switch:engine/add_win
function switch:modes/race/translations/process_end
execute if score #process_end switch.data matches 1 run scoreboard players reset @a[tag=!detached] switch.alive
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:modes/race/complete
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

# Safe kill karts and checkpoints
function switch:utils/safe_kill_macro {selector:"@e[tag=switch.vehicle]"}
function switch:utils/safe_kill_macro {selector:"@e[tag=switch.checkpoint]"}

# Obligatoire
execute if score #process_end switch.data matches 200 run function switch:engine/restart
""")

	# /restart_game (translation ref rewritten)
	write_function(f"{path}/restart_game", """
function switch:modes/race/translations/restart_game

scoreboard players set #no_force_start_msg switch.data 1
function switch:modes/race/_force_start

execute as @a[tag=!detached] at @s run playsound entity.wither.ambient ambient @s ^ ^ ^20 100
""")

	# /right_click (translation ref rewritten)
	write_function(f"{path}/right_click", """
# Manage Respawns
function switch:modes/race/translations/right_click
execute if score #race_seconds switch.data matches 3.. unless score @s switch.respawn_cp_id matches -1 if data entity @s SelectedItem.components."minecraft:custom_data".switch.classic_respawn run function switch:modes/race/checkpoints/respawn/classic
execute if score #race_seconds switch.data matches 3.. if data entity @s SelectedItem.components."minecraft:custom_data".switch.hard_respawn run function switch:modes/race/checkpoints/respawn/hard

# Manage Votes
execute unless score @s switch.temp.vote_collisions matches 1 if data entity @s SelectedItem.components."minecraft:custom_data".switch.enable_collisions run function switch:modes/race/vote_for_collisions
execute unless score @s switch.temp.change_map matches 1 if data entity @s SelectedItem.components."minecraft:custom_data".switch.change_map run function switch:modes/race/vote_for_change_map

# Playsounds
execute if entity @s[tag=switch.playsound] at @s run playsound switch:wormhole_potion ambient @s ^ ^ ^3
execute if entity @s[tag=switch.playsound] at @s run particle portal ^ ^1 ^1 1 1 1 1 1000
tag @s remove switch.playsound

# Reset score
scoreboard players reset @s switch.right_click
""")

	# /second (translation ref rewritten)
	write_function(f"{path}/second", """
# Timer
scoreboard players add #race_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. if entity @a[tag=!detached,gamemode=adventure] run scoreboard players remove #remaining_time switch.data 1

# Start countdown
function switch:modes/race/translations/second

# Start sounds
execute if score #race_seconds switch.data matches -5..-1 as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 100
execute if score #race_seconds switch.data matches 0 at @e[limit=2] as @a[tag=!detached] at @s run playsound item.goat_horn.sound.0 ambient @s ^ ^ ^5 100 1 1
execute if score #race_seconds switch.data matches 0 at @r[tag=!detached] run scoreboard players operation #default switch.hard_respawn_cp_id = @n[tag=switch.checkpoint] switch.temp.id

# XP bar and gravity fix
execute if score #race_seconds switch.data matches 0.. run function switch:modes/race/xp_bar
execute if score #race_seconds switch.data matches 0.. as @a[tag=!detached] run attribute @s gravity base reset


# Détection de fin de partie
execute if score #detect_end switch.data matches 0 if score #remaining_time switch.data matches 0 run scoreboard players set #detect_end switch.data 1
execute if score #detect_end switch.data matches 0 unless entity @a[scores={switch.alive=1}] run scoreboard players set #detect_end switch.data 1

## Classement
function switch:modes/race/classement/main
""")

	# /start (translation ref rewritten)
	write_function(f"{path}/start", """
scoreboard players set @a[tag=!detached] switch.alive 1

effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] regeneration infinite 255 true
effect give @a[tag=!detached] resistance infinite 255 true
execute as @a[tag=!detached] run attribute @s gravity base set 0
function switch:utils/set_dynamic_time

gamerule minecraft:fall_damage false

function switch:modes/race/translations/start

# Tell map loading that it's race game mode
scoreboard players set #is_race switch.data 1

# Setup starting variables
scoreboard players set #can_vote switch.data 1
scoreboard players set #remaining_time switch.data 615
scoreboard players set #race_seconds switch.data -15
scoreboard players set #race_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #detect_end switch.data 0

function switch:modes/_common/racing_start_setup

## Téléportation des joueurs + give d'items
scoreboard players set #dont_regenerate switch.data 1
function switch:utils/choose_map_for {id:"race", maps:["bowser_castle","snow_travel","mario_circuit","plains_routine","sakura_land","hills_land","airship_fortress","dk_mountain","clock_circuit","boat_race_1","boat_race_2"]}
schedule function switch:modes/race/give_items 1s
schedule function switch:modes/race/post_load 9s

# Get the map type (shopping kart = 0, boat = 1, etc.)
scoreboard players set #map_type switch.data 0
execute if data storage switch:main {map:"boat_race_1"} run scoreboard players set #map_type switch.data 1
execute if data storage switch:main {map:"boat_race_2"} run scoreboard players set #map_type switch.data 1
""")

	# /stop
	write_function(f"{path}/stop", """
execute at @e[tag=switch.checkpoint] run forceload remove ~ ~
execute at @e[tag=switch.effect_block] run forceload remove ~ ~

# Safe kill karts and checkpoints
function switch:utils/safe_kill_macro {selector:"@e[tag=switch.vehicle]"}
function switch:utils/safe_kill_macro {selector:"@e[tag=switch.checkpoint]"}

schedule clear switch:modes/race/give_items
schedule clear switch:modes/race/post_load

function switch:modes/race/stop_cleanup
""")

	# /stop_cleanup
	write_function(f"{path}/stop_cleanup", """
scoreboard objectives remove switch.temp
scoreboard objectives remove switch.temp.old_speed
scoreboard objectives remove switch.temp.compteur
scoreboard objectives remove switch.temp.dx
scoreboard objectives remove switch.temp.dy
scoreboard objectives remove switch.temp.dz
scoreboard objectives remove switch.temp.id
scoreboard objectives remove switch.temp.vote_collisions
scoreboard objectives remove switch.temp.change_map
scoreboard objectives remove switch.temp.checkpoint
scoreboard objectives remove switch.temp.classement
scoreboard objectives remove switch.temp.pv_classement
scoreboard objectives remove switch.temp.pos_on_last_lap
scoreboard objectives remove switch.temp.sidebar
scoreboard objectives remove switch.respawn_cp_id
scoreboard objectives remove switch.hard_respawn_cp_id
scoreboard objectives remove switch.checkpoint
scoreboard objectives remove switch.lap
scoreboard objectives remove switch.effects.last
scoreboard objectives remove switch.effects.timer

team remove switch.temp.kart
team remove switch.temp.1
team remove switch.temp.2
team remove switch.temp.3
team remove switch.temp.4
team remove switch.temp.5
team remove switch.temp.6
team remove switch.temp.7
team remove switch.temp.8
team remove switch.temp.9
team remove switch.temp.10
team remove switch.temp.10+

data remove storage switch:main respawn_states
""")

	# /tick
	write_function(f"{path}/tick", """
# Timer
scoreboard players add #race_ticks switch.data 1

# Blocks tick, checkpoints tick, right click detection
execute if score #detect_end switch.data matches 0 as @e[tag=shopping_kart.kart] at @s run function switch:modes/race/tm_blocks/tick
execute if score #detect_end switch.data matches 0 as @e[type=marker,tag=switch.checkpoint] at @s run function switch:modes/race/checkpoints/tick
execute if score #detect_end switch.data matches 0 as @a[tag=!detached,scores={switch.right_click=1..}] run function switch:modes/race/right_click

# Start fixes -7
execute if score #race_seconds switch.data matches -7..-1 run team join switch.temp.kart @e[tag=switch.vehicle]
execute if score #race_seconds switch.data matches -7..-1 as @e[tag=switch.vehicle] run data modify entity @s NoAI set value 1b
execute if score #race_seconds switch.data matches -7..-1 as @e[tag=switch.vehicle] run tp @s @s
execute if score #race_seconds switch.data matches ..-8 if score #map_type switch.data matches 0 run scoreboard players set @e[tag=shopping_kart.kart] shopping_kart.engine 0
execute if score #race_seconds switch.data matches -7..-1 if score #map_type switch.data matches 0 run scoreboard players set @e[tag=shopping_kart.kart,scores={shopping_kart.engine=200..}] shopping_kart.engine 200
execute if score #race_seconds switch.data matches 0 as @e[tag=switch.vehicle] run data modify entity @s NoAI set value 0b

# Force riding the kart
execute as @a[tag=!detached,gamemode=adventure,predicate=!switch:has_vehicle] at @s run ride @s mount @n[tag=switch.vehicle,predicate=!switch:has_player_passenger,distance=..100]

# Remove items and death prevention
function switch:utils/on_death_run_function {function:"switch:modes/race/joined"}
kill @e[type=item]

# Maps tick for special events
execute if data storage switch:main {map:"plains_routine"} run function switch:modes/race/map_tick/plains_routine
execute if data storage switch:main {map:"airship_fortress"} run function switch:modes/race/map_tick/airship_fortress
execute if data storage switch:main {map:"dk_mountain"} run function switch:modes/race/map_tick/dk_mountain
execute if data storage switch:main {map:"clock_circuit"} run function switch:modes/race/map_tick/clock_circuit
execute if data storage switch:main {map:"trackmania_stadium_2"} run function switch:modes/race/map_tick/trackmania_stadium_2

## Fin de la partie
execute if score #detect_end switch.data matches 1.. run function switch:modes/race/process_end
""")

	# /tm_blocks/cruise_control (translation ref rewritten)
	write_function(f"{path}/tm_blocks/cruise_control", """
## Cruise control block
# This block is used to change the max engine speed of
# the kart to the current engine speed of the kart

# Define last effect and timer
scoreboard players set @s switch.effects.last 4
scoreboard players set @s switch.effects.timer 50

# Title and subtitle to the player
tag @s add switch.temp
function switch:modes/race/translations/blocks_cruise_control
execute on passengers at @s run playsound entity.experience_orb.pickup ambient @s ^ ^ ^10 100 1 1
tag @s remove switch.temp

# Applying effects
scoreboard players operation @s shopping_kart.cruise_control = @s shopping_kart.max_engine
scoreboard players operation @s shopping_kart.max_engine = @s shopping_kart.engine
""")

	# /tm_blocks/engine_off (translation ref rewritten)
	write_function(f"{path}/tm_blocks/engine_off", """
## Engine off block
# This block is used to turn off the engine

# Define last effect and timer
scoreboard players set @s switch.effects.last 2
scoreboard players set @s switch.effects.timer 50

# Title and subtitle to the player
tag @s add switch.temp
function switch:modes/race/translations/blocks_engine_off
execute on passengers at @s run playsound entity.experience_orb.pickup ambient @s ^ ^ ^10 100 1 1
tag @s remove switch.temp

# Applying effects
tag @s add shopping_kart.engine_off
""")

	# /tm_blocks/no_grip (translation ref rewritten)
	write_function(f"{path}/tm_blocks/no_grip", """
## No grip block
# This block is used to disable grip for the kart

# Define last effect and timer
scoreboard players set @s switch.effects.last 6
scoreboard players set @s switch.effects.timer 50

# Title and subtitle to the player
tag @s add switch.temp
function switch:modes/race/translations/blocks_no_grip
execute on passengers at @s run playsound entity.experience_orb.pickup ambient @s ^ ^ ^10 100 1 1
tag @s remove switch.temp

# Applying effects
tag @s add shopping_kart.no_grip
""")

	# /tm_blocks/no_steering (translation ref rewritten)
	write_function(f"{path}/tm_blocks/no_steering", """
## No steering block
# This block is used to disable steering for the kart

# Define last effect and timer
scoreboard players set @s switch.effects.last 3
scoreboard players set @s switch.effects.timer 50

# Title and subtitle to the player
tag @s add switch.temp
function switch:modes/race/translations/blocks_no_steering
execute on passengers at @s run playsound entity.experience_orb.pickup ambient @s ^ ^ ^10 100 1 1
tag @s remove switch.temp

# Applying effects
tag @s add shopping_kart.no_steering
""")

	# /tm_blocks/reactor_boost (translation ref rewritten; NOTE: trailing space on "used to ")
	write_function(f"{path}/tm_blocks/reactor_boost", """
## Reactor boost block
# This block is used to 

# Define last effect and timer
scoreboard players set @s switch.effects.last 5
scoreboard players set @s switch.effects.timer 50

# Title and subtitle to the player
tag @s add switch.temp
function switch:modes/race/translations/blocks_reactor_boost
execute on passengers at @s run playsound entity.experience_orb.pickup ambient @s ^ ^ ^10 100 1 1
tag @s remove switch.temp

# Applying effects
scoreboard players set @s shopping_kart.reactor_boost 120
""")

	# /tm_blocks/reset (translation ref rewritten)
	write_function(f"{path}/tm_blocks/reset", """
## Reset block
# This block is used to reset the vehicle to its default state
# (Remove cruise_control, reactor_boost, engine_off, no_steering, no_grip)

# Define last effect and timer
scoreboard players set @s switch.effects.last 1
scoreboard players set @s switch.effects.timer 50

# Title and subtitle to the player
tag @s add switch.temp
function switch:modes/race/translations/blocks_reset
execute on passengers at @s run playsound entity.experience_orb.pickup ambient @s ^ ^ ^10 100 1 1
tag @s remove switch.temp

# Reseting effects
scoreboard players operation @s[scores={shopping_kart.cruise_control=1..}] shopping_kart.max_engine = @s shopping_kart.cruise_control
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
	write_function(f"{path}/tm_blocks/tick", """
## Out of map
execute if block ~ ~-1 ~ barrier if block ~ ~-2 ~ structure_void run function switch:modes/race/out_of_map


## Trackmania blocks
execute if score @s switch.effects.timer matches 1.. run scoreboard players remove @s switch.effects.timer 1

# Reset Block
execute unless score @s switch.effects.last matches 1 if entity @e[tag=switch.tm_blocks.reset,distance=..4] at @s if block ~ ~-1 ~ lime_wool run function switch:modes/race/tm_blocks/reset
execute if score @s switch.effects.last matches 1 unless score @s switch.effects.timer matches 1.. if entity @e[tag=switch.tm_blocks.reset,distance=..4] at @s if block ~ ~-1 ~ lime_wool run function switch:modes/race/tm_blocks/reset

# Engine Off Block
execute unless score @s switch.effects.last matches 2 if entity @e[tag=switch.tm_blocks.engine_off,distance=..4] at @s if block ~ ~-1 ~ red_wool run function switch:modes/race/tm_blocks/engine_off
execute if score @s switch.effects.last matches 2 unless score @s switch.effects.timer matches 1.. if entity @e[tag=switch.tm_blocks.engine_off,distance=..4] at @s if block ~ ~-1 ~ red_wool run function switch:modes/race/tm_blocks/engine_off

# No Steering Block
execute unless score @s switch.effects.last matches 3 if entity @e[tag=switch.tm_blocks.no_steering,distance=..4] at @s if block ~ ~-1 ~ purple_wool run function switch:modes/race/tm_blocks/no_steering
execute if score @s switch.effects.last matches 3 unless score @s switch.effects.timer matches 1.. if entity @e[tag=switch.tm_blocks.no_steering,distance=..4] at @s if block ~ ~-1 ~ purple_wool run function switch:modes/race/tm_blocks/no_steering

# Cruise Control Block
execute unless score @s switch.effects.last matches 4 if entity @e[tag=switch.tm_blocks.cruise_control,distance=..4] at @s if block ~ ~-1 ~ blue_wool run function switch:modes/race/tm_blocks/cruise_control
execute if score @s switch.effects.last matches 4 unless score @s switch.effects.timer matches 1.. if entity @e[tag=switch.tm_blocks.cruise_control,distance=..4] at @s if block ~ ~-1 ~ blue_wool run function switch:modes/race/tm_blocks/cruise_control

# Reactor Boost Block
execute unless score @s switch.effects.last matches 5 if entity @e[tag=switch.tm_blocks.reactor_boost,distance=..4] at @s if block ~ ~-1 ~ orange_wool run function switch:modes/race/tm_blocks/reactor_boost
execute if score @s switch.effects.last matches 5 unless score @s switch.effects.timer matches 1.. if entity @e[tag=switch.tm_blocks.reactor_boost,distance=..4] at @s if block ~ ~-1 ~ orange_wool run function switch:modes/race/tm_blocks/reactor_boost

# No Grip Block
execute unless score @s switch.effects.last matches 6 if entity @e[tag=switch.tm_blocks.no_grip,distance=..4] at @s if block ~ ~-1 ~ light_blue_wool run function switch:modes/race/tm_blocks/no_grip
execute if score @s switch.effects.last matches 6 unless score @s switch.effects.timer matches 1.. if entity @e[tag=switch.tm_blocks.no_grip,distance=..4] at @s if block ~ ~-1 ~ light_blue_wool run function switch:modes/race/tm_blocks/no_grip
""")

	# /vote_for_change_map (translation ref rewritten)
	write_function(f"{path}/vote_for_change_map", """
scoreboard players set @s switch.temp.change_map 1

scoreboard players set #votes switch.data 0
scoreboard players set #votes_max switch.data 0
execute store result score #votes switch.data if entity @a[scores={switch.temp.change_map=1}]
execute store result score #votes_max switch.data if entity @a[tag=!detached,gamemode=!spectator]
scoreboard players operation #votes_max switch.data /= #2 switch.data
scoreboard players add #votes_max switch.data 1

function switch:modes/race/translations/vote_for_change_map

execute if score #votes switch.data >= #votes_max switch.data run function switch:modes/race/restart_game
""")

	# /vote_for_collisions (translation ref rewritten)
	write_function(f"{path}/vote_for_collisions", """
scoreboard players set @s switch.temp.vote_collisions 1

scoreboard players set #votes switch.data 0
scoreboard players set #votes_max switch.data 0
execute store result score #votes switch.data if entity @a[scores={switch.temp.vote_collisions=1}]
execute store result score #votes_max switch.data if entity @a[tag=!detached,gamemode=!spectator]
scoreboard players operation #votes_max switch.data /= #2 switch.data
scoreboard players add #votes_max switch.data 1


execute if score #votes switch.data >= #votes_max switch.data run scoreboard players set @a[tag=!detached] switch.temp.vote_collisions 1
function switch:modes/race/translations/vote_for_collisions
execute if score #votes switch.data >= #votes_max switch.data run team modify switch.temp.kart collisionRule always
execute if score #votes switch.data >= #votes_max switch.data run team modify switch.temp.1 collisionRule always
execute if score #votes switch.data >= #votes_max switch.data run team modify switch.temp.2 collisionRule always
execute if score #votes switch.data >= #votes_max switch.data run team modify switch.temp.3 collisionRule always
execute if score #votes switch.data >= #votes_max switch.data run team modify switch.temp.4 collisionRule always
execute if score #votes switch.data >= #votes_max switch.data run team modify switch.temp.5 collisionRule always
execute if score #votes switch.data >= #votes_max switch.data run team modify switch.temp.6 collisionRule always
execute if score #votes switch.data >= #votes_max switch.data run team modify switch.temp.7 collisionRule always
execute if score #votes switch.data >= #votes_max switch.data run team modify switch.temp.8 collisionRule always
execute if score #votes switch.data >= #votes_max switch.data run team modify switch.temp.9 collisionRule always
execute if score #votes switch.data >= #votes_max switch.data run team modify switch.temp.10 collisionRule always
execute if score #votes switch.data >= #votes_max switch.data run team modify switch.temp.10+ collisionRule always
""")

	# /xp_bar
	write_time_xp_bar(f"{path}/xp_bar", 300)
