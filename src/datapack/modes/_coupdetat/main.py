
# Imports
from stewbeet import Mem, write_function

from ..common import write_modes_calls, write_time_xp_bar
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "_coupdetat"
	path: str = f"{ns}:modes/{mode}"

	# Write standard /calls/ (only joined, start, tick are active here) and /translations/
	write_modes_calls(mode, calls=("joined", "start", "tick"), force_start=False, targets={"joined": f"{ns}:utils/classic_death"})
	write_translations()

	# Non-active calls: second and stop do nothing for _coupdetat
	for call in ("second", "stop"):
		write_function(f"{path}/calls/{call}", "# Do nothing")

	# /_force_start (custom: this mode is launched by a special engine routine)
	write_function(f"{path}/_force_start", f"""
# Stop everything
function {ns}:engine/disable

# Set the current game
data modify storage {ns}:main current_game set value "_coupdetat"
data modify storage {ns}:main current_game_name set value "Coup d'état"
tag @s remove detached

# Start the game with the right state
function {ns}:engine/start_state
""")

	# /give_items
	write_function(f"{path}/give_items", f"""
loot replace entity @s armor.head loot {ns}:i/sapphire_helmet
loot replace entity @s armor.chest loot {ns}:i/sapphire_chestplate
loot replace entity @s hotbar.0 loot {ns}:i/stardust_sword
loot replace entity @s hotbar.1 loot {ns}:i/stardust_apple
item replace entity @s hotbar.7 with tnt 2
item replace entity @s hotbar.8 with flint_and_steel
""")

	# /process_end (translation ref rewritten)
	write_function(f"{path}/process_end", f"""
# 1 = boss killed (success)
# 2 = player died (failure)
# 3 = time expired (failure)
# Tellraw and playsound if successful or not
scoreboard players add #process_end {ns}.data 1
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] at @s run playsound minecraft:item.totem.use ambient @s
execute if score #process_end {ns}.data matches 1 as @p[tag={ns}.coupdetat] run function {ns}:modes/_coupdetat/translations/process_end
execute if score #process_end {ns}.data matches 1 if score #detect_end {ns}.data matches 1 run scoreboard players set #add_override {ns}.money 50
execute if score #process_end {ns}.data matches 1 if score #detect_end {ns}.data matches 1 as @p[tag={ns}.coupdetat] run function {ns}:engine/add_money

# Delete bossbar and regenerate map
execute if score #process_end {ns}.data matches 100 run bossbar remove {ns}:coupdetat
execute if score #process_end {ns}.data matches 100 run function {ns}:maps/survival/coupdetat/regenerate

# Launch the game mode
execute if score #process_end {ns}.data matches 100 if score #detect_end {ns}.data matches 1 run scoreboard players set #no_force_start_msg {ns}.data 1
execute if score #process_end {ns}.data matches 100 if score #detect_end {ns}.data matches 1 run function {ns}:engine/force_start_macro with storage {ns}:main coupdetat

# Launch the usual vote routine
execute if score #process_end {ns}.data matches 100 if score #detect_end {ns}.data matches 2.. run function {ns}:engine/restart
""")

	# /start (translation ref rewritten)
	write_function(f"{path}/start", f"""
# @s = player who triggered the coup d'état
# @a[tag=!detached] = all players except detached ones

effect give @s saturation 20 255 true
effect give @s regeneration 1 255 true
tp @a[tag=!detached] 18001.96 111.63 18021.03 -104.49 22.09
gamemode spectator @a[tag=!detached]
gamemode survival @s

# Summon the boss
summon vindicator 18011 112 18008 {{Tags:["{ns}.coupdetat.boss"],Health:100.0f,attributes:[{{id:"minecraft:max_health",base:100}}],active_effects:[{{id:"minecraft:resistance",amplifier:1,duration:-1,show_particles:0b}}],equipment:{{head:{{id:"minecraft:player_head",count:1,components:{{"minecraft:profile":{{name:"Stoupy51"}}}}}}}},Glowing:1b}}
summon wolf 18011 112 18008 {{Tags:["{ns}.coupdetat.stoupy"],active_effects:[{{id:"minecraft:resistance",amplifier:4,duration:-1,show_particles:0b}}],AngerTime:1000,variant:"chestnut",CollarColor:15b,CustomName:"Stoupy",CustomNameVisible:1b}}

# Stop the coup d'état vote
scoreboard players set #coupdetat {ns}.data 0
scoreboard objectives remove {ns}.trigger.coupdetat_vote

# Create the bossbar
bossbar add {ns}:coupdetat {{"text":"Coup d'état","color":"green"}}
bossbar set {ns}:coupdetat players @a[tag=!detached]
bossbar set {ns}:coupdetat max 100
bossbar set {ns}:coupdetat value 100
bossbar set {ns}:coupdetat color green
bossbar set {ns}:coupdetat style notched_12

# 60 seconds for the coup d'état
scoreboard players set #remaining_time {ns}.data 60
scoreboard players operation #remaining_time {ns}.data *= #20 {ns}.data

scoreboard players set #coupdetat_ticks {ns}.data 0
scoreboard players set #process_end {ns}.data 0
scoreboard players set #detect_end {ns}.data 0

# Tag the player and give items
tag @a remove {ns}.coupdetat
tag @s add {ns}.coupdetat
function {ns}:modes/_coupdetat/give_items

function {ns}:modes/_coupdetat/translations/start
""")  # noqa: E501

	# /tick (translation ref rewritten)
	write_function(f"{path}/tick", f"""
# Timers and xp bar
scoreboard players add #coupdetat_ticks {ns}.data 1
scoreboard players remove #remaining_time {ns}.data 1
scoreboard players operation #remaining_seconds {ns}.data = #remaining_time {ns}.data
scoreboard players operation #remaining_seconds {ns}.data /= #20 {ns}.data
function {ns}:modes/_coupdetat/xp_bar

# Detect death system
function {ns}:utils/on_death_run_function {{function:"{ns}:utils/classic_death"}}

# Every 10 seconds, a realistic explosion on the boss
scoreboard players operation #modulo_explosion {ns}.data = #coupdetat_ticks {ns}.data
scoreboard players operation #modulo_explosion {ns}.data %= #200 {ns}.data
execute if score #modulo_explosion {ns}.data matches 50 at @n[tag={ns}.coupdetat.boss] run function realistic_explosion:explode

# Set the boss as owner of the wolf and set the angry target
data modify entity @n[tag={ns}.coupdetat.stoupy] Owner set from entity @n[tag={ns}.coupdetat.boss] UUID
data modify entity @n[tag={ns}.coupdetat.stoupy] AngryAt set from entity @p[tag=!detached] UUID
loot replace entity @n[tag={ns}.coupdetat.boss] weapon loot {ns}:i/solarium_sword

# Store boss health in the bossbar
execute store result bossbar {ns}:coupdetat value run data get entity @n[tag={ns}.coupdetat.boss] Health

# Actionbar with remaining seconds
execute if score #remaining_seconds {ns}.data matches 1.. run function {ns}:modes/_coupdetat/translations/tick

## End game
# 1 = boss killed (success)
# 2 = player died (failure)
# 3 = time expired (failure)
execute if score #coupdetat_ticks {ns}.data matches ..50 run return 0
execute if score #detect_end {ns}.data matches 0 unless entity @n[tag={ns}.coupdetat.boss] run scoreboard players set #detect_end {ns}.data 1
execute if score #detect_end {ns}.data matches 0 unless entity @p[tag=!detached,gamemode=!spectator] run scoreboard players set #detect_end {ns}.data 2
execute if score #detect_end {ns}.data matches 0 if score #remaining_time {ns}.data matches ..0 run scoreboard players set #detect_end {ns}.data 3
execute if score #detect_end {ns}.data matches 1.. run function {ns}:modes/_coupdetat/process_end
""")

	# /xp_bar
	write_time_xp_bar(f"{path}/xp_bar", 1200, "#coupdetat_ticks", "#remaining_seconds")
