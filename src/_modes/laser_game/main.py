
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
	write_function(f"{path}/give_items", """
## TO ADVANCEMENT

clear @s[nbt=!{Inventory:[{Slot:0b}]}] warped_fungus_on_a_stick
clear @s[nbt=!{equipment:{chest:{}}}] leather_chestplate
clear @s[nbt=!{equipment:{head:{}}}] leather_helmet

item replace entity @s[team=switch.laser_game.blue] hotbar.0 with warped_fungus_on_a_stick[item_model="switch:stardust_sniper",unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},item_name={"text":"Laser-Gun","italic":false},lore=[{"text":"[One bullet per second]","color":"gray","italic":false}]]
item replace entity @s[team=switch.laser_game.red] hotbar.0 with warped_fungus_on_a_stick[item_model="switch:awakened_stardust_sniper",unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},item_name={"text":"Laser-Gun","italic":false},lore=[{"text":"[One bullet per second]","color":"gray","italic":false}]]

item replace entity @s[team=switch.laser_game.blue,tag=!global.ignore,nbt=!{equipment:{chest:{components:{"minecraft:dyed_color":262399}}}}] armor.chest with leather_chestplate[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=262399]
item replace entity @s[team=switch.laser_game.red,tag=!global.ignore,nbt=!{equipment:{chest:{components:{"minecraft:dyed_color":16711680}}}}] armor.chest with leather_chestplate[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=16711680]
item replace entity @s[team=switch.laser_game.blue,tag=!global.ignore,nbt=!{equipment:{head:{components:{"minecraft:dyed_color":262399}}}}] armor.head with leather_helmet[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=262399]
item replace entity @s[team=switch.laser_game.red,tag=!global.ignore,nbt=!{equipment:{head:{components:{"minecraft:dyed_color":16711680}}}}] armor.head with leather_helmet[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=16711680]

item replace entity @s[team=switch.laser_game.blue,tag=global.ignore,nbt=!{equipment:{chest:{components:{"minecraft:dyed_color":65617}}}}] armor.chest with leather_chestplate[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=65617]
item replace entity @s[team=switch.laser_game.red,tag=global.ignore,nbt=!{equipment:{chest:{components:{"minecraft:dyed_color":4128768}}}}] armor.chest with leather_chestplate[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=4128768]
item replace entity @s[team=switch.laser_game.blue,tag=global.ignore,nbt=!{equipment:{head:{components:{"minecraft:dyed_color":65617}}}}] armor.head with leather_helmet[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=65617]
item replace entity @s[team=switch.laser_game.red,tag=global.ignore,nbt=!{equipment:{head:{components:{"minecraft:dyed_color":4128768}}}}] armor.head with leather_helmet[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=4128768]
""")

	# /joined
	write_function(f"{path}/joined", """
execute if score #reconnect switch.data matches 0 run function switch:modes/laser_game/teleport_players
function switch:translations/common/joined_reconnect
""")

	# /process_end (translation ref rewritten)
	write_function(f"{path}/process_end", """
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 if score #red_points switch.data > #blue_points switch.data as @a[tag=!detached,scores={switch.alive=11}] at @s run function switch:engine/add_win
function switch:modes/laser_game/translations/process_end
execute if score #process_end switch.data matches 1 if score #red_points switch.data < #blue_points switch.data as @a[tag=!detached,scores={switch.alive=10}] at @s run function switch:engine/add_win
execute if score #process_end switch.data matches 1 run kill @e[tag=switch.laser_game.base]
execute if score #process_end switch.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end switch.data matches 1 run effect clear @a[tag=!detached]
execute if score #process_end switch.data matches 1 run clear @a[tag=!detached]

execute if score #process_end switch.data matches 1 run scoreboard objectives setdisplay sidebar switch.temp.individual_points
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

execute if score #process_end switch.data matches 200 run function switch:engine/restart
""")

	# /right_click (translation ref rewritten)
	write_function(f"{path}/right_click", """
scoreboard players reset @s switch.right_click
execute if score @s[tag=!global.ignore] switch.temp.cooldown matches 0 run function switch:modes/laser_game/shoot
function switch:modes/laser_game/translations/right_click
playsound block.note_block.snare ambient @s[tag=global.ignore] ~ ~ ~ 1 0.5
""")

	# /second (translation ref rewritten)
	write_function(f"{path}/second", """
# Laser game seconds timer
scoreboard players add #laser_game_seconds switch.data 1
scoreboard players remove #remaining_time switch.data 1

# Start thing
execute if score #laser_game_seconds switch.data matches 0 run kill @e[tag=switch.laser_game.base]
execute if score #laser_game_seconds switch.data matches 0 if data storage switch:main {map:"laser_game"} in switch:game run summon block_display 517.0 113 524.0 {Tags:["switch.laser_game.base"],block_state:{Name:"minecraft:dark_oak_trapdoor",Properties:{powered:"true",facing:"north",half:"bottom",open:"true"}}}
execute if score #laser_game_seconds switch.data matches 0 if data storage switch:main {map:"laser_game"} in switch:game run summon block_display 539.0 105 530.0 {Tags:["switch.laser_game.base"],block_state:{Name:"minecraft:dark_oak_trapdoor",Properties:{powered:"true",facing:"east",half:"bottom",open:"true"}}}
execute if score #laser_game_seconds switch.data matches 0 if data storage switch:main {map:"laser_game"} in switch:game run summon block_display 542.0 114 547.0 {Tags:["switch.laser_game.base"],block_state:{Name:"minecraft:dark_oak_trapdoor",Properties:{powered:"true",facing:"south",half:"bottom",open:"true"}}}

# Base reload
scoreboard players remove #base_reload switch.data 1
function switch:modes/laser_game/translations/second
execute if score #base_reload switch.data matches 0 as @e[tag=switch.laser_game.base,sort=random,limit=1] run data merge entity @s {Glowing:true,block_state:{Name:"minecraft:iron_trapdoor"}}
execute if score #base_reload switch.data matches 1.. as @e[tag=switch.laser_game.base] run data merge entity @s {Glowing:false,block_state:{Name:"minecraft:dark_oak_trapdoor"}}


# Bonus mitraillette + change color
scoreboard players remove #mitraillette switch.data 1
scoreboard players remove #change_color switch.data 1
execute if score #mitraillette switch.data matches ..0 run tag @a[tag=!detached,tag=switch.bonus.fast] remove switch.bonus.fast
execute if score #change_color switch.data matches ..0 run team join switch.laser_game.blue @a[tag=!detached,tag=switch.bonus.color,scores={switch.alive=10}]
execute if score #change_color switch.data matches ..0 run team join switch.laser_game.red @a[tag=!detached,tag=switch.bonus.color,scores={switch.alive=11}]
execute if score #change_color switch.data matches ..0 run tag @a[tag=!detached,tag=switch.bonus.color] remove switch.bonus.color

# Update sidebar
function switch:modes/laser_game/update_sidebar
""")

	# /shoot
	write_function(f"{path}/shoot", """
tag @s add switch.temp

scoreboard players set #color switch.data 0
execute store success score #color switch.data if entity @s[team=switch.laser_game.red]

scoreboard players set @s switch.temp.cooldown -20
scoreboard players set @s[tag=switch.bonus.fast] switch.temp.cooldown -4
playsound switch:laser_gun ambient @s

execute anchored eyes positioned ^ ^ ^ run function #bs.raycast:run {with:{entities:true,max_distance:128,on_targeted_entity:"function switch:modes/laser_game/shoot_hit_entity",on_entry_point:"function switch:modes/laser_game/shoot_hit_point"}}

execute as @e[type=marker,tag=switch.shoot_ray,limit=1] at @s run function switch:modes/laser_game/shoot_particles
kill @e[type=marker,tag=switch.shoot_ray]
tag @s remove switch.temp
""")

	# /shoot_hit_entity
	write_function(f"{path}/shoot_hit_entity", """
execute if score #color switch.data matches 0 if entity @s[scores={switch.alive=11},tag=!global.ignore] run function switch:modes/laser_game/shooted_player_red
execute if score #color switch.data matches 1 if entity @s[scores={switch.alive=10},tag=!global.ignore] run function switch:modes/laser_game/shooted_player_blue
""")

	# /shoot_hit_point
	write_function(f"{path}/shoot_hit_point", """
summon marker ~ ~ ~ {Tags:["switch.shoot_ray"]}
execute if entity @e[tag=switch.laser_game.base,distance=..1.69,nbt={Glowing:true}] run function switch:modes/laser_game/shooted_base
""")

	# /shoot_particles
	write_function(f"{path}/shoot_particles", """
tp @s ~ ~ ~ facing entity @p[tag=switch.temp] eyes
execute if score #color switch.data matches 0 run particle dust{color:[0.0,0.0,1.0],scale:0.5} ~ ~ ~ 0 0 0 0 1
execute if score #color switch.data matches 1 run particle dust{color:[1.0,0.0,0.0],scale:0.5} ~ ~ ~ 0 0 0 0 1
tp @s ^ ^ ^.025

execute unless entity @a[tag=!detached,tag=switch.temp,distance=..2] at @s run function switch:modes/laser_game/shoot_particles
""")

	# /shooted_base (translation ref rewritten)
	write_function(f"{path}/shooted_base", """
scoreboard players set #color switch.data 0
execute store success score #color switch.data if entity @s[scores={switch.alive=11}]

execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

execute if score #color switch.data matches 0 run tag @a[scores={switch.alive=10}] add switch.message
execute if score #color switch.data matches 1 run tag @a[scores={switch.alive=11}] add switch.message
execute store result score #random switch.data run random value 0..5
function switch:modes/laser_game/translations/shooted_base
tag @a remove switch.message

execute if score #random switch.data matches 0 run scoreboard players set @s switch.temp.shield 5
execute if score #random switch.data matches 1 run scoreboard players set #mitraillette switch.data 15
execute if score #random switch.data matches 1 run tag @s add switch.bonus.fast
execute if score #random switch.data matches 2 if score #color switch.data matches 0 run effect give @a[scores={switch.alive=11}] darkness 5 255 true
execute if score #random switch.data matches 2 if score #color switch.data matches 1 run effect give @a[scores={switch.alive=10}] darkness 5 255 true
execute if score #random switch.data matches 3 if score #color switch.data matches 0 run effect give @a[scores={switch.alive=11}] glowing 5 255 true
execute if score #random switch.data matches 3 if score #color switch.data matches 1 run effect give @a[scores={switch.alive=10}] glowing 5 255 true
execute if score #random switch.data matches 4 run scoreboard players set #change_color switch.data 30
execute if score #random switch.data matches 4 run team join switch.laser_game.blue @s[scores={switch.alive=11}]
execute if score #random switch.data matches 4 run team join switch.laser_game.red @s[scores={switch.alive=10}]
execute if score #random switch.data matches 4 run tag @s add switch.bonus.color
execute if score #random switch.data matches 5 if score #color switch.data matches 0 run effect give @a[scores={switch.alive=10}] speed 15 1 true
execute if score #random switch.data matches 5 if score #color switch.data matches 1 run effect give @a[scores={switch.alive=11}] speed 15 1 true

execute if score #color switch.data matches 0 run scoreboard players add #blue_points switch.data 20
execute if score #color switch.data matches 1 run scoreboard players add #red_points switch.data 20
scoreboard players add @s switch.temp.individual_points 20

scoreboard players set #base_reload switch.data 15
execute as @e[tag=switch.laser_game.base] run data merge entity @s {Glowing:false,block_state:{Name:"minecraft:dark_oak_trapdoor"}}

# Advancement
execute unless score #test_mode switch.data matches 1 run advancement grant @s only switch:visible/77
""")

	# /shooted_both (translation ref rewritten)
	write_function(f"{path}/shooted_both", """
playsound entity.player.hurt player @s
execute as @a[tag=!detached,tag=switch.temp] at @s run playsound entity.arrow.hit_player player @s
scoreboard players add @a[tag=!detached,tag=switch.temp] switch.temp.individual_points 10

execute if score @s switch.temp.shield matches 1.. run scoreboard players remove @s switch.temp.shield 1

execute unless score @s switch.temp.shield matches 1.. run tag @s add global.ignore
function switch:modes/laser_game/translations/shooted_both
execute unless score @s switch.temp.shield matches 1.. run scoreboard players set @s switch.temp.dead_cooldown -100
""")

	# /shooted_player_blue
	write_function(f"{path}/shooted_player_blue", """
function switch:modes/laser_game/shooted_both
execute unless score @s switch.temp.shield matches 1.. run scoreboard players add #red_points switch.data 10
""")

	# /shooted_player_red
	write_function(f"{path}/shooted_player_red", """
function switch:modes/laser_game/shooted_both
execute unless score @s switch.temp.shield matches 1.. run scoreboard players add #blue_points switch.data 10
""")

	# /start (translation ref rewritten)
	write_function(f"{path}/start", """
team add switch.laser_game.blue {"text":"[Blue]","color":"blue"}
team add switch.laser_game.red {"text":"[Red]","color":"red"}
team modify switch.laser_game.blue color blue
team modify switch.laser_game.blue seeFriendlyInvisibles true
team modify switch.laser_game.blue nametagVisibility never
team modify switch.laser_game.red color red
team modify switch.laser_game.red seeFriendlyInvisibles true
team modify switch.laser_game.red nametagVisibility never

gamerule minecraft:fall_damage false
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] regeneration 5 255 true
effect give @a[tag=!detached] weakness infinite 255 true
time set 18000

# Choose map and start cinematic
scoreboard players set #do_spreadplayers switch.data 0
function switch:utils/choose_map_for {id:"laser_game", maps:["laser_game"]}

# Teleport players to their team spawn
scoreboard players set #team_boolean switch.data 0
execute as @a[tag=!detached,sort=random] run function switch:modes/laser_game/teleport_players

function switch:modes/laser_game/translations/start

scoreboard objectives add switch.temp.individual_points dummy {"text":"Individual Points","color":"yellow"}
scoreboard objectives add switch.temp.shield dummy
scoreboard objectives add switch.temp.cooldown dummy
scoreboard objectives add switch.temp.dead_cooldown dummy
scoreboard objectives add switch.temp.sidebar dummy {"text":"Points","color":"yellow"}
scoreboard objectives setdisplay sidebar switch.temp.sidebar

scoreboard players set #laser_game_seconds switch.data -10
scoreboard players set #laser_game_ticks switch.data 0
scoreboard players set #blue_points switch.data 0
scoreboard players set #red_points switch.data 0
scoreboard players set #remaining_time switch.data 160
scoreboard players set #process_end switch.data 0
scoreboard players set #base_reload switch.data 15

team add switch.temp.sidebar.3 {"text":"[Sidebar 3]"}
team add switch.temp.sidebar.2 {"text":"[Sidebar 2]"}
team add switch.temp.sidebar.1 {"text":"[Sidebar 1]"}
team modify switch.temp.sidebar.3 suffix [{"text":"Time remaining: "},{"text":"2","color":"yellow"},{"text":"m"},{"text":"30","color":"yellow"},{"text":"s"}]
team modify switch.temp.sidebar.2 suffix [{"text":"Blue Team: ","color":"blue"},{"text":"0","color":"yellow"}]
team modify switch.temp.sidebar.1 suffix [{"text":"Red Team: ","color":"red"},{"text":"0","color":"yellow"}]
team modify switch.temp.sidebar.2 color blue
team modify switch.temp.sidebar.1 color red
team join switch.temp.sidebar.3 §3
team join switch.temp.sidebar.2 §2
team join switch.temp.sidebar.1 §1
scoreboard players set §3 switch.temp.sidebar 3
scoreboard players set §2 switch.temp.sidebar 2
scoreboard players set §1 switch.temp.sidebar 1
scoreboard players display numberformat §3 switch.temp.sidebar blank
scoreboard players display numberformat §2 switch.temp.sidebar blank
scoreboard players display numberformat §1 switch.temp.sidebar blank
""")

	# /stop
	write_function(f"{path}/stop", """
tag @a remove switch.laser_game.blue
tag @a remove switch.laser_game.red
tag @a remove global.ignore
scoreboard objectives remove switch.temp.individual_points
scoreboard objectives remove switch.temp.shield
scoreboard objectives remove switch.temp.cooldown
scoreboard objectives remove switch.temp.dead_cooldown
scoreboard objectives remove switch.temp.sidebar
team remove switch.laser_game.blue
team remove switch.laser_game.red
team remove switch.temp.sidebar.1
team remove switch.temp.sidebar.2
team remove switch.temp.sidebar.3
""")

	# /teleport_players
	write_function(f"{path}/teleport_players", """
tag @s remove global.ignore

gamemode adventure @s
effect give @s saturation infinite 255 true
effect give @s regeneration 5 255 true
effect give @s weakness infinite 255 true
xp set @s 130 levels
xp set @s 1000 points

execute if score #team_boolean switch.data matches 0 if data storage switch:main {map:"laser_game"} in switch:game run tp @s 550 110 502 45 0
execute if score #team_boolean switch.data matches 0 run team join switch.laser_game.blue @s
execute if score #team_boolean switch.data matches 0 run scoreboard players set @s switch.alive 10
execute if score #team_boolean switch.data matches 1 if data storage switch:main {map:"laser_game"} in switch:game run tp @s 502 110 550 -135 0
execute if score #team_boolean switch.data matches 1 run team join switch.laser_game.red @s
execute if score #team_boolean switch.data matches 1 run scoreboard players set @s switch.alive 11

scoreboard players add #team_boolean switch.data 1
scoreboard players operation #team_boolean switch.data %= #2 switch.data
""")

	# /tick
	write_function(f"{path}/tick", """
scoreboard players add #laser_game_ticks switch.data 1

execute as @a[tag=!detached] run function switch:modes/laser_game/xp_bar
execute as @a[tag=!detached,scores={switch.right_click=1..},sort=random] at @s run function switch:modes/laser_game/right_click
execute as @a[tag=!detached] run function switch:modes/laser_game/give_items
kill @e[type=item]

function switch:utils/on_death_run_function {function:"switch:modes/laser_game/teleport_players"}

execute if score #remaining_time switch.data matches ..0 run function switch:modes/laser_game/process_end
""")

	# /update_sidebar
	write_function(f"{path}/update_sidebar", """
data modify storage switch:main input set value {blue:0,red:0,minutes:0,seconds:0,optional_zero:""}
execute store result storage switch:main input.blue int 1 run scoreboard players get #blue_points switch.data
execute store result storage switch:main input.red int 1 run scoreboard players get #red_points switch.data

scoreboard players operation #minutes switch.data = #remaining_time switch.data
scoreboard players operation #minutes switch.data /= #60 switch.data
scoreboard players operation #seconds switch.data = #remaining_time switch.data
scoreboard players operation #seconds switch.data %= #60 switch.data

execute store result storage switch:main input.minutes int 1 run scoreboard players get #minutes switch.data
execute store result storage switch:main input.seconds int 1 run scoreboard players get #seconds switch.data
execute if score #seconds switch.data matches 0..9 run data modify storage switch:main input.optional_zero set value "0"

function switch:modes/laser_game/update_sidebar_macro with storage switch:main input
""")

	# /update_sidebar_macro
	write_function(f"{path}/update_sidebar_macro", """
$team modify switch.temp.sidebar.3 suffix [{"text":"Time remaining: "},{"text":"$(minutes)","color":"yellow"},{"text":"m"},{"text":"$(optional_zero)$(seconds)","color":"yellow"},{"text":"s"}]
$team modify switch.temp.sidebar.2 suffix [{"text":"Blue Team: ","color":"blue"},{"text":"$(blue)","color":"yellow"}]
$team modify switch.temp.sidebar.1 suffix [{"text":"Red Team: ","color":"red"},{"text":"$(red)","color":"yellow"}]
""")

	# /xp_bar
	write_function(f"{path}/xp_bar", """
scoreboard players add @s switch.temp.cooldown 0
scoreboard players add @s switch.temp.dead_cooldown 0
scoreboard players add @s[scores={switch.temp.cooldown=..-1}] switch.temp.cooldown 1
scoreboard players add @s[scores={switch.temp.dead_cooldown=..-1}] switch.temp.dead_cooldown 1
tag @s[tag=global.ignore,scores={switch.temp.dead_cooldown=0}] remove global.ignore

scoreboard players set #is_alive switch.data 0
execute if score @s switch.temp.dead_cooldown matches 0 run scoreboard players set #is_alive switch.data 1

## When the player is alive: switch.temp.cooldown (Shoot cooldown)
# -20 ticks = 100%
# 0 ticks = 0%
execute if score #is_alive switch.data matches 1 run scoreboard players operation #temp switch.data = @s switch.temp.cooldown
execute if score #is_alive switch.data matches 1 run scoreboard players operation #temp switch.data *= #-1 switch.data
execute if score #is_alive switch.data matches 1 run scoreboard players operation #temp switch.data *= #50 switch.data
execute if score #is_alive switch.data matches 1 if entity @s[tag=switch.bonus.fast] run scoreboard players operation #temp switch.data *= #5 switch.data
execute if score #is_alive switch.data matches 1 run scoreboard players set #points switch.data 1000
execute if score #is_alive switch.data matches 1 run scoreboard players operation #points switch.data -= #temp switch.data

## When the player is dead: switch.temp.dead_cooldown (Disabled cooldown)
# -100 ticks = 100%
# 0 ticks = 0%
execute if score #is_alive switch.data matches 0 run scoreboard players operation #points switch.data = @s switch.temp.dead_cooldown
execute if score #is_alive switch.data matches 0 run scoreboard players operation #points switch.data *= #-10 switch.data

# Apply
function switch:modes/_common/xp_bar/points_at_s
""")
