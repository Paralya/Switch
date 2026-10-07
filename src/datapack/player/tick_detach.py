# Imports
from stewbeet import Mem, write_function

from .jumps import JUMPS


def write_tick_detach() -> None:
	""" Write the tick of detached players: the lobby, its jumps and their completions. """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:player"

	# /tick_detach Jump completions from the JUMPS data (see jump_timer.py): finishing requires an active timer for that jump, and practice mode players (tag {ns}.practice) get the practice run advancement instead
	finish_lines: str = "\n".join(
		f'execute if entity @s[x={x},y={y},z={z},distance=..{d},gamemode=!creative,gamemode=!spectator,tag=!{ns}.practice] if score @s {ns}.jump_timer_id matches {jump_id} run function {ns}:player/jump_timer/finish {{jump:"{key}"}}'
		for jump_id, key, _, _, _, (x, y, z, d) in JUMPS if key != "duality"
	)
	practice_grants: str = "\n".join(
		f"advancement grant @s[x={x},y={y},z={z},distance=..{d},gamemode=!creative,gamemode=!spectator,tag={ns}.practice] only {ns}:visible/jump_practice"
		for _, key, _, _, _, (x, y, z, d) in JUMPS if key != "duality"
	)
	duality_id: int = next(jump_id for jump_id, key, _, _, _, _ in JUMPS if key == "duality")
	write_function(f"{path}/tick_detach", f"""
# Global variable indicating number of players in the lobby
scoreboard players add #players_in_lobby {ns}.data 1

gamemode adventure @s[gamemode=creative,tag=!can_creative]
team join {ns}.detached @s[team=!{ns}.tutorial]
tp @s[team={ns}.tutorial] -500 69.69 -500 0 0

effect give @s[gamemode=survival] mining_fatigue 1 127 true
effect give @s[gamemode=!creative,gamemode=!spectator] resistance 1 127 true
effect give @s[gamemode=!creative,gamemode=!spectator] weakness 1 127 true
attribute @s[gamemode=!creative,gamemode=!spectator] safe_fall_distance base set 1024

## Teleport inventory
# Get number of blocks
data modify storage {ns}:temp Inventory set from entity @s Inventory
scoreboard players set #inventory {ns}.data 0
execute store result score #inventory {ns}.data if data storage {ns}:temp Inventory[].components."minecraft:custom_data".{ns}.jump

# If lost (only) one item, check where
execute unless score #inventory {ns}.data matches 13 unless score #inventory {ns}.data matches 0 run scoreboard players set #inventory {ns}.data -1
execute if score #inventory {ns}.data matches -1 unless data storage {ns}:temp Inventory[].components."minecraft:custom_data".{ns}.jump_green run scoreboard players set @s {ns}.lobby_respawn 1
execute if score #inventory {ns}.data matches -1 unless data storage {ns}:temp Inventory[].components."minecraft:custom_data".{ns}.jump_white run scoreboard players set @s {ns}.lobby_respawn 2
execute if score #inventory {ns}.data matches -1 unless data storage {ns}:temp Inventory[].components."minecraft:custom_data".{ns}.jump_blue run scoreboard players set @s {ns}.lobby_respawn 3
execute if score #inventory {ns}.data matches -1 unless data storage {ns}:temp Inventory[].components."minecraft:custom_data".{ns}.jump_yellow run scoreboard players set @s {ns}.lobby_respawn 4
execute if score #inventory {ns}.data matches -1 unless data storage {ns}:temp Inventory[].components."minecraft:custom_data".{ns}.jump_red run scoreboard players set @s {ns}.lobby_respawn 5
execute if score #inventory {ns}.data matches -1 unless data storage {ns}:temp Inventory[].components."minecraft:custom_data".{ns}.jump_brown run scoreboard players set @s {ns}.lobby_respawn 6
execute if score #inventory {ns}.data matches -1 unless data storage {ns}:temp Inventory[].components."minecraft:custom_data".{ns}.jump_purple run scoreboard players set @s {ns}.lobby_respawn 7
execute if score #inventory {ns}.data matches -1 unless data storage {ns}:temp Inventory[].components."minecraft:custom_data".{ns}.jump_dripstone run scoreboard players set @s {ns}.lobby_respawn 8
execute if score #inventory {ns}.data matches -1 unless data storage {ns}:temp Inventory[].components."minecraft:custom_data".{ns}.jump_pink run scoreboard players set @s {ns}.lobby_respawn 9
execute if score #inventory {ns}.data matches -1 unless data storage {ns}:temp Inventory[].components."minecraft:custom_data".{ns}.jump_bricks run scoreboard players set @s {ns}.lobby_respawn 10
execute if score #inventory {ns}.data matches -1 unless data storage {ns}:temp Inventory[].components."minecraft:custom_data".{ns}.jump_obsidian run scoreboard players set @s {ns}.lobby_respawn 11
execute if score #inventory {ns}.data matches -1 unless data storage {ns}:temp Inventory[].components."minecraft:custom_data".{ns}.jump_duality run scoreboard players set @s {ns}.lobby_respawn 12
execute if score #inventory {ns}.data matches -1 unless data storage {ns}:temp Inventory[].components."minecraft:custom_data".{ns}.jump_graviglitch run scoreboard players set @s {ns}.lobby_respawn 13
execute if score #inventory {ns}.data matches -1 run tag @s add {ns}.lobby_respawn
execute if score #inventory {ns}.data matches -1 run clear @s

## Practice mode (checkpoints on lobby jumps, must run before the respawn detection below)
function {ns}:player/practice/tick

## Inventory layout editor (drop-to-save detection, uses the Inventory copy above)
function {ns}:player/layout/editor/tick

# Teleport to respawn point
scoreboard players add @s {ns}.lobby_respawn 0
execute if entity @s[tag=!{ns}.lobby_respawn,gamemode=!creative,gamemode=!spectator,y=-64,dy=127] run tag @s add {ns}.lobby_respawn
execute if entity @s[tag={ns}.lobby_respawn,scores={{{ns}.lobby_respawn=0}}] run function #cinemalya:v1/launch {{with:{{x:0.5,y:69.69,z:0.5,duration:20,pitch:0,yaw:0,arc_side:1,particle:"minecraft:glow",smoothing:2}}}}
execute if entity @s[tag={ns}.lobby_respawn,scores={{{ns}.lobby_respawn=1}}] run function #cinemalya:v1/launch {{with:{{x:0.5,y:70.1,z:-9.5,duration:20,pitch:0,yaw:90,arc_side:1,particle:"minecraft:glow",smoothing:2}}}}
execute if entity @s[tag={ns}.lobby_respawn,scores={{{ns}.lobby_respawn=2}}] run function #cinemalya:v1/launch {{with:{{x:0.5,y:70.1,z:-9.5,duration:20,pitch:0,yaw:-90,arc_side:1,particle:"minecraft:glow",smoothing:2}}}}
execute if entity @s[tag={ns}.lobby_respawn,scores={{{ns}.lobby_respawn=3}}] run function #cinemalya:v1/launch {{with:{{x:0.5,y:75.51,z:-23.5,duration:20,pitch:0,yaw:180,arc_side:1,particle:"minecraft:glow",smoothing:2}}}}
execute if entity @s[tag={ns}.lobby_respawn,scores={{{ns}.lobby_respawn=4}}] run function #cinemalya:v1/launch {{with:{{x:9.5,y:74.51,z:23.5,duration:20,pitch:0,yaw:-90,arc_side:1,particle:"minecraft:glow",smoothing:2}}}}
execute if entity @s[tag={ns}.lobby_respawn,scores={{{ns}.lobby_respawn=5}}] run function #cinemalya:v1/launch {{with:{{x:-14.5,y:73.51,z:9.5,duration:20,pitch:0,yaw:0,arc_side:1,particle:"minecraft:glow",smoothing:2}}}}
execute if entity @s[tag={ns}.lobby_respawn,scores={{{ns}.lobby_respawn=6}}] run function #cinemalya:v1/launch {{with:{{x:-34.5,y:73.1,z:-8.5,duration:20,pitch:0,yaw:180,arc_side:1,particle:"minecraft:glow",smoothing:2}}}}
execute if entity @s[tag={ns}.lobby_respawn,scores={{{ns}.lobby_respawn=7}}] run function #cinemalya:v1/launch {{with:{{x:-8.5,y:73.1,z:35.5,duration:20,pitch:0,yaw:90,arc_side:1,particle:"minecraft:glow",smoothing:2}}}}
execute if entity @s[tag={ns}.lobby_respawn,scores={{{ns}.lobby_respawn=8}}] run function #cinemalya:v1/launch {{with:{{x:9.5,y:73.1,z:47.5,duration:20,pitch:0,yaw:-90,arc_side:1,particle:"minecraft:glow",smoothing:2}}}}
execute if entity @s[tag={ns}.lobby_respawn,scores={{{ns}.lobby_respawn=9}}] run function #cinemalya:v1/launch {{with:{{x:-46.5,y:76.1,z:10.5,duration:20,pitch:0,yaw:0,arc_side:1,particle:"minecraft:glow",smoothing:2}}}}
execute if entity @s[tag={ns}.lobby_respawn,scores={{{ns}.lobby_respawn=10}}] run function #cinemalya:v1/launch {{with:{{x:-84.5,y:70.1,z:0.5,duration:20,pitch:0,yaw:90,arc_side:1,particle:"minecraft:glow",smoothing:2}}}}
execute if entity @s[tag={ns}.lobby_respawn,scores={{{ns}.lobby_respawn=11}}] run function #cinemalya:v1/launch {{with:{{x:51.5,y:74.6,z:-8.5,duration:20,pitch:0,yaw:180,arc_side:1,particle:"minecraft:glow",smoothing:2}}}}
execute if entity @s[tag={ns}.lobby_respawn,scores={{{ns}.lobby_respawn=12}}] run function #cinemalya:v1/launch {{with:{{x:9.5,y:74.6,z:111.5,duration:20,pitch:0,yaw:-90,arc_side:1,particle:"minecraft:glow",smoothing:2}}}}
execute if entity @s[tag={ns}.lobby_respawn,scores={{{ns}.lobby_respawn=13}}] run function #cinemalya:v1/launch {{with:{{x:-11.5,y:74.1,z:91.5,duration:20,pitch:0,yaw:90,arc_side:1,particle:"minecraft:glow",smoothing:2}}}}
tag @s remove {ns}.lobby_respawn

# If lost at least one item, setup inventory (never while the layout editor owns the inventory)
execute if entity @s[tag=!{ns}.layout_editor] unless score #inventory {ns}.data matches 13 run function {ns}:player/setup_lobby_inventory


## Jump timers (start lines detection, timer ticking + actionbar)
function {ns}:player/jump_timer/tick

## Jumps completion: requires an active timer for that jump (practice mode players get the practice run advancement instead)
{finish_lines}
execute if entity @a[gamemode=adventure,x=43,y=86,z=84,dx=0,dy=0,dz=0] if entity @a[gamemode=adventure,x=45,y=86,z=84,dx=0,dy=0,dz=0] if entity @s[gamemode=adventure,x=44,y=86,z=84,distance=..2,tag=!{ns}.practice] if score @s {ns}.jump_timer_id matches {duality_id} run function {ns}:player/jump_timer/finish {{jump:"duality"}}
{practice_grants}
execute if entity @a[gamemode=adventure,x=43,y=86,z=84,dx=0,dy=0,dz=0] if entity @a[gamemode=adventure,x=45,y=86,z=84,dx=0,dy=0,dz=0] run advancement grant @a[gamemode=adventure,x=44,y=86,z=84,distance=..2,tag={ns}.practice] only {ns}:visible/jump_practice

# GraviGlitch jump gives
execute store success score #graviglitch_give {ns}.data if entity @s[x=-87,y=67,z=66,dx=77,dy=38,dz=37,predicate=!{ns}:nbt/enough_gravel]
execute if score #graviglitch_give {ns}.data matches 1 run clear @s suspicious_gravel[minecraft:custom_data~{{{ns}:{{"to_place":true}}}}]
execute if score #graviglitch_give {ns}.data matches 1 run give @s suspicious_gravel[can_place_on={{blocks:["smooth_red_sandstone","orange_wall_banner","red_sandstone_wall"]}},custom_data={{"{ns}":{{"to_place":true}}}}] 42
execute unless entity @s[x=-87,y=67,z=66,dx=77,dy=38,dz=37] run clear @s suspicious_gravel[custom_data~{{"{ns}":{{"to_place":true}}}}]
""")

