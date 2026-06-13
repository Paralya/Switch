
# Imports
from stewbeet import Mem, write_function
from ..common import write_modes_calls
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "fireblast"
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
	write_function(f"{path}/death", f"""
execute if entity @s[gamemode=adventure] run function {translations}/death
function switch:utils/classic_death
""")

	# /explode_tnt
	write_function(f"{path}/explode_tnt", """
kill @s
summon creeper ~ ~ ~ {Fuse:0s,ignited:true}
playsound switch:explosion ambient @a[distance=..50]
#summon tnt ~ ~ ~ {block_state:{name:"minecraft:air"}}
""")

	# /got_power_up
	write_function(f"{path}/got_power_up", f"""
# Sugar: Speed 2 for 20s
execute if items entity @s container.* sugar[custom_data~{{switch:{{power_up:true}}}}] run effect give @s speed 20 1
execute if items entity @s container.* sugar[custom_data~{{switch:{{power_up:true}}}}] run playsound minecraft:entity.generic.drink player @s ~ ~ ~ 0.8 1.2

# Blaze Powder: faster reload for 20s (reduce cooldown by half)
execute if items entity @s container.* blaze_powder[custom_data~{{switch:{{power_up:true}}}}] run scoreboard players set @s switch.temp.reload_boost 400
execute if items entity @s container.* blaze_powder[custom_data~{{switch:{{power_up:true}}}}] run playsound minecraft:entity.blaze.ambient player @s ~ ~ ~ 0.8 1.2

# Rabbit Foot: Jump Boost 4 for 20s
execute if items entity @s container.* rabbit_foot[custom_data~{{switch:{{power_up:true}}}}] run effect give @s jump_boost 20 3
execute if items entity @s container.* rabbit_foot[custom_data~{{switch:{{power_up:true}}}}] run playsound minecraft:entity.rabbit.ambient player @s ~ ~ ~ 0.8 1.2

# Tellraw messages
function {translations}/got_power_up

# Remove the power-up item from inventory after applying effects
clear @s *[custom_data~{{switch:{{power_up:true}}}}]
""")

	# /joined
	write_function(f"{path}/joined", f"""
gamemode spectator @s
function {path}/death
""")

	# /place_power_up
	write_function(f"{path}/place_power_up", """
# Replace temporary tag with permanent tag
tag @s add switch.fireblast.power_up
tag @s remove switch.new

# Place the power-up at a random position
function switch:maps/spread_one_player

# Add glowing effect to the power-up
effect give @s glowing infinite 255 true
data modify entity @s Glowing set value true

# Set the power-up custom data
data modify entity @s Item.components."minecraft:custom_data".switch.power_up set value true
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 as @a[tag=!detached,gamemode=adventure] at @s run function switch:engine/add_win
function {translations}/process_end
execute if score #process_end switch.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function {path}/death
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

execute if score #process_end switch.data matches 200 run function switch:engine/restart
""")

	# /second
	write_function(f"{path}/second", f"""
# Classic timer
scoreboard players add #fireblast_seconds switch.data 1
scoreboard players remove #remaining_time switch.data 1

# Give fireball stick
execute if score #fireblast_seconds switch.data matches 0 run give @a[tag=!detached,gamemode=adventure] warped_fungus_on_a_stick[item_name={{"text":"Fireball Wand","color":"red"}},lore=[[{{"text":"[Cooldown: 2.5s]","color":"gray","italic":true}}]],item_model="switch:fireball_wand"]

# Every 12 seconds, summon a power up (unless there are already 5 not taken)
scoreboard players operation #power_up switch.data = #fireblast_seconds switch.data
scoreboard players operation #power_up switch.data %= #12 switch.data
execute if score #power_up switch.data matches 10 run function {path}/summon_power_up
""")

	# /start
	write_function(f"{path}/start", f"""
effect give @a[tag=!detached] weakness 5 255 true
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] resistance infinite 255 true
effect give @a[tag=!detached] regeneration 5 255 true
effect give @a[tag=!detached] night_vision infinite 255 true
effect give @a[tag=!detached] glowing infinite 255 true
time set 6000

execute in switch:game run gamerule minecraft:keep_inventory true
execute in switch:game run gamerule minecraft:block_drops false
execute in switch:game run gamerule minecraft:mob_griefing true

## Téléportation des joueurs
scoreboard players set #do_spreadplayers switch.data 1
function switch:utils/choose_map_for {{id:"fireblast", maps:["fireblast_bubulle","fireblast_cookie","fireblast_pork"]}}
function {translations}/start

scoreboard players set #remaining_time switch.data 605
scoreboard players set #fireblast_seconds switch.data -12
scoreboard players set #fireblast_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard objectives add switch.temp.cooldown dummy
scoreboard objectives add switch.temp.reload_boost dummy
""")

	# /stop
	write_function(f"{path}/stop", """
scoreboard objectives remove switch.temp.cooldown
scoreboard objectives remove switch.temp.reload_boost
""")

	# /summon_power_up
	write_function(f"{path}/summon_power_up", f"""
# Stop if the number of power-ups already summoned is >= 5
execute store result score #count switch.data if entity @e[type=item,tag=switch.fireblast.power_up]
execute if score #count switch.data matches 5.. run return fail

# Pick a random power-up type
execute store result score #random switch.data run random value 1..3
execute if score #random switch.data matches 1 run summon item 0 0 0 {{Item:{{id:"minecraft:sugar",count:1}},Tags:["switch.new","switch.fireblast.speed"]}}
execute if score #random switch.data matches 2 run summon item 0 0 0 {{Item:{{id:"minecraft:blaze_powder",count:1}},Tags:["switch.new","switch.fireblast.reload"]}}
execute if score #random switch.data matches 3 run summon item 0 0 0 {{Item:{{id:"minecraft:rabbit_foot",count:1}},Tags:["switch.new","switch.fireblast.jump_boost"]}}

# Place the power-up at a random position
execute as @e[type=item,tag=switch.new] run function {path}/place_power_up
""")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #fireblast_ticks switch.data 1

