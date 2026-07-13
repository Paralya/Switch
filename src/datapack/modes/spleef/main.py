
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ...kits import Kit, KitItem, ScoreCount
from ..common import write_modes_calls
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "spleef"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()


	# /border_reduction/progress
	write_function(f"{path}/border_reduction/progress", f"""
# Fill snow blocks with air
execute if score #border_side {ns}.data matches 0 run fill ~ ~ ~ ~ ~-12 ~20 air replace snow_block
execute if score #border_side {ns}.data matches 1 run fill ~ ~ ~ ~-20 ~-12 ~ air replace snow_block
execute if score #border_side {ns}.data matches 2 run fill ~ ~ ~ ~ ~-12 ~-20 air replace snow_block
execute if score #border_side {ns}.data matches 3 run fill ~ ~ ~ ~20 ~-12 ~ air replace snow_block
scoreboard players add #border_progress {ns}.data 1
particle glow ~ ~-12 ~ 0.2 6 0.2 0 200 force


# Flip side if there is no remaining blocks
execute if score #border_progress {ns}.data >= #border_remaining_side {ns}.data run scoreboard players add #border_side {ns}.data 1
execute if score #border_progress {ns}.data >= #border_remaining_side {ns}.data if score #border_side {ns}.data matches 3 run scoreboard players remove #border_remaining_side {ns}.data 1
execute if score #border_progress {ns}.data >= #border_remaining_side {ns}.data if score #border_side {ns}.data matches 1 run scoreboard players remove #border_remaining_side {ns}.data 1
execute if score #border_progress {ns}.data >= #border_remaining_side {ns}.data run scoreboard players reset #border_progress {ns}.data


# First side and add a lap
execute if score #border_side {ns}.data matches 4 run scoreboard players add #border_laps {ns}.data 1
scoreboard players operation #border_side {ns}.data %= #4 {ns}.data


# Depending on current side, move on
execute if score #border_side {ns}.data matches 0 run tp @s ~-1 ~ ~
execute if score #border_side {ns}.data matches 1 run tp @s ~ ~ ~-1
execute if score #border_side {ns}.data matches 2 run tp @s ~1 ~ ~
execute if score #border_side {ns}.data matches 3 run tp @s ~ ~ ~1

# Stop when there are only 16 blocks left
execute if score #spleef_seconds {ns}.data matches ..90 if score #border_remaining_side {ns}.data matches ..15 run scoreboard players set #border_remaining_side {ns}.data 16
execute if score #spleef_seconds {ns}.data matches 90.. if score #border_remaining_side {ns}.data matches ..5 run scoreboard players set #border_remaining_side {ns}.data 16
""")

	# /border_reduction/setup (translation ref rewritten)
	write_function(f"{path}/border_reduction/setup", f"""
# Message d'annonce
function {ns}:modes/spleef/translations/border_reduction_setup
execute as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s

# Summon entity depending on map
execute if data storage {ns}:main {{map:"spleef_1"}} run summon marker 28020 106 28020 {{Tags:["{ns}.spleef_border"],data:{{border_size:41}}}}

# Variables
execute store result score #border_remaining_side {ns}.data run data get entity @e[type=marker,tag={ns}.spleef_border,limit=1] data.border_size
scoreboard players set #border_progress {ns}.data 0
scoreboard players set #border_side {ns}.data 0
scoreboard players set #border_laps {ns}.data 0
""")

	# /death
	write_function(f"{path}/death", f"""
# Attribute the kill: nearest recent digger marker under the victim (excluding themselves)
scoreboard players operation #victim_id {ns}.id = @s {ns}.id
scoreboard players set #killer_id {ns}.id 0
execute at @s as @n[tag={ns}.spleef_dig,distance=..4] run scoreboard players operation #killer_id {ns}.id = @s {ns}.id
execute if score #killer_id {ns}.id = #victim_id {ns}.id run scoreboard players set #killer_id {ns}.id 0

# Tag that digger as the killer so the death message can name them
scoreboard players operation #player_id {ns}.id = #killer_id {ns}.id
execute if score #killer_id {ns}.id matches 1.. as @a[tag=!detached,predicate={ns}:has_same_id] run tag @s add {ns}.spleef_killer

function {translations}/death
tag @a remove {ns}.spleef_killer
function {ns}:modes/_common/death_spectator
""")

	# /dig_mark (as a player who just mined snow, at their feet: drop a short-lived owner marker)
	write_function(f"{path}/dig_mark", f"""
scoreboard players operation #owner_id {ns}.id = @s {ns}.id
execute summon marker run function {path}/dig_marker
""")

	# /dig_marker (as the freshly summoned digger marker)
	write_function(f"{path}/dig_marker", f"""
tag @s add {ns}.spleef_dig
scoreboard players operation @s {ns}.id = #owner_id {ns}.id
scoreboard players set @s {ns}.temp.marker_age 0
""")

	# /trap_detect (as a player standing in powder snow: mark them trapped and warn them)
	write_function(f"{path}/trap_detect", f"""
scoreboard players set @s {ns}.temp.trapped_timer 40
title @s[scores={{{ns}.lang=0}}] actionbar {{"text":"⚠ Piégé dans de la neige poudreuse !","color":"aqua"}}
title @s[scores={{{ns}.lang=1}}] actionbar {{"text":"⚠ Stuck in powder snow!","color":"aqua"}}
""")

	# /give_items
	write_function(f"{path}/give_items", f"""
setblock 0 10 0 air
setblock 0 10 0 yellow_shulker_box
loot insert 0 10 0 loot {ns}:i/ruby_shovel
data modify block 0 10 0 Items[0].components."minecraft:enchantments" set value {{"minecraft:efficiency":10}}
data modify block 0 10 0 Items append value {{id:"white_shulker_box",count:1,Slot:1b,components:{{"minecraft:item_name":{{"text":"Powder Snow","color":"white","italic":false}},"minecraft:item_model":"minecraft:powder_snow_bucket"}}}}
execute if score @s {ns}.spleef.powder_snow matches 0 run data modify block 0 10 0 Items[1].count set value 4
execute if score @s {ns}.spleef.powder_snow matches 1 run data modify block 0 10 0 Items[1].count set value 5
execute if score @s {ns}.spleef.powder_snow matches 2 run data modify block 0 10 0 Items[1].count set value 6
execute if score @s {ns}.spleef.powder_snow matches 3 run data modify block 0 10 0 Items[1].count set value 7
execute if score @s {ns}.spleef.powder_snow matches 4.. run data modify block 0 10 0 Items[1].count set value 8

""")

	# The four items themselves (the shulker box above is only a staging container to build them in)
	Kit("spleef", items=(
		KitItem(role="tool", slot="hotbar.0", from_block="0 10 0 container.0"),
		KitItem(role="mobility", item="ender_pearl", slot="hotbar.1"),
		KitItem(role="blocks", item="snow_block", slot="hotbar.8",
			count=ScoreCount(objective=f"{ns}.spleef.snow_block", base=4, step=1, levels=7)),
		KitItem(role="special", slot="hotbar.7", from_block="0 10 0 container.1"),
	), post="\nsetblock 0 10 0 air").write(f"{path}/give_items")

	# /joined
	write_function(f"{path}/joined", f"""
gamemode spectator @s
function {path}/death
""")

	# /no_drop
	write_function(f"{path}/no_drop", f"""
tag @s add {ns}.checked
execute if data entity @s Item{{id:"snowball"}} run kill @s
data modify entity @s Owner set from entity @s Thrower
data modify entity @s PickupDelay set value 0s
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end {ns}.data 1

execute if score #process_end {ns}.data matches 1 if score #remaining_players {ns}.data matches 1 as @a[tag=!detached,gamemode=survival] at @s run function {ns}:engine/add_win
function {translations}/process_end
execute if score #process_end {ns}.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {path}/death
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {ns}:player/trigger/rating/print_current_game

execute if score #process_end {ns}.data matches 200 run function {ns}:engine/restart
""")

	# /replace_shulker
	write_function(f"{path}/replace_shulker", f"""
fill ~-8 ~-8 ~-8 ~8 ~8 ~8 powder_snow replace white_shulker_box
scoreboard players set @s {ns}.temp.placed_shulker 0
""")

	# /second
	write_function(f"{path}/second", f"""
# Classic timer
scoreboard players add #spleef_seconds {ns}.data 1
execute if score #spleef_seconds {ns}.data matches 0 as @a[tag=!detached] at @s run function {path}/give_items

# Border reduction
execute if score #spleef_seconds {ns}.data matches 30 run function {path}/border_reduction/setup
""")

	# /start
	write_function(f"{path}/start", f"""
gamemode survival @a[tag=!detached]
effect give @a[tag=!detached] mining_fatigue 5 255 true
effect give @a[tag=!detached] weakness infinite 255 true
effect give @a[tag=!detached] saturation infinite 255 true
function {ns}:utils/set_dynamic_time
execute in {ns}:game run gamerule minecraft:block_drops false

## Téléportation des joueurs
function {ns}:utils/choose_map_for {{id:"spleef", maps:["spleef_1"]}}
execute if data storage {ns}:main {{map:"spleef_1"}} run tp @a[tag=!detached] 28000 101 28000

function {translations}/start

scoreboard objectives add {ns}.temp.placed_shulker minecraft.used:minecraft.white_shulker_box

# Kill attribution / powder snow trap objectives
scoreboard objectives add {ns}.temp.mined minecraft.mined:minecraft.snow_block
scoreboard objectives add {ns}.temp.marker_age dummy
scoreboard objectives add {ns}.temp.trapped_timer dummy
scoreboard players set @a[tag=!detached] {ns}.temp.mined 0
scoreboard players set @a[tag=!detached] {ns}.temp.trapped_timer 0

scoreboard players set #spleef_seconds {ns}.data -10
scoreboard players set #spleef_ticks {ns}.data 0
scoreboard players set #process_end {ns}.data 0
""")

	# /stop
	write_function(f"{path}/stop", f"""
scoreboard objectives remove {ns}.temp.placed_shulker
scoreboard objectives remove {ns}.temp.mined
scoreboard objectives remove {ns}.temp.marker_age
scoreboard objectives remove {ns}.temp.trapped_timer
""")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #spleef_ticks {ns}.data 1

