
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ..common import write_modes_calls
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "laser_game"
	path: str = f"{ns}:modes/{mode}"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()


	# /give_items
	write_function(f"{path}/give_items", f"""
## TO ADVANCEMENT

clear @s[nbt=!{{Inventory:[{{Slot:0b}}]}}] warped_fungus_on_a_stick
clear @s[nbt=!{{equipment:{{chest:{{}}}}}}] leather_chestplate
clear @s[nbt=!{{equipment:{{head:{{}}}}}}] leather_helmet

item replace entity @s[team={ns}.laser_game.blue] hotbar.0 with warped_fungus_on_a_stick[item_model="{ns}:stardust_sniper",unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}},item_name={{"text":"Laser-Gun","italic":false}},lore=[{{"text":"[One bullet per second]","color":"gray","italic":false}}]]
item replace entity @s[team={ns}.laser_game.red] hotbar.0 with warped_fungus_on_a_stick[item_model="{ns}:awakened_stardust_sniper",unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}},item_name={{"text":"Laser-Gun","italic":false}},lore=[{{"text":"[One bullet per second]","color":"gray","italic":false}}]]

item replace entity @s[team={ns}.laser_game.blue,tag=!global.ignore,nbt=!{{equipment:{{chest:{{components:{{"minecraft:dyed_color":262399}}}}}}}}] armor.chest with leather_chestplate[unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}},dyed_color=262399]
item replace entity @s[team={ns}.laser_game.red,tag=!global.ignore,nbt=!{{equipment:{{chest:{{components:{{"minecraft:dyed_color":16711680}}}}}}}}] armor.chest with leather_chestplate[unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}},dyed_color=16711680]
item replace entity @s[team={ns}.laser_game.blue,tag=!global.ignore,nbt=!{{equipment:{{head:{{components:{{"minecraft:dyed_color":262399}}}}}}}}] armor.head with leather_helmet[unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}},dyed_color=262399]
item replace entity @s[team={ns}.laser_game.red,tag=!global.ignore,nbt=!{{equipment:{{head:{{components:{{"minecraft:dyed_color":16711680}}}}}}}}] armor.head with leather_helmet[unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}},dyed_color=16711680]

item replace entity @s[team={ns}.laser_game.blue,tag=global.ignore,nbt=!{{equipment:{{chest:{{components:{{"minecraft:dyed_color":65617}}}}}}}}] armor.chest with leather_chestplate[unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}},dyed_color=65617]
item replace entity @s[team={ns}.laser_game.red,tag=global.ignore,nbt=!{{equipment:{{chest:{{components:{{"minecraft:dyed_color":4128768}}}}}}}}] armor.chest with leather_chestplate[unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}},dyed_color=4128768]
item replace entity @s[team={ns}.laser_game.blue,tag=global.ignore,nbt=!{{equipment:{{head:{{components:{{"minecraft:dyed_color":65617}}}}}}}}] armor.head with leather_helmet[unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}},dyed_color=65617]
item replace entity @s[team={ns}.laser_game.red,tag=global.ignore,nbt=!{{equipment:{{head:{{components:{{"minecraft:dyed_color":4128768}}}}}}}}] armor.head with leather_helmet[unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}},dyed_color=4128768]
""")

	# /joined
	write_function(f"{path}/joined", f"""
execute if score #reconnect {ns}.data matches 0 run function {ns}:modes/laser_game/teleport_players
function {ns}:translations/common/joined_reconnect
""")

	# /process_end (translation ref rewritten)
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end {ns}.data 1

execute if score #process_end {ns}.data matches 1 if score #red_points {ns}.data > #blue_points {ns}.data as @a[tag=!detached,scores={{{ns}.alive=11}}] at @s run function {ns}:engine/add_win
function {ns}:modes/laser_game/translations/process_end
execute if score #process_end {ns}.data matches 1 if score #red_points {ns}.data < #blue_points {ns}.data as @a[tag=!detached,scores={{{ns}.alive=10}}] at @s run function {ns}:engine/add_win
execute if score #process_end {ns}.data matches 1 run kill @e[tag={ns}.laser_game.base]
execute if score #process_end {ns}.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end {ns}.data matches 1 run effect clear @a[tag=!detached]
execute if score #process_end {ns}.data matches 1 run clear @a[tag=!detached]

execute if score #process_end {ns}.data matches 1 run scoreboard objectives setdisplay sidebar {ns}.temp.individual_points
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {ns}:player/trigger/rating/print_current_game

execute if score #process_end {ns}.data matches 200 run function {ns}:engine/restart
""")

	# /right_click (translation ref rewritten)
	write_function(f"{path}/right_click", f"""
