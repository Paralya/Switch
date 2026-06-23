
# Imports
from stewbeet import Mem, write_function

from ..common import write_modes_calls, write_time_xp_bar
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "_coupdetat"
	path: str = f"{ns}:modes/{mode}"

	# Write standard /calls/ (only joined, start, tick are active here) and /translations/
	write_modes_calls(mode, calls=("joined", "start", "tick"), force_start=False, targets={"joined": "switch:utils/classic_death"})
	write_translations()

	# Non-active calls: second and stop do nothing for _coupdetat
	for call in ("second", "stop"):
		write_function(f"{path}/calls/{call}", "# Do nothing")

	# /_force_start (custom: this mode is launched by a special engine routine)
	write_function(f"{path}/_force_start", """
# Stop everything
function switch:engine/disable

# Set the current game
data modify storage switch:main current_game set value "_coupdetat"
data modify storage switch:main current_game_name set value "Coup d'état"
tag @s remove detached

# Start the game with the right state
function switch:engine/start_state
""")

	# /give_items
	write_function(f"{path}/give_items", """
loot replace entity @s armor.head loot switch:i/sapphire_helmet
loot replace entity @s armor.chest loot switch:i/sapphire_chestplate
loot replace entity @s hotbar.0 loot switch:i/stardust_sword
loot replace entity @s hotbar.1 loot switch:i/stardust_apple
item replace entity @s hotbar.7 with tnt 2
item replace entity @s hotbar.8 with flint_and_steel
""")

	# /process_end (translation ref rewritten)
	write_function(f"{path}/process_end", """
# 1 = boss killed (success)
# 2 = player died (failure)
# 3 = time expired (failure)
# Tellraw and playsound if successful or not
scoreboard players add #process_end switch.data 1
execute if score #process_end switch.data matches 1 as @a[tag=!detached] at @s run playsound minecraft:item.totem.use ambient @s
execute if score #process_end switch.data matches 1 as @p[tag=switch.coupdetat] run function switch:modes/_coupdetat/translations/process_end
execute if score #process_end switch.data matches 1 if score #detect_end switch.data matches 1 run scoreboard players set #add_override switch.money 50
execute if score #process_end switch.data matches 1 if score #detect_end switch.data matches 1 as @p[tag=switch.coupdetat] run function switch:engine/add_money

# Delete bossbar and regenerate map
execute if score #process_end switch.data matches 100 run bossbar remove switch:coupdetat
execute if score #process_end switch.data matches 100 run function switch:maps/survival/coupdetat/regenerate

# Launch the game mode
execute if score #process_end switch.data matches 100 if score #detect_end switch.data matches 1 run scoreboard players set #no_force_start_msg switch.data 1
execute if score #process_end switch.data matches 100 if score #detect_end switch.data matches 1 run function switch:engine/force_start_macro with storage switch:main coupdetat

# Launch the usual vote routine
execute if score #process_end switch.data matches 100 if score #detect_end switch.data matches 2.. run function switch:engine/restart
""")

	# /start (translation ref rewritten)
	write_function(f"{path}/start", """
# @s = player who triggered the coup d'état
# @a[tag=!detached] = all players except detached ones

effect give @s saturation 20 255 true
effect give @s regeneration 1 255 true
tp @a[tag=!detached] 18001.96 111.63 18021.03 -104.49 22.09
gamemode spectator @a[tag=!detached]
gamemode survival @s

# Summon the boss
summon vindicator 18011 112 18008 {Tags:["switch.coupdetat.boss"],Health:100.0f,attributes:[{id:"minecraft:max_health",base:100}],active_effects:[{id:"minecraft:resistance",amplifier:1,duration:-1,show_particles:0b}],equipment:{head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{name:"Stoupy51"}}}},Glowing:1b}
summon wolf 18011 112 18008 {Tags:["switch.coupdetat.stoupy"],active_effects:[{id:"minecraft:resistance",amplifier:4,duration:-1,show_particles:0b}],AngerTime:1000,variant:"chestnut",CollarColor:15b,CustomName:"Stoupy",CustomNameVisible:1b}

# Stop the coup d'état vote
scoreboard players set #coupdetat switch.data 0
scoreboard objectives remove switch.trigger.coupdetat_vote

# Create the bossbar
bossbar add switch:coupdetat {"text":"Coup d'état","color":"green"}
bossbar set switch:coupdetat players @a[tag=!detached]
bossbar set switch:coupdetat max 100
bossbar set switch:coupdetat value 100
bossbar set switch:coupdetat color green
bossbar set switch:coupdetat style notched_12

# 60 seconds for the coup d'état
scoreboard players set #remaining_time switch.data 60
scoreboard players operation #remaining_time switch.data *= #20 switch.data

scoreboard players set #coupdetat_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #detect_end switch.data 0

# Tag the player and give items
tag @a remove switch.coupdetat
tag @s add switch.coupdetat
function switch:modes/_coupdetat/give_items

function switch:modes/_coupdetat/translations/start
""")  # noqa: E501

	# /tick (translation ref rewritten)
	write_function(f"{path}/tick", """
# Timers and xp bar
scoreboard players add #coupdetat_ticks switch.data 1
scoreboard players remove #remaining_time switch.data 1
scoreboard players operation #remaining_seconds switch.data = #remaining_time switch.data
scoreboard players operation #remaining_seconds switch.data /= #20 switch.data
function switch:modes/_coupdetat/xp_bar

# Detect death system
function switch:utils/on_death_run_function {function:"switch:utils/classic_death"}

# Every 10 seconds, a realistic explosion on the boss
scoreboard players operation #modulo_explosion switch.data = #coupdetat_ticks switch.data
scoreboard players operation #modulo_explosion switch.data %= #200 switch.data
execute if score #modulo_explosion switch.data matches 50 at @n[tag=switch.coupdetat.boss] run function realistic_explosion:explode

# Set the boss as owner of the wolf and set the angry target
data modify entity @n[tag=switch.coupdetat.stoupy] Owner set from entity @n[tag=switch.coupdetat.boss] UUID
data modify entity @n[tag=switch.coupdetat.stoupy] AngryAt set from entity @p[tag=!detached] UUID
loot replace entity @n[tag=switch.coupdetat.boss] weapon loot switch:i/solarium_sword

# Store boss health in the bossbar
execute store result bossbar switch:coupdetat value run data get entity @n[tag=switch.coupdetat.boss] Health

# Actionbar with remaining seconds
execute if score #remaining_seconds switch.data matches 1.. run function switch:modes/_coupdetat/translations/tick

## End game
# 1 = boss killed (success)
# 2 = player died (failure)
# 3 = time expired (failure)
execute if score #coupdetat_ticks switch.data matches ..50 run return 0
execute if score #detect_end switch.data matches 0 unless entity @n[tag=switch.coupdetat.boss] run scoreboard players set #detect_end switch.data 1
execute if score #detect_end switch.data matches 0 unless entity @p[tag=!detached,gamemode=!spectator] run scoreboard players set #detect_end switch.data 2
execute if score #detect_end switch.data matches 0 if score #remaining_time switch.data matches ..0 run scoreboard players set #detect_end switch.data 3
execute if score #detect_end switch.data matches 1.. run function switch:modes/_coupdetat/process_end
""")

	# /xp_bar
	write_time_xp_bar(f"{path}/xp_bar", 1200, "#coupdetat_ticks", "#remaining_seconds")
