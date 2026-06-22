
# Imports
from stewbeet import Mem, write_function

from ..common import write_modes_calls, write_no_drop
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "memory_mine"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()


	# /death
	write_function(f"{path}/death", f"""
# Indicate to the mine that it just killed a player
scoreboard players set #success switch.data 1

# Grant advancement if player stepped on their own mine
execute unless score #test_mode switch.data matches 1 if entity @s[gamemode=!spectator] if score @s switch.id = #owner_id switch.data run advancement grant @s only switch:visible/36

# Effect and particles on the death spot, and increment death stats
execute if entity @s[gamemode=!spectator] run particle explosion ~ ~ ~ 0 0 0 1 1 force @a[distance=..50]
execute if entity @s[gamemode=!spectator] run particle dust{{color:[0.66,0.33,0.0],scale:4.0}} ~ ~ ~ 0 0 0 1 1 force @a[distance=..50]
execute if entity @s[gamemode=!spectator] run playsound switch:explosion ambient @a[distance=..50]
execute if entity @s[gamemode=!spectator] run scoreboard players add @s switch.stats.deaths 1


## Death message
# Tag the owner of the mine
execute as @a[tag=!detached] if score @s switch.id = #owner_id switch.data run tag @s add switch.owner
# Send tellraw
function {translations}/death
# Remove the owner tag
tag @a[tag=switch.owner] remove switch.owner


# Spectator and other stuff
gamemode spectator @s
effect clear @s
execute unless score #process_end switch.data matches 1 at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~ ~ ~
clear @s
""")

	# /joined
	write_function(f"{path}/joined", f"""
gamemode spectator @s
function {path}/death
""")

	# /mine_tick
	write_function(f"{path}/mine_tick", f"""
execute unless score @s switch.temp.cooldown matches 60 run scoreboard players add @s switch.temp.cooldown 1
execute if score @s switch.temp.cooldown matches 60 run particle dust{{color:[1.0,0.0,0.0],scale:1.0}} ~ ~ ~ 0 0 0 1 1 force @a[gamemode=spectator,distance=..50]
execute if score @s switch.temp.cooldown matches 60 if predicate switch:chance/0.01 run particle dust{{color:[1.0,0.0,0.0],scale:1.0}} ~ ~ ~ 0 0 0 1 100 force @a[distance=..50]
execute if score @s switch.temp.cooldown matches 60 run scoreboard players set #success switch.data 0
execute if score @s switch.temp.cooldown matches 60 run scoreboard players operation #owner_id switch.data = @s switch.id
execute if score @s switch.temp.cooldown matches 60 as @a[tag=!detached,gamemode=adventure,distance=..0.5] run function {path}/death
execute if score @s switch.temp.cooldown matches 60 run scoreboard players reset #owner_id switch.data
execute if score @s switch.temp.cooldown matches 60 if score #success switch.data matches 1 run kill @s
""")

	# /no_drop
	write_no_drop(f"{path}/no_drop")

	# /place_mine
	write_function(f"{path}/place_mine", """
# Revoke right click advancement
advancement revoke @s only switch:memory_mine/right_click

clear @s tnt 1
summon marker ~ 102 ~ {Tags:["switch.mine","switch.temp"]}
scoreboard players set @s switch.temp.cooldown 100
particle dust{color:[1.0,0.0,0.0],scale:4.0} ~ ~ ~ 0 0 0 1 25 force @a[distance=..50]
playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 1 0

# Copy player ID for advancement
scoreboard players operation @e[type=marker,tag=switch.temp,limit=1] switch.id = @s switch.id
tag @e[type=marker,tag=switch.temp] remove switch.temp
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
function switch:modes/_common/process_end/last_survivor {{death:"{path}/death"}}
""")

	# /second
	write_function(f"{path}/second", f"""
# Classic timer
scoreboard players add #memory_mine_seconds switch.data 1
execute if score #memory_mine_seconds switch.data matches 0 run scoreboard players set @a[tag=!detached] switch.temp.cooldown 2

# Every 30 seconds, make a zone where people need to be
scoreboard players operation #temp switch.data = #memory_mine_seconds switch.data
scoreboard players operation #temp switch.data %= #15 switch.data
execute if score #temp switch.data matches 5 in switch:game run function {path}/zone/summon
execute if score #temp switch.data matches 6..13 at @e[type=marker,tag=switch.zone] run function {path}/zone/particles
execute if score #temp switch.data matches 14 as @e[type=marker,tag=switch.zone] at @s run function {path}/zone/end
""")

	# /start
	write_function(f"{path}/start", f"""
gamemode adventure @a[tag=!detached]
team join switch.no_pvp @a[tag=!detached]
effect give @a[tag=!detached] saturation infinite 255 true
function switch:utils/set_dynamic_time

execute as @a[tag=!detached] run attribute @s safe_fall_distance base set 1024
execute as @a[tag=!detached] run attribute @s jump_strength base set 0

function switch:utils/choose_map_for {{id:"memory_mine", maps:["memory_mine"]}}
function {translations}/start

scoreboard objectives add switch.temp.cooldown dummy
scoreboard players set #memory_mine_seconds switch.data -10
scoreboard players set #memory_mine_ticks switch.data 0
scoreboard players set #process_end switch.data 0

execute in switch:game run spreadplayers 153013 153016 0 15 under 105 false @a[tag=!detached]
""")

	# /stop
	write_function(f"{path}/stop", """
scoreboard objectives remove switch.temp.cooldown
""")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #memory_mine_ticks switch.data 1

# No drop system
execute as @e[type=item,tag=!switch.checked] run function {path}/no_drop

# Give mines and decrease cooldown timer
give @a[scores={{switch.temp.cooldown=1}}] tnt[custom_data={{switch:{{memory_mine:true}}}},consumable={{consume_seconds:1024}}]
scoreboard players remove @a[scores={{switch.temp.cooldown=1..}}] switch.temp.cooldown 1

# Mine tick
execute as @e[type=marker,tag=switch.mine] at @s run function {path}/mine_tick

# Unknown death
function switch:utils/on_death_run_function {{function:"{path}/death"}}

## End game
scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[tag=!detached,gamemode=adventure]
execute if score #memory_mine_seconds switch.data matches 1.. if score #remaining_players switch.data matches ..1 run function {path}/process_end
execute if score #memory_mine_seconds switch.data matches 300.. run function {path}/process_end
""")

	# /zone/end
	write_function(f"{path}/zone/end", f"""
execute as @a[tag=!detached,gamemode=adventure,distance=3..50] at @s run function {path}/death
playsound entity.player.levelup ambient @a[distance=..50] ~ ~ ~ 1 2
particle happy_villager ~ ~ ~ 1 1 1 1 100
kill @s
""")

	# /zone/summon
	write_function(f"{path}/zone/summon", """
# Summon marker in a random place
summon marker 0 0 0 {Tags:["switch.zone","switch.new"]}
spreadplayers 153013 153016 0 8 under 105 false @e[type=marker,tag=switch.new]
execute at @e[type=marker,tag=switch.new] run playsound block.anvil.fall ambient @a[distance=..50]
tag @e[type=marker,tag=switch.new] remove switch.new
""")