scoreboard players reset @s {ns}.right_click
execute if score @s[tag=!global.ignore] {ns}.temp.cooldown matches 0 run function {ns}:modes/laser_game/shoot
function {ns}:modes/laser_game/translations/right_click
playsound block.note_block.snare ambient @s[tag=global.ignore] ~ ~ ~ 1 0.5
""")

	# /second (translation ref rewritten)
	write_function(f"{path}/second", f"""
# Laser game seconds timer
scoreboard players add #laser_game_seconds {ns}.data 1
scoreboard players remove #remaining_time {ns}.data 1

# Start thing
execute if score #laser_game_seconds {ns}.data matches 0 run kill @e[tag={ns}.laser_game.base]
execute if score #laser_game_seconds {ns}.data matches 0 if data storage {ns}:main {{map:"laser_game"}} in {ns}:game run summon block_display 517.0 113 524.0 {{Tags:["{ns}.laser_game.base"],block_state:{{Name:"minecraft:dark_oak_trapdoor",Properties:{{powered:"true",facing:"north",half:"bottom",open:"true"}}}}}}
execute if score #laser_game_seconds {ns}.data matches 0 if data storage {ns}:main {{map:"laser_game"}} in {ns}:game run summon block_display 539.0 105 530.0 {{Tags:["{ns}.laser_game.base"],block_state:{{Name:"minecraft:dark_oak_trapdoor",Properties:{{powered:"true",facing:"east",half:"bottom",open:"true"}}}}}}
execute if score #laser_game_seconds {ns}.data matches 0 if data storage {ns}:main {{map:"laser_game"}} in {ns}:game run summon block_display 542.0 114 547.0 {{Tags:["{ns}.laser_game.base"],block_state:{{Name:"minecraft:dark_oak_trapdoor",Properties:{{powered:"true",facing:"south",half:"bottom",open:"true"}}}}}}

# Base reload
scoreboard players remove #base_reload {ns}.data 1
function {ns}:modes/laser_game/translations/second
execute if score #base_reload {ns}.data matches 0 as @e[tag={ns}.laser_game.base,sort=random,limit=1] run data merge entity @s {{Glowing:true,block_state:{{Name:"minecraft:iron_trapdoor"}}}}
execute if score #base_reload {ns}.data matches 1.. as @e[tag={ns}.laser_game.base] run data merge entity @s {{Glowing:false,block_state:{{Name:"minecraft:dark_oak_trapdoor"}}}}


# Bonus mitraillette + change color
scoreboard players remove #mitraillette {ns}.data 1
scoreboard players remove #change_color {ns}.data 1
execute if score #mitraillette {ns}.data matches ..0 run tag @a[tag=!detached,tag={ns}.bonus.fast] remove {ns}.bonus.fast
execute if score #change_color {ns}.data matches ..0 run team join {ns}.laser_game.blue @a[tag=!detached,tag={ns}.bonus.color,scores={{{ns}.alive=10}}]
execute if score #change_color {ns}.data matches ..0 run team join {ns}.laser_game.red @a[tag=!detached,tag={ns}.bonus.color,scores={{{ns}.alive=11}}]
execute if score #change_color {ns}.data matches ..0 run tag @a[tag=!detached,tag={ns}.bonus.color] remove {ns}.bonus.color

# Update sidebar
function {ns}:modes/_common/update_sidebar
""")

	# /shoot
	write_function(f"{path}/shoot", f"""
tag @s add {ns}.temp

scoreboard players set #color {ns}.data 0
execute store success score #color {ns}.data if entity @s[team={ns}.laser_game.red]

scoreboard players set @s {ns}.temp.cooldown -20
scoreboard players set @s[tag={ns}.bonus.fast] {ns}.temp.cooldown -4
playsound {ns}:laser_gun ambient @s

execute anchored eyes positioned ^ ^ ^ run function #bs.raycast:run {{with:{{entities:true,max_distance:128,on_targeted_entity:"function {ns}:modes/laser_game/shoot_hit_entity",on_entry_point:"function {ns}:modes/laser_game/shoot_hit_point"}}}}

execute as @e[type=marker,tag={ns}.shoot_ray,limit=1] at @s run function {ns}:modes/laser_game/shoot_particles
kill @e[type=marker,tag={ns}.shoot_ray]
tag @s remove {ns}.temp
""")

	# /shoot_hit_entity
	write_function(f"{path}/shoot_hit_entity", f"""