# Death system
execute as @a[tag=!detached,gamemode=!spectator] at @s if entity @s[y=0,dy=105] run function {path}/death
function switch:utils/on_death_run_function {{function:"{path}/death"}}

# Fireball
execute as @a[tag=!detached,gamemode=!spectator,scores={{switch.right_click=1..}},nbt={{SelectedItem:{{components:{{}}}}}}] if score @s switch.temp.cooldown matches 1.. at @s run function {path}/fireball/no_cooldown
execute as @a[tag=!detached,gamemode=!spectator,scores={{switch.right_click=1..}},nbt={{SelectedItem:{{components:{{}}}}}}] unless score @s switch.temp.cooldown matches 1.. at @s run function {path}/fireball/right_click
execute as @e[type=armor_stand,tag=switch.fireball,predicate=!switch:has_vehicle] at @s run function {path}/explode_tnt
scoreboard players remove @a[scores={{switch.temp.cooldown=1..}}] switch.temp.cooldown 1
execute as @a[tag=!detached,gamemode=!spectator] run function {path}/xp_bar

# Handle power-up
scoreboard players remove @a[scores={{switch.temp.reload_boost=1..}}] switch.temp.reload_boost 1
execute as @a[tag=!detached,gamemode=!spectator] if items entity @s container.* *[custom_data~{{switch:{{power_up:true}}}}] at @s run function {path}/got_power_up

## End game
scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[tag=!detached,gamemode=!spectator]
execute if score #fireblast_seconds switch.data matches 1.. if score #remaining_players switch.data matches ..1 run function {path}/process_end
execute if score #remaining_time switch.data matches ..0 run function {path}/process_end
""")

	# /xp_bar
	write_function(f"{path}/xp_bar", """
# 50 seconds = 100%
# 1 seconds = 1,111%
# 0 seconds = 0%
scoreboard players set #points switch.data 50
scoreboard players operation #remove switch.data = @s switch.temp.cooldown
scoreboard players operation #points switch.data -= #remove switch.data
scoreboard players operation #points switch.data *= #1000000 switch.data
scoreboard players set #divide switch.data 50000
function switch:modes/_common/xp_bar/points_at_s

scoreboard players operation #levels switch.data = @s switch.temp.cooldown
scoreboard players operation #levels switch.data /= #20 switch.data
execute if score @s switch.temp.cooldown matches 1.. run scoreboard players add #levels switch.data 1
function switch:modes/_common/xp_bar/levels_at_s
""")

	# /fireball/get_motion
	write_function(f"{path}/fireball/get_motion", """
data modify entity @s Rotation set from storage switch:main Rotation
execute at @s run tp @s ^ ^ ^1000
data modify storage switch:main Pos set from entity @s Pos
kill @s
""")

	# /fireball/no_cooldown
	write_function(f"{path}/fireball/no_cooldown", f"""
# Playsound
playsound entity.villager.no ambient @s

# Convert ticks to seconds
scoreboard players operation #seconds switch.temp.cooldown = @s switch.temp.cooldown
scoreboard players operation #seconds switch.temp.cooldown /= #20 switch.data
scoreboard players operation #digits switch.temp.cooldown = @s switch.temp.cooldown
scoreboard players operation #digits switch.temp.cooldown %= #20 switch.data
scoreboard players operation #digits switch.temp.cooldown /= #2 switch.data

# Tellraw
function {translations}/fireball_no_cooldown
""")

	# /fireball/right_click
	write_function(f"{path}/fireball/right_click", f"""
execute anchored eyes run summon fireball ~ ~1 ~ {{Tags:["switch.new"],ExplosionPower:0b,NoGravity:true,Passengers:[{{id:"armor_stand",Tags:["switch.fireball"],NoGravity:true,Silent:true,Invulnerable:true,Marker:true,Invisible:true}}]}}

data modify storage switch:main Rotation set from entity @s Rotation
execute positioned 0 0 0 summon marker run function {path}/fireball/get_motion
execute as @e[type=fireball,tag=switch.new] run function {path}/fireball/set_motion
playsound entity.ghast.shoot ambient @s

# Set cooldown based on reload boost
execute if score @s switch.temp.reload_boost matches 1.. run scoreboard players set @s[gamemode=!creative] switch.temp.cooldown 25
execute unless score @s switch.temp.reload_boost matches 1.. run scoreboard players set @s[gamemode=!creative] switch.temp.cooldown 50
""")

	# /fireball/set_motion
	write_function(f"{path}/fireball/set_motion", """
execute store result entity @s Motion[0] double 0.001 run data get storage switch:main Pos[0]
execute store result entity @s Motion[1] double 0.001 run data get storage switch:main Pos[1]
execute store result entity @s Motion[2] double 0.001 run data get storage switch:main Pos[2]
tag @s remove switch.new
""")