## Kill attribution : drop owner markers where players dig, age and expire old ones (after 2s)
execute as @a[tag=!detached,gamemode=survival,scores={{{ns}.temp.mined=1..}}] at @s run function {path}/dig_mark
scoreboard players set @a {ns}.temp.mined 0
scoreboard players add @e[tag={ns}.spleef_dig] {ns}.temp.marker_age 1
kill @e[tag={ns}.spleef_dig,scores={{{ns}.temp.marker_age=40..}}]

## Powder snow trap detection (trapped_timer stays > 0 for 2s after leaving the powder snow)
scoreboard players remove @a[scores={{{ns}.temp.trapped_timer=1..}}] {ns}.temp.trapped_timer 1
execute as @a[tag=!detached,gamemode=survival] at @s if block ~ ~ ~ powder_snow run function {path}/trap_detect

## No drop system / Death system / Border reduction system
execute as @e[type=item,tag=!{ns}.checked] run function {path}/no_drop
execute as @a[tag=!detached,gamemode=survival,predicate={ns}:in_lava,sort=random] run function {path}/death
function {ns}:utils/on_death_run_function {{function:"{path}/death"}}
execute if score #spleef_seconds {ns}.data matches 30.. as @e[type=marker,tag={ns}.spleef_border] at @s run function {path}/border_reduction/progress

## Snow Powder
execute as @a[tag=!detached,gamemode=survival,scores={{{ns}.temp.placed_shulker=1..}}] at @s run function {path}/replace_shulker

## End game
scoreboard players set #remaining_players {ns}.data 0
execute store result score #remaining_players {ns}.data if entity @a[tag=!detached,gamemode=survival]
execute if score #spleef_seconds {ns}.data matches 1.. if score #remaining_players {ns}.data matches ..1 run function {path}/process_end
execute if score #spleef_seconds {ns}.data matches 300.. run function {path}/process_end
""")