execute if score #color {ns}.data matches 0 if entity @s[scores={{{ns}.alive=11}},tag=!global.ignore] run function {ns}:modes/laser_game/shooted_player_red
execute if score #color {ns}.data matches 1 if entity @s[scores={{{ns}.alive=10}},tag=!global.ignore] run function {ns}:modes/laser_game/shooted_player_blue
""")

	# /shoot_hit_point
	write_function(f"{path}/shoot_hit_point", f"""
summon marker ~ ~ ~ {{Tags:["{ns}.shoot_ray"]}}
# Run as the shooter (@s is the raycast marker here, not the player)
execute if entity @e[tag={ns}.laser_game.base,distance=..1.69,nbt={{Glowing:true}}] as @a[tag=!detached,tag={ns}.temp,limit=1] run function {ns}:modes/laser_game/shooted_base
""")

	# /shoot_particles
	write_function(f"{path}/shoot_particles", f"""
tp @s ~ ~ ~ facing entity @p[tag={ns}.temp] eyes
execute if score #color {ns}.data matches 0 run particle dust{{color:[0.0,0.0,1.0],scale:0.5}} ~ ~ ~ 0 0 0 0 1
execute if score #color {ns}.data matches 1 run particle dust{{color:[1.0,0.0,0.0],scale:0.5}} ~ ~ ~ 0 0 0 0 1
tp @s ^ ^ ^.025

execute unless entity @a[tag=!detached,tag={ns}.temp,distance=..2] at @s run function {ns}:modes/laser_game/shoot_particles
""")

	# /shooted_base (translation ref rewritten)
	write_function(f"{path}/shooted_base", f"""
scoreboard players set #color {ns}.data 0
execute store success score #color {ns}.data if entity @s[scores={{{ns}.alive=11}}]

execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

execute if score #color {ns}.data matches 0 run tag @a[scores={{{ns}.alive=10}}] add {ns}.message
execute if score #color {ns}.data matches 1 run tag @a[scores={{{ns}.alive=11}}] add {ns}.message
execute store result score #random {ns}.data run random value 0..5
function {ns}:modes/laser_game/translations/shooted_base
tag @a remove {ns}.message

execute if score #random {ns}.data matches 0 run scoreboard players set @s {ns}.temp.shield 5
execute if score #random {ns}.data matches 1 run scoreboard players set #mitraillette {ns}.data 15
execute if score #random {ns}.data matches 1 run tag @s add {ns}.bonus.fast
execute if score #random {ns}.data matches 2 if score #color {ns}.data matches 0 run effect give @a[scores={{{ns}.alive=11}}] darkness 5 255 true
execute if score #random {ns}.data matches 2 if score #color {ns}.data matches 1 run effect give @a[scores={{{ns}.alive=10}}] darkness 5 255 true
execute if score #random {ns}.data matches 3 if score #color {ns}.data matches 0 run effect give @a[scores={{{ns}.alive=11}}] glowing 5 255 true
execute if score #random {ns}.data matches 3 if score #color {ns}.data matches 1 run effect give @a[scores={{{ns}.alive=10}}] glowing 5 255 true
execute if score #random {ns}.data matches 4 run scoreboard players set #change_color {ns}.data 30
execute if score #random {ns}.data matches 4 run team join {ns}.laser_game.blue @s[scores={{{ns}.alive=11}}]
execute if score #random {ns}.data matches 4 run team join {ns}.laser_game.red @s[scores={{{ns}.alive=10}}]
execute if score #random {ns}.data matches 4 run tag @s add {ns}.bonus.color
execute if score #random {ns}.data matches 5 if score #color {ns}.data matches 0 run effect give @a[scores={{{ns}.alive=10}}] speed 15 1 true
execute if score #random {ns}.data matches 5 if score #color {ns}.data matches 1 run effect give @a[scores={{{ns}.alive=11}}] speed 15 1 true

execute if score #color {ns}.data matches 0 run scoreboard players add #blue_points {ns}.data 20
execute if score #color {ns}.data matches 1 run scoreboard players add #red_points {ns}.data 20
scoreboard players add @s {ns}.temp.individual_points 20

scoreboard players set #base_reload {ns}.data 15
execute as @e[tag={ns}.laser_game.base] run data merge entity @s {{Glowing:false,block_state:{{Name:"minecraft:dark_oak_trapdoor"}}}}

# Advancement
execute unless score #test_mode {ns}.data matches 1 run advancement grant @s only {ns}:visible/77
""")

	# /shooted_both (translation ref rewritten)
	write_function(f"{path}/shooted_both", f"""
playsound entity.player.hurt player @s
execute as @a[tag=!detached,tag={ns}.temp] at @s run playsound entity.arrow.hit_player player @s
scoreboard players add @a[tag=!detached,tag={ns}.temp] {ns}.temp.individual_points 10

