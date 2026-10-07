# Imports
from stewbeet import Mem, write_function


def write_trigger_coupdetat() -> None:
	""" Write the coup d'etat trigger, which lets players vote to force a game. """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:player"

	# /trigger/coupdetat/action
	write_function(f"{path}/trigger/coupdetat/action", f"""
# Error if a game is not running or someone is already in a coup d'état
execute unless score #engine_state {ns}.data matches 3 run return run function {ns}:player/trigger/coupdetat/error
execute if score #coupdetat {ns}.data matches 1 run return run function {ns}:player/trigger/coupdetat/error

# Start the vote for coup d'état
data modify storage {ns}:temp input set value {{index_hundred:0}}
execute store result storage {ns}:temp input.index_hundred int 1 run scoreboard players get @s {ns}.trigger.coupdetat
function {ns}:player/trigger/coupdetat/launch_vote with storage {ns}:temp input
""")

	# /trigger/coupdetat/display
	write_function(f"{path}/trigger/coupdetat/display", f"""
## For each of the game, print it in order
function {ns}:player/translations/trigger_coupdetat_display

# Create a list of all minigames (with clickable text)
scoreboard players set #alternate {ns}.data 0
data modify storage {ns}:temp tellraw set value []
data modify storage {ns}:temp copy set from storage {ns}:main minigames
execute if data storage {ns}:temp copy[0] run function {ns}:player/trigger/coupdetat/display_loop with storage {ns}:temp copy[0]

# Remove the last comma from the tellraw
data remove storage {ns}:temp tellraw[-1][-1]

# Display the text component
tellraw @s {{"nbt":"tellraw","storage":"{ns}:temp","interpret":true}}
""")

	# /trigger/coupdetat/display_loop
	write_function(f"{path}/trigger/coupdetat/display_loop", f"""
# Prepare the TextComponent for this minigame
$data modify storage {ns}:temp text_component set value [{{"text":"X","color":"aqua","hover_event":{{"action":"show_text","value":[]}},"click_event":{{"action":"run_command","command":"/trigger {ns}.trigger.coupdetat set $(index_hundred)"}}}},{{"text":", ","color":"gray"}}]

# Fill the gaps
$execute if score @s {ns}.lang matches 0 run data modify storage {ns}:temp text_component[0].text set value "$(name_fr)"
$execute if score @s {ns}.lang matches 1 run data modify storage {ns}:temp text_component[0].text set value "$(name_en)"
$execute if score @s {ns}.lang matches 0 run data modify storage {ns}:temp text_component[0].hover_event.value set value [{{"text":"Dépensez 100","color":"gray"}},{{"nbt":"SapphireFR","storage":"{ns}:main","interpret":true}},{{"text":" pour lancer un coup d'état vers ","color":"gray"}},{{"text":"$(name_fr)","color":"yellow"}}]
$execute if score @s {ns}.lang matches 1 run data modify storage {ns}:temp text_component[0].hover_event.value set value [{{"text":"Spend 100","color":"gray"}},{{"nbt":"SapphireEN","storage":"{ns}:main","interpret":true}},{{"text":" to start a coup d'état for ","color":"gray"}},{{"text":"$(name_en)","color":"yellow"}}]

# Alternate colors for better readability
scoreboard players add #alternate {ns}.data 1
execute if score #alternate {ns}.data matches 1 run data modify storage {ns}:temp text_component[0].color set value "dark_aqua"
execute if score #alternate {ns}.data matches 2 run data modify storage {ns}:temp text_component[0].color set value "aqua"
execute if score #alternate {ns}.data matches 2 run scoreboard players set #alternate {ns}.data 0

# Add the text component to the tellraw
data modify storage {ns}:temp tellraw append from storage {ns}:temp text_component

# Continue loop
data remove storage {ns}:temp copy[0]
execute if data storage {ns}:temp copy[0] run function {ns}:player/trigger/coupdetat/display_loop with storage {ns}:temp copy[0]
""")

	# /trigger/coupdetat/error
	write_function(f"{path}/trigger/coupdetat/error", f"""
# Playsound and tellraw
playsound entity.villager.no ambient @s
function {ns}:player/translations/trigger_coupdetat_error
""")

	# /trigger/coupdetat/launch_vote
	write_function(f"{path}/trigger/coupdetat/launch_vote", f"""
# Extract the wanted minigame by using the index_hundred
$data modify storage {ns}:main coupdetat set from storage {ns}:main minigames[{{index_hundred:$(index_hundred)}}]

# Set up score vote
scoreboard objectives remove {ns}.trigger.coupdetat_vote
scoreboard objectives add {ns}.trigger.coupdetat_vote trigger
scoreboard players enable @a[tag=!detached] {ns}.trigger.coupdetat_vote
scoreboard players set #coupdetat {ns}.data 1

# Remove 100 sapphires from the player
scoreboard players remove @s {ns}.money 100
function {ns}:stats/util_update_player

# Tag player to indicate they are in a coup d'état
tag @a remove {ns}.coupdetat
tag @s add {ns}.coupdetat

# Ask players to support the coup d'état
function {ns}:player/translations/trigger_coupdetat_launch_vote
""")

	# /trigger/coupdetat/main
	write_function(f"{path}/trigger/coupdetat/main", f"""
# Display & Actions
execute if score @s {ns}.trigger.coupdetat matches 1 run function {ns}:player/trigger/coupdetat/display
execute if score @s {ns}.trigger.coupdetat matches 100.. run function {ns}:player/trigger/coupdetat/action
playsound ui.button.click ambient @s

# Reset
scoreboard players set @s {ns}.trigger.coupdetat 0
""")

	# /trigger/coupdetat/player_vote
	write_function(f"{path}/trigger/coupdetat/player_vote", f"""
# Display & Actions
function {ns}:player/translations/trigger_coupdetat_player_vote
playsound ui.button.click ambient @s

# Set to -1 to prevent spamming the message if the player clicks multiple times
scoreboard players set @s {ns}.trigger.coupdetat_vote -1
""")

