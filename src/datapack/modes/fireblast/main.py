
# ruff: noqa: E501
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


	# /death
	write_function(f"{path}/death", f"""
execute if entity @s[gamemode=adventure] run function {translations}/death
function {ns}:utils/classic_death
""")

	# /explode_tnt
	write_function(f"{path}/explode_tnt", f"""
kill @s
summon creeper ~ ~ ~ {{Fuse:0s,ignited:true}}
playsound {ns}:explosion ambient @a[distance=..50]
#summon tnt ~ ~ ~ {{block_state:{{name:"minecraft:air"}}}}
""")

	# /got_power_up
	write_function(f"{path}/got_power_up", f"""
# Sugar: Speed 2 for 20s
execute if items entity @s container.* sugar[custom_data~{{{ns}:{{power_up:true}}}}] run effect give @s speed 20 1
execute if items entity @s container.* sugar[custom_data~{{{ns}:{{power_up:true}}}}] run playsound minecraft:entity.generic.drink player @s ~ ~ ~ 0.8 1.2

# Blaze Powder: faster reload for 20s (reduce cooldown by half)
execute if items entity @s container.* blaze_powder[custom_data~{{{ns}:{{power_up:true}}}}] run scoreboard players set @s {ns}.temp.reload_boost 400
execute if items entity @s container.* blaze_powder[custom_data~{{{ns}:{{power_up:true}}}}] run playsound minecraft:entity.blaze.ambient player @s ~ ~ ~ 0.8 1.2

# Rabbit Foot: Jump Boost 4 for 20s
execute if items entity @s container.* rabbit_foot[custom_data~{{{ns}:{{power_up:true}}}}] run effect give @s jump_boost 20 3
execute if items entity @s container.* rabbit_foot[custom_data~{{{ns}:{{power_up:true}}}}] run playsound minecraft:entity.rabbit.ambient player @s ~ ~ ~ 0.8 1.2

# Tellraw messages
function {translations}/got_power_up

# Remove the power-up item from inventory after applying effects
clear @s *[custom_data~{{{ns}:{{power_up:true}}}}]
""")

	# /joined
	write_function(f"{path}/joined", f"""
gamemode spectator @s
function {path}/death
""")

	# /place_power_up
	write_function(f"{path}/place_power_up", f"""
# Replace temporary tag with permanent tag
tag @s add {ns}.fireblast.power_up
tag @s remove {ns}.new

# Place the power-up at a random position
function {ns}:maps/spread_one_player

# Add glowing effect to the power-up
effect give @s glowing infinite 255 true
data modify entity @s Glowing set value true

# Set the power-up custom data
data modify entity @s Item.components."minecraft:custom_data".{ns}.power_up set value true
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end {ns}.data 1

execute if score #process_end {ns}.data matches 1 if score #remaining_players {ns}.data matches 1 as @a[tag=!detached,gamemode=adventure] at @s run function {ns}:engine/add_win
function {translations}/process_end
execute if score #process_end {ns}.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {path}/death
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {ns}:player/trigger/rating/print_current_game

execute if score #process_end {ns}.data matches 200 run function {ns}:engine/restart
""")

	# /second
	write_function(f"{path}/second", f"""
# Classic timer
scoreboard players add #fireblast_seconds {ns}.data 1
scoreboard players remove #remaining_time {ns}.data 1

# Give fireball stick
execute if score #fireblast_seconds {ns}.data matches 0 run give @a[tag=!detached,gamemode=adventure] warped_fungus_on_a_stick[item_name={{"text":"Fireball Wand","color":"red"}},lore=[[{{"text":"[Cooldown: 2.5s]","color":"gray","italic":true}}]],item_model="{ns}:fireball_wand"]

# Every 12 seconds, summon a power up (unless there are already 5 not taken)
scoreboard players operation #power_up {ns}.data = #fireblast_seconds {ns}.data
scoreboard players operation #power_up {ns}.data %= #12 {ns}.data
execute if score #power_up {ns}.data matches 10 run function {path}/summon_power_up
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

execute in {ns}:game run gamerule minecraft:keep_inventory true
execute in {ns}:game run gamerule minecraft:block_drops false
execute in {ns}:game run gamerule minecraft:mob_griefing true

## Téléportation des joueurs
scoreboard players set #do_spreadplayers {ns}.data 1
function {ns}:utils/choose_map_for {{id:"fireblast", maps:["fireblast_bubulle","fireblast_cookie","fireblast_pork"]}}
function {translations}/start

scoreboard players set #remaining_time {ns}.data 605
scoreboard players set #fireblast_seconds {ns}.data -3
scoreboard players set #fireblast_ticks {ns}.data 0
scoreboard players set #process_end {ns}.data 0
scoreboard objectives add {ns}.temp.cooldown dummy
scoreboard objectives add {ns}.temp.reload_boost dummy
""")

	# /stop
	write_function(f"{path}/stop", f"""
scoreboard objectives remove {ns}.temp.cooldown
scoreboard objectives remove {ns}.temp.reload_boost
""")

	# /summon_power_up
	write_function(f"{path}/summon_power_up", f"""
# Stop if the number of power-ups already summoned is >= 5
execute store result score #count {ns}.data if entity @e[type=item,tag={ns}.fireblast.power_up]
execute if score #count {ns}.data matches 5.. run return fail

# Pick a random power-up type
execute store result score #random {ns}.data run random value 1..3
execute if score #random {ns}.data matches 1 run summon item 0 0 0 {{Item:{{id:"minecraft:sugar",count:1}},Tags:["{ns}.new","{ns}.fireblast.speed"]}}
execute if score #random {ns}.data matches 2 run summon item 0 0 0 {{Item:{{id:"minecraft:blaze_powder",count:1}},Tags:["{ns}.new","{ns}.fireblast.reload"]}}
execute if score #random {ns}.data matches 3 run summon item 0 0 0 {{Item:{{id:"minecraft:rabbit_foot",count:1}},Tags:["{ns}.new","{ns}.fireblast.jump_boost"]}}

# Place the power-up at a random position
execute as @e[type=item,tag={ns}.new] run function {path}/place_power_up
""")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #fireblast_ticks {ns}.data 1