execute if score @s {ns}.temp.shield matches 1.. run scoreboard players remove @s {ns}.temp.shield 1

execute unless score @s {ns}.temp.shield matches 1.. run tag @s add global.ignore
function {ns}:modes/laser_game/translations/shooted_both
execute unless score @s {ns}.temp.shield matches 1.. run scoreboard players set @s {ns}.temp.dead_cooldown -100
""")

	# /shooted_player_blue
	write_function(f"{path}/shooted_player_blue", f"""
function {ns}:modes/laser_game/shooted_both
execute unless score @s {ns}.temp.shield matches 1.. run scoreboard players add #red_points {ns}.data 10
""")

	# /shooted_player_red
	write_function(f"{path}/shooted_player_red", f"""
function {ns}:modes/laser_game/shooted_both
execute unless score @s {ns}.temp.shield matches 1.. run scoreboard players add #blue_points {ns}.data 10
""")

	# /start (translation ref rewritten)
	write_function(f"{path}/start", f"""
team add {ns}.laser_game.blue {{"text":"[Blue]","color":"blue"}}
team add {ns}.laser_game.red {{"text":"[Red]","color":"red"}}
team modify {ns}.laser_game.blue color blue
team modify {ns}.laser_game.blue seeFriendlyInvisibles true
team modify {ns}.laser_game.blue nametagVisibility never
team modify {ns}.laser_game.red color red
team modify {ns}.laser_game.red seeFriendlyInvisibles true
team modify {ns}.laser_game.red nametagVisibility never

gamerule minecraft:fall_damage false
gamerule minecraft:locator_bar false
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] regeneration 5 255 true
effect give @a[tag=!detached] weakness infinite 255 true
time set 18000

# Choose map and start cinematic
scoreboard players set #do_spreadplayers {ns}.data 0
function {ns}:utils/choose_map_for {{id:"laser_game", maps:["laser_game"]}}

# Teleport players to their team spawn
scoreboard players set #team_boolean {ns}.data 0
execute as @a[tag=!detached,sort=random] run function {ns}:modes/laser_game/teleport_players

function {ns}:modes/laser_game/translations/start

scoreboard objectives add {ns}.temp.individual_points dummy {{"text":"Individual Points","color":"yellow"}}
scoreboard objectives add {ns}.temp.shield dummy
scoreboard objectives add {ns}.temp.cooldown dummy
scoreboard objectives add {ns}.temp.dead_cooldown dummy
scoreboard objectives add {ns}.temp.sidebar dummy {{"text":"Points","color":"yellow"}}
scoreboard objectives setdisplay sidebar {ns}.temp.sidebar

scoreboard players set #laser_game_seconds {ns}.data -10
scoreboard players set #laser_game_ticks {ns}.data 0
scoreboard players set #blue_points {ns}.data 0
scoreboard players set #red_points {ns}.data 0
scoreboard players set #remaining_time {ns}.data 160
scoreboard players set #process_end {ns}.data 0
scoreboard players set #base_reload {ns}.data 15

team add {ns}.temp.sidebar.3 {{"text":"[Sidebar 3]"}}
team add {ns}.temp.sidebar.2 {{"text":"[Sidebar 2]"}}
team add {ns}.temp.sidebar.1 {{"text":"[Sidebar 1]"}}
team modify {ns}.temp.sidebar.3 suffix [{{"text":"Time remaining: "}},{{"text":"2","color":"yellow"}},{{"text":"m"}},{{"text":"30","color":"yellow"}},{{"text":"s"}}]
team modify {ns}.temp.sidebar.2 suffix [{{"text":"Blue Team: ","color":"blue"}},{{"text":"0","color":"yellow"}}]
team modify {ns}.temp.sidebar.1 suffix [{{"text":"Red Team: ","color":"red"}},{{"text":"0","color":"yellow"}}]
team modify {ns}.temp.sidebar.2 color blue
team modify {ns}.temp.sidebar.1 color red
team join {ns}.temp.sidebar.3 §3
team join {ns}.temp.sidebar.2 §2
team join {ns}.temp.sidebar.1 §1
scoreboard players set §3 {ns}.temp.sidebar 3
scoreboard players set §2 {ns}.temp.sidebar 2
scoreboard players set §1 {ns}.temp.sidebar 1
scoreboard players display numberformat §3 {ns}.temp.sidebar blank
scoreboard players display numberformat §2 {ns}.temp.sidebar blank
scoreboard players display numberformat §1 {ns}.temp.sidebar blank
""")

	# /stop
	write_function(f"{path}/stop", f"""
