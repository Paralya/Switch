
# Imports
from stewbeet import Mem, write_function

from ..emit import write_modes_calls, write_time_xp_bar
from .translations import write_translations

DASH_HORIZONTAL_SPEED: int = 10000
""" Horizontal speed of a dash looking straight ahead, in 1/10000 block per tick. """
DASH_VERTICAL_SPEED: int = 12000
""" Vertical speed of a dash whatever the pitch, in 1/10000 block per tick. """

def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "tnt_run"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()


	# /death
	write_function(f"{path}/death", f"""
function {translations}/death
function {ns}:modes/_common/death_spectator
""")

	# /destroy_block
	write_function(f"{path}/destroy_block", f"""
# Fill to remove tnt_run blocks
scoreboard players set #count {ns}.data 0
execute store result score #count {ns}.data run fill ~-.1 ~ ~-.1 ~.1 ~-5 ~.1 air replace #realistic_explosion:equal_and_below_1200
execute if score #count {ns}.data matches 0 store result score #count {ns}.data run fill ~-.3 ~ ~-.3 ~.3 ~-5 ~.3 air replace #realistic_explosion:equal_and_below_1200

# Attribute the destroyed blocks to the marker's owner (for the dash charges)
execute if score #count {ns}.data matches 1.. run function {path}/dash/attribute_blocks

# Kill marker
kill @s
""")

	# /give_items (dash item, given per language in /start)
	write_function(f"{path}/give_items", f"""
# French
item replace entity @s[scores={{{ns}.lang=0}}] hotbar.4 with warped_fungus_on_a_stick[unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}},item_model="minecraft:rabbit_foot",item_name={{"text":"Dash","color":"aqua"}},lore=[{{"text":"Clic droit pour dash (dès 100 blocs détruits, de plus en plus rare)","color":"gray","italic":false}}],custom_data={{"{ns}":{{"tnt_run_dash":true}}}}]

# English
item replace entity @s[scores={{{ns}.lang=1}}] hotbar.4 with warped_fungus_on_a_stick[unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}},item_model="minecraft:rabbit_foot",item_name={{"text":"Dash","color":"aqua"}},lore=[{{"text":"Right click to dash (from 100 blocks destroyed, then rarer each time)","color":"gray","italic":false}}],custom_data={{"{ns}":{{"tnt_run_dash":true}}}}]
""")

	# /is_on_ground
	write_function(f"{path}/is_on_ground", f"""
# Get the player's motion in the y direction
scoreboard players set #temp {ns}.data 0
execute store result score #temp {ns}.data run data get entity @s Motion[1] 100

# Remember whose feet the marker is under (used to attribute destroyed blocks to that player)
scoreboard players operation #player_id {ns}.id = @s {ns}.id

# If player is not falling, summon a marker at their position
execute if score #temp {ns}.data matches -8 summon marker run function {path}/dash/setup_marker
execute unless score #temp {ns}.data matches -8 unless block ~ ~-.25 ~ air summon marker run function {path}/dash/setup_marker
""")

	# /dash/setup_marker (as the freshly summoned marker: tag it and copy the player id)
	write_function(f"{path}/dash/setup_marker", f"""
tag @s add {ns}.tnt_run
scoreboard players operation @s {ns}.id = #player_id {ns}.id
""")

	# /dash/attribute_blocks (as the marker that just destroyed #count blocks: credit its owner)
	write_function(f"{path}/dash/attribute_blocks", f"""
scoreboard players operation #player_id {ns}.id = @s {ns}.id
execute as @a[tag=!detached,predicate={ns}:has_same_id] run scoreboard players operation @s {ns}.temp.blocks += #count {ns}.data
""")

	# /dash/award (as a player: grant a dash charge at 100 blocks destroyed, then every 25 blocks further than the previous gap: 225, 375, 550...)
	write_function(f"{path}/dash/award", f"""
execute if score @s {ns}.temp.blocks >= @s {ns}.temp.dash_next run function {path}/dash/grant
""")

	# /dash/grant (as a player: add the newly earned dash charges and play a feedback sound)
	write_function(f"{path}/dash/grant", f"""
scoreboard players add @s {ns}.temp.dashes 1
scoreboard players add @s {ns}.temp.dash_gap 25
scoreboard players operation @s {ns}.temp.dash_next += @s {ns}.temp.dash_gap
execute at @s run playsound entity.player.levelup ambient @s ~ ~ ~ 1 2
execute if entity @s[scores={{{ns}.lang=0}}] run tellraw @s ["",{{"text":"⚡ +1 dash ! ","color":"aqua"}},{{"text":"Le prochain à ","color":"gray"}},{{"score":{{"name":"@s","objective":"{ns}.temp.dash_next"}},"color":"yellow"}},{{"text":" blocs","color":"gray"}}]
execute if entity @s[scores={{{ns}.lang=1}}] run tellraw @s ["",{{"text":"⚡ +1 dash! ","color":"aqua"}},{{"text":"Next one at ","color":"gray"}},{{"score":{{"name":"@s","objective":"{ns}.temp.dash_next"}},"color":"yellow"}},{{"text":" blocks","color":"gray"}}]
execute if score @s {ns}.temp.blocks >= @s {ns}.temp.dash_next run function {path}/dash/grant
""")

	# /dash/use (as a player with a charge, at @s: consume it, zero the client velocity with a teleport in place, then launch at the fixed speed)
	write_function(f"{path}/dash/use", f"""
scoreboard players remove @s {ns}.temp.dashes 1

tp @s @s
data modify storage {ns}:main Rotation set from entity @s Rotation
execute positioned 0.0 0.0 0.0 summon marker run function {path}/dash/direction

scoreboard players operation $x player_motion.api.launch = #dash_x {ns}.data
scoreboard players set $y player_motion.api.launch {DASH_VERTICAL_SPEED}
scoreboard players operation $z player_motion.api.launch = #dash_z {ns}.data
function player_motion:api/launch_xyz

execute at @s run playsound entity.firework_rocket.launch ambient @s
execute at @s run particle cloud ~ ~ ~ 0.3 0.3 0.3 0.05 20
""")

	# /dash/direction (as a marker at 0 0 0: sample the horizontal dash velocity along the stored aim, shorter the more the player looks up or down)
	write_function(f"{path}/dash/direction", f"""
data modify entity @s Rotation set from storage {ns}:main Rotation
execute at @s run tp @s ^ ^ ^1
execute store result score #dash_x {ns}.data run data get entity @s Pos[0] {DASH_HORIZONTAL_SPEED}
execute store result score #dash_z {ns}.data run data get entity @s Pos[2] {DASH_HORIZONTAL_SPEED}
kill @s
""")

	# /dash/actionbar (as a player: show the available dashes and total blocks destroyed)
	write_function(f"{path}/dash/actionbar", f"""
# French
execute if entity @s[scores={{{ns}.lang=0}}] run title @s actionbar [{{"text":"⚡ Dash : ","color":"aqua"}},{{"score":{{"name":"@s","objective":"{ns}.temp.dashes"}},"color":"yellow"}},{{"text":"   ⛏ Blocs : ","color":"gray"}},{{"score":{{"name":"@s","objective":"{ns}.temp.blocks"}},"color":"yellow"}}]

# English
execute if entity @s[scores={{{ns}.lang=1}}] run title @s actionbar [{{"text":"⚡ Dash: ","color":"aqua"}},{{"score":{{"name":"@s","objective":"{ns}.temp.dashes"}},"color":"yellow"}},{{"text":"   ⛏ Blocks: ","color":"gray"}},{{"score":{{"name":"@s","objective":"{ns}.temp.blocks"}},"color":"yellow"}}]
""")

	# /joined
	write_function(f"{path}/joined", f"""
gamemode spectator @s
function {path}/death
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
function {ns}:modes/_common/process_end/last_survivor {{death:"{path}/death"}}
""")

	# /second
	write_function(f"{path}/second", f"""
# Classic timer
scoreboard players add #tnt_run_seconds {ns}.data 1
function {path}/xp_bar

# Start countdown
execute if score #tnt_run_seconds {ns}.data matches -5..0 as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s
function {translations}/second
""")

	# /start
	write_function(f"{path}/start", f"""
effect give @a[tag=!detached] weakness infinite 255 true
effect give @a[tag=!detached] saturation infinite 255 true
execute as @a[tag=!detached] at @s run function {path}/give_items
function {ns}:utils/set_dynamic_time

## Téléportation des joueurs
scoreboard players set #do_spreadplayers {ns}.data 1
function {ns}:maps/choose_map_for {{id:"tnt_run", maps:["tnt_run_futuristic","arti_tnt_run_tower","elza_dual_biomes"]}}

execute in {ns}:game run gamerule minecraft:fall_damage false
execute in {ns}:game run gamerule minecraft:block_drops false

# Dash system objectives and per-player reset
scoreboard objectives add {ns}.temp.blocks dummy
scoreboard objectives add {ns}.temp.dashes dummy
scoreboard objectives add {ns}.temp.dash_next dummy
scoreboard objectives add {ns}.temp.dash_gap dummy
scoreboard players set @a[tag=!detached] {ns}.temp.blocks 0
scoreboard players set @a[tag=!detached] {ns}.temp.dashes 0
scoreboard players set @a[tag=!detached] {ns}.temp.dash_next 100
scoreboard players set @a[tag=!detached] {ns}.temp.dash_gap 100

scoreboard players set #tnt_run_seconds {ns}.data -6
scoreboard players set #tnt_run_ticks {ns}.data 0
scoreboard players set #process_end {ns}.data 0
""")

	# /stop
	write_function(f"{path}/stop", f"""
scoreboard objectives remove {ns}.temp.blocks
scoreboard objectives remove {ns}.temp.dashes
scoreboard objectives remove {ns}.temp.dash_next
scoreboard objectives remove {ns}.temp.dash_gap
""")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #tnt_run_ticks {ns}.data 1