# Death system
execute as @a[tag=!detached,gamemode=!spectator] at @s if entity @s[y=0,dy=105] run function {path}/death
function {ns}:utils/on_death_run_function {{function:"{path}/death"}}

# Fireball
execute as @a[tag=!detached,gamemode=!spectator,scores={{{ns}.right_click=1..}},nbt={{SelectedItem:{{components:{{}}}}}}] if score @s {ns}.temp.cooldown matches 1.. at @s run function {path}/fireball/no_cooldown
execute as @a[tag=!detached,gamemode=!spectator,scores={{{ns}.right_click=1..}},nbt={{SelectedItem:{{components:{{}}}}}}] unless score @s {ns}.temp.cooldown matches 1.. at @s run function {path}/fireball/right_click
execute as @e[type=armor_stand,tag={ns}.fireball,predicate=!{ns}:has_vehicle] at @s run function {path}/explode_tnt
scoreboard players remove @a[scores={{{ns}.temp.cooldown=1..}}] {ns}.temp.cooldown 1
execute as @a[tag=!detached,gamemode=!spectator] run function {path}/xp_bar

# Handle power-up
scoreboard players remove @a[scores={{{ns}.temp.reload_boost=1..}}] {ns}.temp.reload_boost 1
execute as @a[tag=!detached,gamemode=!spectator] if items entity @s container.* *[custom_data~{{{ns}:{{power_up:true}}}}] at @s run function {path}/got_power_up

## End game
scoreboard players set #remaining_players {ns}.data 0
execute store result score #remaining_players {ns}.data if entity @a[tag=!detached,gamemode=!spectator]
execute if score #fireblast_seconds {ns}.data matches 1.. if score #remaining_players {ns}.data matches ..1 run function {path}/process_end
execute if score #remaining_time {ns}.data matches ..0 run function {path}/process_end
""")

	# /xp_bar
	write_function(f"{path}/xp_bar", f"""
# 50 seconds = 100%
# 1 seconds = 1,111%
# 0 seconds = 0%
scoreboard players set #points {ns}.data 50
scoreboard players operation #remove {ns}.data = @s {ns}.temp.cooldown
scoreboard players operation #points {ns}.data -= #remove {ns}.data
scoreboard players operation #points {ns}.data *= #1000000 {ns}.data
scoreboard players set #divide {ns}.data 50000
function {ns}:modes/_common/xp_bar/points_at_s

scoreboard players operation #levels {ns}.data = @s {ns}.temp.cooldown
scoreboard players operation #levels {ns}.data /= #20 {ns}.data
execute if score @s {ns}.temp.cooldown matches 1.. run scoreboard players add #levels {ns}.data 1
function {ns}:modes/_common/xp_bar/levels_at_s
""")


	# /fireball/no_cooldown
	write_function(f"{path}/fireball/no_cooldown", f"""
# Playsound
playsound entity.villager.no ambient @s

# Convert ticks to seconds
scoreboard players operation #seconds {ns}.temp.cooldown = @s {ns}.temp.cooldown
scoreboard players operation #seconds {ns}.temp.cooldown /= #20 {ns}.data
scoreboard players operation #digits {ns}.temp.cooldown = @s {ns}.temp.cooldown
scoreboard players operation #digits {ns}.temp.cooldown %= #20 {ns}.data
scoreboard players operation #digits {ns}.temp.cooldown /= #2 {ns}.data

# Tellraw
function {translations}/fireball_no_cooldown
""")

	# /fireball/right_click
	write_function(f"{path}/fireball/right_click", f"""
execute anchored eyes run summon fireball ~ ~1 ~ {{Tags:["{ns}.new"],ExplosionPower:0b,NoGravity:true,Passengers:[{{id:"armor_stand",Tags:["{ns}.fireball"],NoGravity:true,Silent:true,Invulnerable:true,Marker:true,Invisible:true}}]}}

function {ns}:modes/_common/fireball/aim_and_launch
playsound entity.ghast.shoot ambient @s

# Set cooldown based on reload boost
execute if score @s {ns}.temp.reload_boost matches 1.. run scoreboard players set @s[gamemode=!creative] {ns}.temp.cooldown 25
execute unless score @s {ns}.temp.reload_boost matches 1.. run scoreboard players set @s[gamemode=!creative] {ns}.temp.cooldown 50
""")