tag @a remove {ns}.laser_game.blue
tag @a remove {ns}.laser_game.red
tag @a remove global.ignore
scoreboard objectives remove {ns}.temp.individual_points
scoreboard objectives remove {ns}.temp.shield
scoreboard objectives remove {ns}.temp.cooldown
scoreboard objectives remove {ns}.temp.dead_cooldown
scoreboard objectives remove {ns}.temp.sidebar
team remove {ns}.laser_game.blue
team remove {ns}.laser_game.red
team remove {ns}.temp.sidebar.1
team remove {ns}.temp.sidebar.2
team remove {ns}.temp.sidebar.3
""")

	# /teleport_players
	write_function(f"{path}/teleport_players", f"""
tag @s remove global.ignore

gamemode adventure @s
effect give @s saturation infinite 255 true
effect give @s regeneration 5 255 true
effect give @s weakness infinite 255 true
xp set @s 130 levels
xp set @s 1000 points

execute if score #team_boolean {ns}.data matches 0 if data storage {ns}:main {{map:"laser_game"}} in {ns}:game run tp @s 550 110 502 45 0
execute if score #team_boolean {ns}.data matches 0 run team join {ns}.laser_game.blue @s
execute if score #team_boolean {ns}.data matches 0 run scoreboard players set @s {ns}.alive 10
execute if score #team_boolean {ns}.data matches 1 if data storage {ns}:main {{map:"laser_game"}} in {ns}:game run tp @s 502 110 550 -135 0
execute if score #team_boolean {ns}.data matches 1 run team join {ns}.laser_game.red @s
execute if score #team_boolean {ns}.data matches 1 run scoreboard players set @s {ns}.alive 11

scoreboard players add #team_boolean {ns}.data 1
scoreboard players operation #team_boolean {ns}.data %= #2 {ns}.data
""")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #laser_game_ticks {ns}.data 1

execute as @a[tag=!detached] run function {ns}:modes/laser_game/xp_bar
execute as @a[tag=!detached,scores={{{ns}.right_click=1..}},sort=random] at @s run function {ns}:modes/laser_game/right_click
execute as @a[tag=!detached] run function {ns}:modes/laser_game/give_items
kill @e[type=item]

function {ns}:utils/on_death_run_function {{function:"{ns}:modes/laser_game/teleport_players"}}

execute if score #remaining_time {ns}.data matches ..0 run function {ns}:modes/laser_game/process_end
""")



	# /xp_bar
	write_function(f"{path}/xp_bar", f"""
scoreboard players add @s {ns}.temp.cooldown 0
scoreboard players add @s {ns}.temp.dead_cooldown 0
scoreboard players add @s[scores={{{ns}.temp.cooldown=..-1}}] {ns}.temp.cooldown 1
scoreboard players add @s[scores={{{ns}.temp.dead_cooldown=..-1}}] {ns}.temp.dead_cooldown 1
tag @s[tag=global.ignore,scores={{{ns}.temp.dead_cooldown=0}}] remove global.ignore

scoreboard players set #is_alive {ns}.data 0
execute if score @s {ns}.temp.dead_cooldown matches 0 run scoreboard players set #is_alive {ns}.data 1

## When the player is alive: {ns}.temp.cooldown (Shoot cooldown)
# -20 ticks = 100%
# 0 ticks = 0%
execute if score #is_alive {ns}.data matches 1 run scoreboard players operation #temp {ns}.data = @s {ns}.temp.cooldown
execute if score #is_alive {ns}.data matches 1 run scoreboard players operation #temp {ns}.data *= #-1 {ns}.data
execute if score #is_alive {ns}.data matches 1 run scoreboard players operation #temp {ns}.data *= #50 {ns}.data
execute if score #is_alive {ns}.data matches 1 if entity @s[tag={ns}.bonus.fast] run scoreboard players operation #temp {ns}.data *= #5 {ns}.data
execute if score #is_alive {ns}.data matches 1 run scoreboard players set #points {ns}.data 1000
execute if score #is_alive {ns}.data matches 1 run scoreboard players operation #points {ns}.data -= #temp {ns}.data

## When the player is dead: {ns}.temp.dead_cooldown (Disabled cooldown)
# -100 ticks = 100%
# 0 ticks = 0%
execute if score #is_alive {ns}.data matches 0 run scoreboard players operation #points {ns}.data = @s {ns}.temp.dead_cooldown
execute if score #is_alive {ns}.data matches 0 run scoreboard players operation #points {ns}.data *= #-10 {ns}.data

# Apply
function {ns}:modes/_common/xp_bar/points_at_s
""")
