
# ruff: noqa: E501
# Imports
import stouputils as stp
from stewbeet import Mem, write_function


@stp.measure_time(message="Generated cinematic files")
def main() -> None:
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:cinematic"

	# /alt_launch
	write_function(f"{path}/alt_launch", f"""
#> alt_launch
#
# @executed			as the player & at current position
#
# @input macro		target : string - target selector for position and rotation source
# @input macro		time : int - time in ticks
# @input macro		with : compound - additional arguments (optional)
#						- yaw : float - yaw rotation (will override target rotation)
#						- pitch : float - pitch rotation (will override target rotation)
#						- go_side : float - how far to go side (0 = don't go side)
#						- add_y : float - additional y position (default: 20.0)
#						- particle : int - particle effect (0 = none, 1 = glow)
#						- interpolation : int - teleport duration (default: 2)
#						- delay : int - delay in ticks before starting (default: 0)
#
# @description		Launch a cinematic that moves the player to the position and rotation of a target entity
#
# @example			/execute as @s positioned 0 69 0 rotated -55 10 run function {ns}:cinematic/alt_launch {{target:"@s",time:60,with:{{go_side:1,add_y:20.0,particle:1,interpolation:2,delay:20}}}}
#

## Get the arguments
# Get the time as int type
$scoreboard players set #cinematic_time {ns}.data $(time)

# Get the target position and rotation from specified entity (and increment height by 1.6)
$data modify storage {ns}:temp target_position set from entity $(target) Pos
execute store result score #temp {ns}.data run data get storage {ns}:temp target_position[1] 1000
scoreboard players add #temp {ns}.data 1600
execute store result storage {ns}:temp target_position[1] double 0.001 run scoreboard players get #temp {ns}.data
$data modify storage {ns}:temp target_rotation set from entity $(target) Rotation

## Remember the additional arguments
$data modify storage {ns}:temp with set value $(with)

# Call common launch function
function {ns}:cinematic/common_launch
""")

	# /common_launch
	write_function(f"{path}/common_launch", f"""
# Common launch function for cinematic system
# This function contains shared logic between launch and alt_launch
# Expects the following to be set before calling:
# - storage {ns}:temp target_position (as double array)
# - storage {ns}:temp target_rotation (as float array)
# - score #cinematic_time {ns}.data (as int)
# - storage {ns}:temp with (as compound)

# Cancel any jump timer of the player (any teleportation cancels it)
execute if entity @s[tag={ns}.jump_timing] run function {ns}:player/jump_timer/cancel

# Tag the player and remember it's id
scoreboard players operation #player_id {ns}.id = @s {ns}.id
tag @s add {ns}.temp

# Get the current position (y + 1.6) and rotation
tp @s ~ ~1.6 ~ ~ ~
data modify storage {ns}:temp current_position set from entity @s Pos
data modify storage {ns}:temp current_rotation set from entity @s Rotation

## Remember the additional arguments
execute unless data storage {ns}:temp with.interpolation run data modify storage {ns}:temp with.interpolation set value 2
execute store result score #cinematic_interpolation {ns}.data run data get storage {ns}:temp with.interpolation
execute if data storage {ns}:temp with.pitch if data storage {ns}:temp with.yaw run function {ns}:cinematic/get_rotation_arguments with storage {ns}:temp with
execute unless data storage {ns}:temp with.go_side run data modify storage {ns}:temp with.go_side set value 0
execute unless data storage {ns}:temp with.add_y run data modify storage {ns}:temp with.add_y set value 20.0
execute unless data storage {ns}:temp with.delay run data modify storage {ns}:temp with.delay set value 0

## Summon the entity that will control the player
execute summon item_display run function {ns}:cinematic/setup_entity

# Remove the tag
tag @s remove {ns}.temp
""")

	# /entity_tick_at_player
	write_function(f"{path}/entity_tick_at_player", f"""
# Make sure the player is spectating the entity
tp @a[distance=0,tag={ns}.temp,limit=1] @s
execute at @s run spectate @s @a[distance=0,tag={ns}.temp,limit=1]

# Handle delay before starting the cinematic
data modify storage {ns}:temp custom_data set from entity @s item.components."minecraft:custom_data"
execute store result score #cinematic_delay {ns}.data run data get storage {ns}:temp custom_data.delay
execute if score #cinematic_delay {ns}.data matches 1.. run scoreboard players remove #cinematic_delay {ns}.data 1
execute if score #cinematic_delay {ns}.data matches 1.. store result storage {ns}:temp custom_data.delay int 1 run scoreboard players get #cinematic_delay {ns}.data
execute if score #cinematic_delay {ns}.data matches 1.. run return run data modify entity @s item.components."minecraft:custom_data" set from storage {ns}:temp custom_data

# Only pass 1/Interpolation of the time
scoreboard players add @s {ns}.data 1
execute store result score #cinematic_interpolation {ns}.data run data get storage {ns}:temp custom_data.interpolation
execute if score @s {ns}.data < #cinematic_interpolation {ns}.data run return run data modify entity @s item.components."minecraft:custom_data" set from storage {ns}:temp custom_data
execute if score @s {ns}.data >= #cinematic_interpolation {ns}.data run scoreboard players set @s {ns}.data 0

# Teleport to the next point and remove it from the list
data modify entity @s Pos set from storage {ns}:temp custom_data.points[0]
data remove storage {ns}:temp custom_data.points[0]

# Rotate to the next rotation and remove it from the list
data modify entity @s Rotation set from storage {ns}:temp custom_data.rotations[0]
data remove storage {ns}:temp custom_data.rotations[0]

# Happy villager particles if enabled
execute store result score #particle_effect {ns}.data run data get storage {ns}:temp custom_data.particle
execute if score #particle_effect {ns}.data matches 1 at @s run particle glow ~ ~ ~ 0.2 0.2 0.2 0 2
execute if score #particle_effect {ns}.data matches 2 at @s run particle happy_villager ~ ~ ~ 0.2 0.2 0.2 0 2

# If the list is empty, finish the cinematic
execute unless data storage {ns}:temp custom_data.points[0] run return run function {ns}:cinematic/finish

# Else, copy the custom data to the entity for the next tick
data modify entity @s item.components."minecraft:custom_data" set from storage {ns}:temp custom_data
""")

	# /entity_tick_at_self
	write_function(f"{path}/entity_tick_at_self", f"""
# Find the player and execute at him (for easy distance=0)
scoreboard players operation #player_id {ns}.id = @s {ns}.id

# Tag the linked player, storing success so the same selector also tells us if they are online
execute store success score #temp {ns}.data run tag @a[predicate={ns}:has_same_id,limit=1] add {ns}.temp
execute if score #temp {ns}.data matches 0 run return run function {ns}:cinematic/kill
execute at @a[tag={ns}.temp,limit=1] run function {ns}:cinematic/entity_tick_at_player
tag @a[tag={ns}.temp,limit=1] remove {ns}.temp
""")

	# /finish
	write_function(f"{path}/finish", f"""
# Restore the player's gamemode
execute at @s run tp @a[tag={ns}.temp,limit=1] ~ ~-1.6 ~ ~ ~
execute at @s if entity @s[tag={ns}.was_survival] positioned ~ ~-1.6 ~ run gamemode survival @a[distance=0,tag={ns}.temp,limit=1]
execute at @s if entity @s[tag={ns}.was_adventure] positioned ~ ~-1.6 ~ run gamemode adventure @a[distance=0,tag={ns}.temp,limit=1]
execute at @s if entity @s[tag={ns}.was_creative] positioned ~ ~-1.6 ~ run gamemode creative @a[distance=0,tag={ns}.temp,limit=1]

# Kill the entity
function {ns}:cinematic/kill
""")

	# /get_position_between/main
	write_function(f"{path}/get_position_between/main", f"""
## The idea is to be perpendicular to the half distance between the current position and the target position:
#      Half position
#            |
#            |
# Current ------- Target

## Target position - Current position
# Get the target position as integers (3 decimals)
execute store result score #target_x {ns}.data run data get storage {ns}:temp target_position[0] 1000
execute store result score #target_y {ns}.data run data get storage {ns}:temp target_position[1] 1000
execute store result score #target_z {ns}.data run data get storage {ns}:temp target_position[2] 1000

# Get the current position as integers (3 decimals)
execute store result score #current_x {ns}.data run data get storage {ns}:temp current_position[0] 1000
execute store result score #current_y {ns}.data run data get storage {ns}:temp current_position[1] 1000
execute store result score #current_z {ns}.data run data get storage {ns}:temp current_position[2] 1000

# Get the distance between the target position and the current position
scoreboard players operation #target_x {ns}.data -= #current_x {ns}.data
scoreboard players operation #target_z {ns}.data -= #current_z {ns}.data

## Get the half distance
# Divide by 2
scoreboard players operation #target_x {ns}.data /= #2 {ns}.data
scoreboard players operation #target_z {ns}.data /= #2 {ns}.data

# Add the current position to the half position (otherwise we only have the offset)
scoreboard players operation #target_x {ns}.data += #current_x {ns}.data
scoreboard players operation #target_z {ns}.data += #current_z {ns}.data

# Set the half position in the storage
data modify storage {ns}:temp half_position set value [0.0d, 0.0d, 0.0d]
execute store result storage {ns}:temp half_position[0] double 0.001 run scoreboard players get #target_x {ns}.data
execute store result storage {ns}:temp half_position[2] double 0.001 run scoreboard players get #target_z {ns}.data

# Return to the state where target_x and target_z are the offset
scoreboard players operation #target_x {ns}.data -= #current_x {ns}.data
scoreboard players operation #target_z {ns}.data -= #current_z {ns}.data

## Summon temporary entity that will:
# - go to the half position
# - look at the target position
# - rotate 180 degrees (+ or -)
# - move forward

# Get the max of x or z (for the forward amount)
data modify storage {ns}:temp forward set value {{}}
execute if score #target_x {ns}.data > #target_z {ns}.data run data modify storage {ns}:temp forward.amount set from storage {ns}:temp half_position[0]
execute if score #target_x {ns}.data <= #target_z {ns}.data run data modify storage {ns}:temp forward.amount set from storage {ns}:temp half_position[2]

# Multiply forward.amount by go_side
execute store result score #forward_amount {ns}.data run data get storage {ns}:temp forward.amount 1000
execute store result score #go_side {ns}.data run data get storage {ns}:temp with.go_side 1000
scoreboard players operation #forward_amount {ns}.data *= #go_side {ns}.data
execute store result storage {ns}:temp forward.amount double 0.000001 run scoreboard players get #forward_amount {ns}.data

# Summon the entity and do the side offset
execute if data storage {ns}:temp with.go_side summon item_display run function {ns}:cinematic/get_position_between/side_offset with storage {ns}:temp forward

# Modify the Y position with (max(current.y, target.y) + 20) (3 decimals)
execute if score #target_y {ns}.data > #current_y {ns}.data run scoreboard players operation #half_position_y {ns}.data = #target_y {ns}.data
execute if score #target_y {ns}.data <= #current_y {ns}.data run scoreboard players operation #half_position_y {ns}.data = #current_y {ns}.data
execute store result score #add_y {ns}.data run data get storage {ns}:temp with.add_y 1000
scoreboard players operation #half_position_y {ns}.data += #add_y {ns}.data
execute store result storage {ns}:temp half_position[1] double 0.001 run scoreboard players get #half_position_y {ns}.data

## Finally, append the half position to the spline
data modify storage {ns}:temp initial_points.points append from storage {ns}:temp half_position
""")

	# /get_position_between/side_offset
	write_function(f"{path}/get_position_between/side_offset", f"""
# Go to the half position
data modify entity @s Pos set from storage {ns}:temp half_position

# Look at the target position (because looking at half position is looking at the target position)
execute positioned ~ ~ ~ facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~

# Rotate based on yaw direction
execute if score #yaw_diff {ns}.data matches 1.. at @s run tp @s ~ ~ ~ ~-90 ~
execute if score #yaw_diff {ns}.data matches ..0 at @s run tp @s ~ ~ ~ ~90 ~

# Move forward
$execute at @s run tp @s ^ ^ ^$(amount)

# Remember the position
data modify storage {ns}:temp half_position set from entity @s Pos

# Kill the entity
kill @s[type=!player]
""")

	# /get_rotation_arguments
	write_function(f"{path}/get_rotation_arguments", f"""
# Get the target rotation as float type
$data modify storage {ns}:temp temp set value [$(yaw), $(pitch)]
data modify storage {ns}:temp target_rotation set value [0.0f, 0.0f]
execute store result storage {ns}:temp target_rotation[0] float 0.001 run data get storage {ns}:temp temp[0] 1000
execute store result storage {ns}:temp target_rotation[1] float 0.001 run data get storage {ns}:temp temp[1] 1000

## Handle wrap-around for yaw rotation when difference is greater than 180 degrees
# Store current and target yaw
execute store result score #current_yaw {ns}.data run data get storage {ns}:temp current_rotation[0] 1000
execute store result score #target_yaw {ns}.data run data get storage {ns}:temp target_rotation[0] 1000

# Calculate the difference
scoreboard players operation #yaw_diff {ns}.data = #target_yaw {ns}.data
scoreboard players operation #yaw_diff {ns}.data -= #current_yaw {ns}.data

# If difference > 180 degrees (180000), subtract 360 degrees (360000)
execute if score #yaw_diff {ns}.data matches 180000.. run scoreboard players remove #yaw_diff {ns}.data 360000

# If difference < -180 degrees (-180000), add 360 degrees (360000)
execute if score #yaw_diff {ns}.data matches ..-180000 run scoreboard players add #yaw_diff {ns}.data 360000

# Apply the corrected yaw back to target_rotation
scoreboard players operation #target_yaw {ns}.data = #current_yaw {ns}.data
scoreboard players operation #target_yaw {ns}.data += #yaw_diff {ns}.data
execute store result storage {ns}:temp target_rotation[0] float 0.001 run scoreboard players get #target_yaw {ns}.data
""")

	# /intro_spread/cinematic_start
	write_function(f"{path}/intro_spread/cinematic_start", f"""
# Spread player on the map
$function $(target_function)

# Get all arguments for the cinematic
data modify storage {ns}:temp player_cinematic set value {{}}
data modify storage {ns}:temp player_cinematic.with set from storage {ns}:temp intro.with
data modify storage {ns}:temp player_cinematic.x set from entity @s Pos[0]
data modify storage {ns}:temp player_cinematic.y set from entity @s Pos[1]
data modify storage {ns}:temp player_cinematic.z set from entity @s Pos[2]
data modify storage {ns}:temp player_cinematic.time set from storage {ns}:temp intro.cinematic_time
execute unless data storage {ns}:temp player_cinematic.with.yaw run data modify storage {ns}:temp player_cinematic.with.yaw set from entity @s Rotation[0]
execute unless data storage {ns}:temp player_cinematic.with.pitch run data modify storage {ns}:temp player_cinematic.with.pitch set from entity @s Rotation[1]
execute unless data storage {ns}:temp player_cinematic.with.interpolation run data modify storage {ns}:temp player_cinematic.with.interpolation set value 3
data modify storage {ns}:temp player_cinematic.with.delay set from storage {ns}:temp intro.display_time

# Launch the cinematic (at the view coordinates, don't use at @s because it will use the current position)
function {ns}:cinematic/launch with storage {ns}:temp player_cinematic
""")

	# /intro_spread/cleanup
	write_function(f"{path}/intro_spread/cleanup", f"""
# Remove all intro spread text displays
kill @e[tag={ns}.intro_spread.display]
""")

	# /intro_spread/display_start
	write_function(f"{path}/intro_spread/display_start", f"""
# Spawn text display for map name with fade-in effect
$summon text_display ^ ^0.0 ^1.5 {{brightness:{{block:15,sky:15}},billboard:"center",text:{{"text":"$(map_name)","color":"yellow"}},background:0,shadow:true,Tags:["{ns}.intro_spread.map_name","{ns}.intro_spread.display"],transformation:{{translation:[0.0f,2.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[50.0f,50.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}}}

# Spawn text display for credits with fade-in effect
$summon text_display ^ ^-0.5 ^2.5 {{brightness:{{block:15,sky:15}},billboard:"center",text:{{"text":"$(credits)","color":"white"}},background:0,shadow:true,Tags:["{ns}.intro_spread.credits","{ns}.intro_spread.display"],transformation:{{translation:[0.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.0f,0.69f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}}}

# Apply fade-in effect by updating opacity from 0 to 255
schedule function {ns}:cinematic/intro_spread/fade_in 30t replace

# Schedule fade-out based on display_time
$schedule function {ns}:cinematic/intro_spread/fade_out $(display_time)t
""")

	# /intro_spread/fade_in
	write_function(f"{path}/intro_spread/fade_in", f"""
# Set text displays to visible with fade-in effect
execute as @e[tag={ns}.intro_spread.map_name] run data merge entity @s {{interpolation_duration:12,start_interpolation:0,transformation:{{scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.0f,0.0f]}}}}
execute as @e[tag={ns}.intro_spread.credits] run data merge entity @s {{interpolation_duration:6,start_interpolation:20,transformation:{{scale:[1.0f,1.0f,1.0f]}}}}

# Schedule playsound
schedule function {ns}:cinematic/intro_spread/playsound 10t
""")

	# /intro_spread/fade_out
	write_function(f"{path}/intro_spread/fade_out", f"""
# Apply fade-out effect
execute as @e[tag={ns}.intro_spread.display] run data merge entity @s {{text_opacity:-127b,interpolation_duration:12,start_interpolation:0,transformation:{{scale:[0.69f,0.0f,1.0f]}}}}

# Schedule removal of text displays after fade-out completes
schedule function {ns}:cinematic/intro_spread/cleanup 15t
""")

	# /intro_spread/playsound
	write_function(f"{path}/intro_spread/playsound", f"""
# Fade in playsound
execute at @e[tag={ns}.intro_spread.map_name] run playsound item.mace.smash_ground_heavy ambient @a
""")

	# /intro_spread/start
	write_function(f"{path}/intro_spread/start", f"""
#> intro_spread
#
# @executed positioned & rotated at the view coordinates (starting point for the cinematic)
#
# @input macro		selector : string - target selector for players
# @input macro		display_time : int - display duration in ticks
# @input macro		cinematic_time : int - cinematic duration in ticks
# @input macro		map_name : string - display name of the map
# @input macro		credits : string - map credits
# @input macro		with : compound - additional arguments to pass to the cinematic (optional)
#						... args to cinematic function
#						target_function : string - function that teleports @s to the target position (e.g. "{ns}:maps/survival/warden_forest/spread_one_player")
#
# @description		Spawn players at view coordinates, display map info with fade effects, then launch cinematic
#
# @example			/execute positioned 36.29 102.97 81.36 rotated 145.55 21.76 run function {ns}:cinematic/intro_spread/start {{selector:"@a[tag=!detached]",display_time:130,cinematic_time:50,map_name:"Switch Lobby",credits:"Stoupy",with:{{}}}}
#

# Get arguments
data modify storage {ns}:temp intro set value {{target_function: "{ns}:none"}}
$data modify storage {ns}:temp intro.selector set value "$(selector)"
$data modify storage {ns}:temp intro.display_time set value $(display_time)
$data modify storage {ns}:temp intro.cinematic_time set value $(cinematic_time)
$data modify storage {ns}:temp intro.map_name set value "$(map_name)"
$data modify storage {ns}:temp intro.credits set value "$(credits)"
$data modify storage {ns}:temp intro.with set value $(with)
execute if data storage {ns}:temp intro.with.target_function run data modify storage {ns}:temp intro.target_function set from storage {ns}:temp intro.with.target_function

# Spread all players on the map, then put them in a cinematic starting from the view coordinates
$execute positioned ~ ~1.6 ~ as $(selector) run function {ns}:cinematic/intro_spread/cinematic_start with storage {ns}:temp intro

# Start the display sequence with (display time - 20 ticks) for the fade-out effect
execute store result score #display_time {ns}.data run data get storage {ns}:temp intro.display_time
scoreboard players remove #display_time {ns}.data 20
execute store result storage {ns}:temp intro.display_time int 1 run scoreboard players get #display_time {ns}.data
execute positioned ~ ~1.6 ~ run function {ns}:cinematic/intro_spread/display_start with storage {ns}:temp intro
""")

	# /kill
	write_function(f"{path}/kill", f"""
# Decrease the number of cinematic entities
scoreboard players remove #cinematic_entities {ns}.data 1

# Kill the entity
kill @s
""")

	# /launch
	write_function(f"{path}/launch", f"""
#> launch
#
# @executed			as the player & at current position
#
# @input macro		x : float - target x position
# @input macro		y : float - target y position
# @input macro		z : float - target z position
# @input macro		time : int - time in ticks
# @input macro		with : compound - additional arguments (optional)
#						- yaw : float - yaw rotation
#						- pitch : float - pitch rotation
#						- go_side : float - how far to go side (0 = don't go side)
#						- add_y : float - additional y position (default: 20.0)
#						- particle : int - particle effect (0 = none, 1 = glow)
#						- interpolation : int - teleport duration (default: 2)
#						- delay : int - delay in ticks before starting (default: 0)
#
# @description		Launch a cinematic that moves the player to specified coordinates with optional settings
#
# @example			/execute as @s positioned 0 69 0 rotated -55 10 run function {ns}:cinematic/launch {{x:19.5,y:82.5,z:23.5,time:60,with:{{yaw:30,pitch:-15,go_side:1,add_y:20.0,particle:1,interpolation:2,delay:20}}}}
#

## Get the arguments
# Get the target position as double type (and increment height by 1.6)
$data modify storage {ns}:temp temp set value [$(x),$(y),$(z)]
data modify storage {ns}:temp target_position set value [0.0d, 0.0d, 0.0d]
execute store result storage {ns}:temp target_position[0] double 0.001 run data get storage {ns}:temp temp[0] 1000
execute store result score #temp {ns}.data run data get storage {ns}:temp temp[1] 1000
scoreboard players add #temp {ns}.data 1600
execute store result storage {ns}:temp target_position[1] double 0.001 run scoreboard players get #temp {ns}.data
execute store result storage {ns}:temp target_position[2] double 0.001 run data get storage {ns}:temp temp[2] 1000

# Get the time as int type
$scoreboard players set #cinematic_time {ns}.data $(time)

# Set target rotation from current rotation (will be overridden if yaw/pitch provided in with)
data modify storage {ns}:temp target_rotation set from entity @s Rotation

## Remember the additional arguments
$data modify storage {ns}:temp with set value $(with)

# Call common launch function
function {ns}:cinematic/common_launch
""")

	# /setup_entity
	write_function(f"{path}/setup_entity", f"""
## As we are updating every X ticks, teleport duration is X and step is multiplied by X
# Increment the number of cinematic entities and add convention tags
scoreboard players add #cinematic_entities {ns}.data 1
tag @s add {ns}.cinematic
tag @s add smithed.entity
tag @s add smithed.strict
tag @s add global.ignore.kill
tag @s add global.ignore

# Set the interpolation to the given value + 1, and set start loop timer (@s {ns}.data)
scoreboard players operation @s {ns}.data = #cinematic_interpolation {ns}.data
scoreboard players add @s {ns}.data 1
execute if score @s {ns}.data matches 2.. run execute store result entity @s teleport_duration int 1 run scoreboard players get @s {ns}.data
scoreboard players remove @s {ns}.data 2


## Stream Bezier
# Prepare storages for Stream Bezier
data modify storage {ns}:temp initial_points set value {{points:[],step:5}}
data modify storage {ns}:temp rotation_points set value []

# Get the current position (for the first point)
data modify entity @s Rotation set from storage {ns}:temp current_rotation
data modify storage {ns}:temp initial_points.points append from storage {ns}:temp current_position
data modify storage {ns}:temp rotation_points append from storage {ns}:temp current_rotation
data modify storage {ns}:temp rotation_points append from storage {ns}:temp current_rotation

# Get a position between (with a little offset)
function {ns}:cinematic/get_position_between/main

# Get the target position
data modify storage {ns}:temp initial_points.points append from storage {ns}:temp target_position
data modify storage {ns}:temp initial_points.points append from storage {ns}:temp target_position
data modify storage {ns}:temp rotation_points append from storage {ns}:temp target_rotation
data modify storage {ns}:temp rotation_points append from storage {ns}:temp target_rotation

# Compute the step depending on the time (X / total time, We keep 6 decimals)
scoreboard players set #cinematic_step {ns}.data 1000000
execute if score #cinematic_interpolation {ns}.data matches 1.. run scoreboard players operation #cinematic_step {ns}.data *= #cinematic_interpolation {ns}.data
scoreboard players operation #cinematic_step {ns}.data /= #cinematic_time {ns}.data
execute store result storage {ns}:temp initial_points.step double 0.000001 run scoreboard players get #cinematic_step {ns}.data
data modify storage {ns}:temp item set value {{id:"minecraft:stone",count:1,components:{{"minecraft:item_model":"minecraft:air"}}}}
data modify storage {ns}:temp item.components."minecraft:custom_data".interpolation set from storage {ns}:temp with.interpolation

## Get all the points (not the first one), add the target position and remember them
data modify storage bs:in spline.sample_bezier set from storage {ns}:temp initial_points
function #bs.spline:sample_bezier
data modify storage bs:out spline.sample_bezier append from storage {ns}:temp target_position
execute if score #cinematic_interpolation {ns}.data matches ..2 run data modify storage bs:out spline.sample_bezier append from storage {ns}:temp target_position
execute if score #cinematic_interpolation {ns}.data matches ..1 run data modify storage bs:out spline.sample_bezier append from storage {ns}:temp target_position
data modify storage {ns}:temp item.components."minecraft:custom_data".points set from storage bs:out spline.sample_bezier

## Get all the rotations (not the first one), add the target rotation and remember them
data modify storage {ns}:temp initial_points.points set from storage {ns}:temp rotation_points
data modify storage bs:in spline.sample_bezier set from storage {ns}:temp initial_points
function #bs.spline:sample_bezier
data modify storage bs:out spline.sample_bezier prepend from storage {ns}:temp current_rotation
data modify storage bs:out spline.sample_bezier append from storage {ns}:temp target_rotation
execute if score #cinematic_interpolation {ns}.data matches ..2 run data modify storage bs:out spline.sample_bezier append from storage {ns}:temp target_rotation
execute if score #cinematic_interpolation {ns}.data matches ..1 run data modify storage bs:out spline.sample_bezier append from storage {ns}:temp target_rotation
data modify storage {ns}:temp item.components."minecraft:custom_data".rotations set from storage bs:out spline.sample_bezier

## Remember everything, player's id and gamemode, make the player spectator, then make them mount @s (item_display)
data modify storage {ns}:temp item.components."minecraft:custom_data".particle set from storage {ns}:temp with.particle
data modify storage {ns}:temp item.components."minecraft:custom_data".delay set from storage {ns}:temp with.delay
data modify entity @s item set from storage {ns}:temp item
scoreboard players operation @s {ns}.id = #player_id {ns}.id
execute if entity @p[tag={ns}.temp,gamemode=survival] run tag @s add {ns}.was_survival
execute if entity @p[tag={ns}.temp,gamemode=adventure] run tag @s add {ns}.was_adventure
execute if entity @p[tag={ns}.temp,gamemode=creative] run tag @s add {ns}.was_creative
gamemode spectator @p[tag={ns}.temp]
spectate @s @p[tag={ns}.temp]
""")