# Death system (every player below is killed)
execute if data storage {ns}:main {{map:"tnt_run_futuristic"}} as @a[tag=!detached,gamemode=!spectator,sort=random] at @s if entity @s[y=0,dy=118] run function {path}/death
execute if data storage {ns}:main {{map:"arti_tnt_run_tower"}} as @a[tag=!detached,gamemode=!spectator,sort=random] at @s if entity @s[y=0,dy=105] run function {path}/death
execute if data storage {ns}:main {{map:"elza_dual_biomes"}} as @a[tag=!detached,gamemode=!spectator,sort=random] at @s if entity @s[y=0,dy=105] run function {path}/death

# Unknown death
function {ns}:utils/on_death_run_function {{function:"{path}/death"}}

# Summon a marker if players are on the ground
execute if score #tnt_run_seconds {ns}.data matches 0.. as @a[tag=!detached,gamemode=adventure] at @s run function {path}/is_on_ground

# Manage destruction of blocks
execute as @e[tag={ns}.tnt_run,scores={{{ns}.data=8..}}] at @s run function {path}/destroy_block
scoreboard players add @e[tag={ns}.tnt_run] {ns}.data 1

# Dash system : award charges (at 100 blocks, then ever further apart), use them on right click, show the actionbar
execute if score #tnt_run_seconds {ns}.data matches 0.. as @a[tag=!detached,gamemode=adventure] run function {path}/dash/award
execute if score #tnt_run_seconds {ns}.data matches 0.. as @a[tag=!detached,gamemode=adventure,scores={{{ns}.right_click=1..,{ns}.temp.dashes=1..}}] at @s if data entity @s SelectedItem.components."minecraft:custom_data".{ns}.tnt_run_dash run function {path}/dash/use
execute if score #tnt_run_seconds {ns}.data matches 0.. as @a[tag=!detached,gamemode=adventure] run function {path}/dash/actionbar

## End game
scoreboard players set #remaining_players {ns}.data 0
execute store result score #remaining_players {ns}.data if entity @a[tag=!detached,gamemode=!spectator]
execute if score #tnt_run_seconds {ns}.data matches 1.. if score #remaining_players {ns}.data matches ..1 run function {path}/process_end
execute if score #tnt_run_seconds {ns}.data matches 300.. run function {path}/process_end
""")

	# /xp_bar
	write_time_xp_bar(f"{path}/xp_bar", 300, "#tnt_run_seconds", "#tnt_run_seconds")

