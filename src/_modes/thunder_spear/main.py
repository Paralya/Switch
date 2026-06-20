
# Imports
from stewbeet import Mem, write_function
from ..common import write_classic_death, write_modes_calls, write_time_xp_bar
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "thunder_spear"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()


	# /death
	write_classic_death(f"{path}/death")

	# /explode_arrow
	write_function(f"{path}/explode_arrow", f"""
# Explosion damage
execute on origin run tag @s add switch.origin
execute as @a[tag=!detached,distance=..15] run damage @s 0.000000001 minecraft:player_explosion by @p[tag=switch.origin]
execute on origin run tag @s remove switch.origin

# Summon tnt
data modify storage switch:temp Owner set from entity @s Owner
execute summon tnt run function {path}/on_new_tnt
playsound switch:explosion ambient @a[distance=..50]

# Kill the arrow
kill @s
""")

	# /give_and_teleport
	write_function(f"{path}/give_and_teleport", """
## Starter kit
# Effects
clear @s
effect clear @s
effect give @s speed infinite 1 true
effect give @s jump_boost infinite 4 true
effect give @s resistance 5 255 true
gamemode survival @s
scoreboard players add @s switch.temp.kills 0

# Give items
item replace entity @s hotbar.0 with crossbow[charged_projectiles=[{id:"minecraft:arrow"}]]
loot replace entity @s weapon.offhand loot grappling_hook:v1.4.0/items/normal_grappling_hook
item modify entity @s weapon.offhand switch:unbreakable
scoreboard players set @s switch.temp.reload -60

# Teleport player
function switch:maps/spread_one_player
""")

	# /joined
	write_function(f"{path}/joined", f"""
function {path}/give_and_teleport
""")

	# /on_new_tnt
	write_function(f"{path}/on_new_tnt", """
# Modify Owner from storage
data modify entity @s Owner set from storage switch:temp Owner

# Modify fuse à 0s
data modify entity @s fuse set value 0s
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 run tag @a remove switch.winner
execute if score #process_end switch.data matches 1 run scoreboard players set #max switch.data 0
execute if score #process_end switch.data matches 1 run scoreboard players operation #max switch.data > @a[tag=!detached] switch.temp.kills
execute if score #process_end switch.data matches 1 as @a[tag=!detached] if score #max switch.data = @s switch.temp.kills run tag @s add switch.winner
execute if score #process_end switch.data matches 1 as @a[tag=!detached,tag=switch.winner] at @s run function switch:engine/add_win
execute if score #process_end switch.data matches 1 store result score #remaining_players switch.data if entity @a[tag=!detached,tag=switch.winner]
function {translations}/process_end
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function {path}/death
execute if score #process_end switch.data matches 1 run tag @a remove switch.winner
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

execute if score #process_end switch.data matches 200 run function switch:engine/restart
""")

	# /second
	write_function(f"{path}/second", f"""
# Classic timer
scoreboard players add #thunder_spear_seconds switch.data 1
scoreboard players remove #remaining_time switch.data 1

# XP bar
execute if score #thunder_spear_seconds switch.data matches 0.. run function {path}/xp_bar
function {translations}/second
execute if score #thunder_spear_seconds switch.data matches 0 as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s
""")

	# /start
	write_function(f"{path}/start", f"""
gamemode survival @a[tag=!detached]
effect give @a[tag=!detached] blindness 5 255 true
effect give @a[tag=!detached] weakness 5 255 true
effect give @a[tag=!detached] saturation 5 255 true
effect give @a[tag=!detached] resistance 5 255 true
function switch:utils/set_dynamic_time

## Téléportation des joueurs
scoreboard players set #do_spreadplayers switch.data 1
function switch:utils/choose_map_for {{id:"thunder_spear", maps:["adraik_big_ball","vilarles_castillo","zonweeb_highschool","stardust_pvp_zone","sudoku_craft","smithed_summit_2024"]}}
execute as @a[tag=!detached] run function {path}/give_and_teleport

execute in switch:game run gamerule minecraft:keep_inventory true
execute in switch:game run gamerule minecraft:fall_damage false

function {translations}/start

scoreboard players set #thunder_spear_seconds switch.data -10
scoreboard players set #thunder_spear_ticks switch.data 0
scoreboard players set #remaining_time switch.data 160
scoreboard players set #process_end switch.data 0
scoreboard objectives add switch.temp.reload dummy
scoreboard objectives add switch.temp.kills playerKillCount {{"text":"Killed players","color":"red"}}
scoreboard objectives setdisplay sidebar switch.temp.kills
scoreboard objectives setdisplay list switch.health
scoreboard players set @a[tag=!detached] switch.temp.kills 0
""")

	# /stop
	write_function(f"{path}/stop", """
scoreboard objectives remove switch.temp.reload
scoreboard objectives remove switch.temp.kills
""")

	# /tick (brace-heavy: plain string)
	write_function(f"{path}/tick", """
## Death system
scoreboard players add #thunder_spear_ticks switch.data 1
function switch:utils/on_death_run_function {function:"switch:modes/thunder_spear/give_and_teleport"}

# Summon tnt to arrows on ground and remove them & Modify arrow damage & Kill all items
execute as @e[type=arrow,nbt={inBlockState:{}}] at @s run function switch:modes/thunder_spear/explode_arrow
execute as @e[type=arrow,nbt=!{weapon:{components:{}}}] run data modify entity @s damage set value 100.0d
execute as @e[type=arrow,nbt={weapon:{components:{}}}] run data modify entity @s damage set value 0.0d
kill @e[type=item]

# Auto reload system
item replace entity @a[tag=!detached] inventory.0 with arrow 1
scoreboard players add @a[tag=!detached] switch.temp.reload 1
execute as @a[scores={switch.temp.reload=40..}] if items entity @s hotbar.0 *[!custom_data] run item replace entity @s hotbar.0 with crossbow[charged_projectiles=[{id:"minecraft:arrow"}]]
execute as @a[scores={switch.temp.reload=40..}] if items entity @s weapon.offhand *[!custom_data] run item replace entity @s weapon.offhand with crossbow[charged_projectiles=[{id:"minecraft:arrow"}]]
scoreboard players reset @a[scores={switch.temp.reload=40..}] switch.temp.reload

# Keep reloading the grappling hook
execute as @a[tag=!detached] if items entity @s weapon.offhand *[custom_data~{grappling_hook:1b}] run item modify entity @s weapon.offhand {"function":"minecraft:set_components","components":{"minecraft:charged_projectiles":[{"id":"minecraft:arrow"}]}}
execute as @a[tag=!detached] if items entity @s weapon.mainhand *[custom_data~{grappling_hook:1b}] run item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:charged_projectiles":[{"id":"minecraft:arrow"}]}}

# Advancement
execute unless score #test_mode switch.data matches 1 run advancement grant @a[scores={switch.temp.kills=10..}] only switch:visible/67

## End game
execute if score #remaining_time switch.data matches ..0 run function switch:modes/thunder_spear/process_end
""")

	# /xp_bar
	write_time_xp_bar(f"{path}/xp_bar", 150, "#thunder_spear_seconds")
