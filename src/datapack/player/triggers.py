# Imports
from stewbeet import Mem, write_function


def write_triggers() -> None:
	""" Write the detach, enable, help, lang, money, music and night vision triggers, and the trigger dispatch. """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:player"

	# /trigger/detach/basic_stuff
	write_function(f"{path}/trigger/detach/basic_stuff", f"""
execute in minecraft:overworld run spawnpoint @s 0 70 0
scoreboard players set @s {ns}.lobby_respawn 0
function {ns}:player/jump_timer/cancel
function {ns}:player/practice/disable
function {ns}:player/layout/editor/force_close
effect clear @s
function {ns}:utils/reset_attributes
effect give @s saturation infinite 0 true
effect give @s regeneration 10 255 true
gamemode adventure @s
clear @s
team join {ns}.no_pvp @s
xp set @s 0 levels
xp set @s 0 points

# Kill any cinematic entity that was linked to the player
function #cinemalya:v1/stop {{with:{{restore:false}}}}

# Teleport to the lobby (cinematic if close, otherwise tp)
scoreboard players set #is_close {ns}.data 0
execute at @s if dimension minecraft:overworld positioned 0 69.69 0 store success score #is_close {ns}.data if entity @s[distance=..200]
execute if score #is_close {ns}.data matches 1 run function #cinemalya:v1/launch {{with:{{x:0.5,y:69.69,z:0.5,duration:20,pitch:0,yaw:0,particle:"minecraft:glow",smoothing:2}}}}
execute if score #is_close {ns}.data matches 0 in minecraft:overworld run tp @s 0 69.69 0 0 0
""")

	# /trigger/detach/main
	write_function(f"{path}/trigger/detach/main", f"""
# Finish tutorial
execute if score @s {ns}.tutorial matches 6 run function {ns}:player/tutorial/finish

# If in tutorial but not finished, ignore a little
execute unless entity @s[team={ns}.tutorial] run tag @s add detached
execute unless entity @s[team={ns}.tutorial] run function {ns}:player/trigger/detach/basic_stuff

# Privileged actions
execute if score @s {ns}.trigger.detach matches 20231211 run tp @s 84069 100 84069
execute if score @s {ns}.trigger.detach matches 20231211 run gamemode creative @s
execute if score @s {ns}.trigger.detach matches 20240927 in {ns}:void run tp @s 152.08 79.16 -128.08 80.11 26.04
execute if score @s {ns}.trigger.detach matches 20240927 run gamemode creative @s

# Reset score
scoreboard players set @s {ns}.trigger.detach 0
""")

	# /trigger/enable
	write_function(f"{path}/trigger/enable", f"""
scoreboard players enable @s {ns}.trigger.lang
scoreboard players enable @s {ns}.trigger.help
scoreboard players enable @s {ns}.trigger.money
scoreboard players enable @s {ns}.trigger.game_vote
scoreboard players enable @s {ns}.trigger.stats
scoreboard players enable @s {ns}.trigger.changelog
scoreboard players enable @s {ns}.trigger.detach
scoreboard players enable @s {ns}.trigger.attach
scoreboard players enable @s {ns}.trigger.shop
scoreboard players enable @s {ns}.trigger.tutorial
scoreboard players enable @s {ns}.trigger.succes
scoreboard players enable @s {ns}.trigger.rating
scoreboard players enable @s {ns}.trigger.night_vision
scoreboard players enable @s {ns}.trigger.music
scoreboard players enable @s {ns}.trigger.coupdetat
scoreboard players enable @s {ns}.trigger.coupdetat_vote
scoreboard players enable @s {ns}.trigger.layout
""")

	# /trigger/help/main
	write_function(f"{path}/trigger/help/main", f"""
# Tutorial stuff
execute if score @s {ns}.tutorial matches 5 run scoreboard players set @s {ns}.tutorial 6

function {ns}:player/translations/trigger_help_

scoreboard players set @s {ns}.trigger.help 0
""")

	# /trigger/lang/main
	write_function(f"{path}/trigger/lang/main", f"""
# If player write /lang, show the language selection
execute if score @s {ns}.trigger.lang matches 1 run function {ns}:player/trigger/lang/tellraw

# Depending on the score, choose the right language
execute if score @s {ns}.trigger.lang matches 10 run scoreboard players set @s {ns}.lang 0
execute if score @s {ns}.trigger.lang matches 11 run scoreboard players set @s {ns}.lang 1

# Messages
execute if score @s {ns}.trigger.lang matches 10 run tellraw @s [{{"text":"Vous avez choisi la langue française !\\nFaites '/lang' pour re-changer la langue","color":"aqua"}}]
execute if score @s {ns}.trigger.lang matches 11 run tellraw @s [{{"text":"You have chosen the English language!\\nType '/lang' to change the language","color":"aqua"}}]

# Clear the effects and reset the trigger score
scoreboard players set @s {ns}.trigger.lang 0
""")

	# /trigger/lang/tellraw
	write_function(f"{path}/trigger/lang/tellraw", f"""
tellraw @s "\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n"
tellraw @s [{{"text":"Please choose a language by clicking it:","color":"aqua"}}]
tellraw @s [{{"text":"\\n[Français]","color":"yellow","click_event":{{"action":"run_command","command":"/trigger {ns}.trigger.lang set 10"}},"hover_event":{{"action":"show_text","value":{{"text":"[Cliquez pour choisir Français]","color":"yellow"}}}}}}]
tellraw @s [{{"text":"\\n[English]","color":"yellow","click_event":{{"action":"run_command","command":"/trigger {ns}.trigger.lang set 11"}},"hover_event":{{"action":"show_text","value":{{"text":"[Click to choose English]","color":"yellow"}}}}}}]
""")

	# /trigger/lang/tick_undefined
	write_function(f"{path}/trigger/lang/tick_undefined", f"""
execute if entity @s[tag=!detached] run function {ns}:player/trigger/detach/main

effect give @s blindness 5 255 true
effect give @s darkness 5 255 true
effect give @s slowness 5 255 true
effect give @s night_vision 5 255 true

execute if score #tick {ns}.data matches 5 run function {ns}:player/trigger/lang/tellraw
""")

	# /trigger/main
	write_function(f"{path}/trigger/main", f"""
function {ns}:player/trigger/enable

execute unless score @s {ns}.trigger.lang matches 0 run function {ns}:player/trigger/lang/main
execute unless score @s {ns}.trigger.help matches 0 run function {ns}:player/trigger/help/main
execute unless score @s {ns}.trigger.money matches 0 run function {ns}:player/trigger/money/main
execute unless score @s {ns}.trigger.stats matches 0 run function {ns}:player/trigger/stats/entry
execute unless score @s {ns}.trigger.changelog matches 0 run function {ns}:player/trigger/changelog/main
execute unless score @s {ns}.trigger.detach matches 0 run function {ns}:player/trigger/detach/main
execute unless score @s {ns}.trigger.attach matches 0 run function {ns}:player/trigger/attach/main
execute unless score @s {ns}.trigger.shop matches 0 run function {ns}:shop/trigger
execute unless score @s {ns}.trigger.tutorial matches 0 run function {ns}:player/tutorial/next_dialogue
execute unless score @s {ns}.trigger.succes matches 0 in minecraft:overworld run function {ns}:player/trigger/succes/entry
execute unless score @s {ns}.trigger.rating matches 0 run function {ns}:player/trigger/rating/main
execute unless score @s {ns}.trigger.night_vision matches 0 run function {ns}:player/trigger/night_vision/main
execute unless score @s {ns}.trigger.music matches 0 run function {ns}:player/trigger/music/main
execute unless score @s {ns}.trigger.coupdetat matches 0 run function {ns}:player/trigger/coupdetat/main
execute if score @s {ns}.trigger.coupdetat_vote matches 1 run function {ns}:player/trigger/coupdetat/player_vote
execute unless score @s {ns}.trigger.layout matches 0 run function {ns}:player/layout/editor/entry

function {ns}:player/trigger/enable
""")

	# /trigger/money/main
	write_function(f"{path}/trigger/money/main", f"""
function {ns}:player/translations/trigger_money_
scoreboard players set @s {ns}.trigger.money 0
""")

	# /trigger/music/main
	write_function(f"{path}/trigger/music/main", f"""
# If trigger equal 1, show musics
execute if score @s {ns}.trigger.music matches 1 run function {ns}:music/browser

# Action buttons
execute if score @s {ns}.trigger.music matches 2 run function {ns}:music/actions/random
execute if score @s {ns}.trigger.music matches 2 run function {ns}:music/browser
execute if score @s {ns}.trigger.music matches 3 run function {ns}:music/actions/previous
execute if score @s {ns}.trigger.music matches 4 run scoreboard players operation @s {ns}.music.progress *= #-1 {ns}.data
execute if score @s {ns}.trigger.music matches 5 run function {ns}:music/actions/next
execute if score @s {ns}.trigger.music matches 6 run function {ns}:music/actions/repeat_all
execute if score @s {ns}.trigger.music matches 7 run function {ns}:music/actions/repeat_only_same

# If trigger >= 100 : play song
execute if score @s {ns}.trigger.music matches 100.. run scoreboard players operation @s {ns}.music.current = @s {ns}.trigger.music
execute if score @s {ns}.trigger.music matches 100.. run scoreboard players set @s {ns}.music.progress 1
execute if score @s {ns}.trigger.music matches 100.. run function {ns}:music/browser

# Reset trigger
scoreboard players set @s {ns}.trigger.music 0
""")

	# /trigger/night_vision/main
	write_function(f"{path}/trigger/night_vision/main", f"""
# Toggle night vision
scoreboard players set #success {ns}.data 0
execute if data entity @s active_effects[{{id:"night_vision"}}] run scoreboard players set #success {ns}.data 1
execute if score #success {ns}.data matches 0 run effect give @s night_vision infinite 255 true
execute if score #success {ns}.data matches 1 run effect clear @s night_vision
scoreboard players set @s {ns}.trigger.night_vision 0
""")

