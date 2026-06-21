
# Imports
from stewbeet import Mem, write_function

from ..common import write_modes_calls, write_time_xp_bar
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "warden_escape"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()

	# /calls/laser_beam (non-standard call)
	write_function(f"{path}/calls/laser_beam", f"""
advancement revoke @s only switch:warden_escape/laser_beam
execute unless score #test_mode switch.data matches 1 if score #engine_state switch.data matches 3 if data storage switch:main {{current_game:"{mode}"}} run advancement grant @s only switch:visible/70
""")


	# /death
	write_function(f"{path}/death", f"""
function {translations}/death
scoreboard players set @s switch.alive 0
function switch:utils/classic_death
""")

	# /give_items
	write_function(f"{path}/give_items", """
loot give @s loot switch:i/stardust_sword
""")

	# /joined
	write_function(f"{path}/joined", f"""
gamemode spectator @s
function {path}/death
""")

	# /player_tick
	write_function(f"{path}/player_tick", f"""
data modify storage switch:main sus set value {{anger:150}}
data modify storage switch:main sus.uuid set from entity @s UUID
execute as @e[type=warden,distance=..3,sort=nearest] run function {path}/warden_sus
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 as @a[tag=!detached,scores={{switch.alive=1..}}] at @s run function switch:engine/add_win
function switch:translations/common/process_end_survivors
execute if score #process_end switch.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end switch.data matches 1 as @a[tag=!detached,sort=random] run function {path}/death
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

execute if score #process_end switch.data matches 200 run function switch:engine/restart
""")

	# /second
	write_function(f"{path}/second", f"""
scoreboard players add #warden_escape_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

execute if score #warden_escape_seconds switch.data matches 0.. run function {path}/xp_bar
execute if score #warden_escape_seconds switch.data matches 0 run function {path}/spawn_wardens
execute if score #warden_escape_seconds switch.data matches 10 run function {path}/spawn_wardens
execute if score #warden_escape_seconds switch.data matches 20 run function {path}/spawn_wardens
execute if score #warden_escape_seconds switch.data matches 30 run function {path}/spawn_wardens
execute if score #warden_escape_seconds switch.data matches ..-1 run tp @e[type=warden] 0 -10000 0
execute if score #warden_escape_seconds switch.data matches ..-1 run kill @e[type=warden]

# Suicidaire advancement
execute as @a[tag=!detached] run function {path}/suicidaire_advancement
""")

	# /spawn_wardens
	write_function(f"{path}/spawn_wardens", """
# Depending on the map, spawn two wardens for each spawn
execute if data storage switch:main {map:"warden_forest"} as @e[limit=2] run summon warden 10066 108 10066
execute if data storage switch:main {map:"warden_forest"} as @e[limit=2] run summon warden 10106 108 10106
execute if data storage switch:main {map:"warden_forest"} as @e[limit=2] run summon warden 10026 108 10106
execute if data storage switch:main {map:"warden_forest"} as @e[limit=2] run summon warden 10106 108 10026
execute if data storage switch:main {map:"warden_forest"} as @e[limit=2] run summon warden 10026 108 10026
execute if data storage switch:main {map:"cathedrale_liege"} as @e[limit=2] run summon warden 26039 122 26056
execute if data storage switch:main {map:"cathedrale_liege"} as @e[limit=2] run summon warden 26103 122 26056
execute if data storage switch:main {map:"cathedrale_liege"} as @e[limit=2] run summon warden 26121 120 26056
execute if data storage switch:main {map:"cathedrale_liege"} as @e[limit=2] run summon warden 26104 120 26037
execute if data storage switch:main {map:"cathedrale_liege"} as @e[limit=2] run summon warden 26103 120 26068
execute if data storage switch:main {map:"cathedrale_liege"} as @e[limit=2] run summon warden 26021 121 26056
execute if data storage switch:main {map:"new_grounds"} as @e[limit=2] run summon warden 48047 113 48047
execute if data storage switch:main {map:"new_grounds"} as @e[limit=2] run summon warden 48047 113 48081
execute if data storage switch:main {map:"new_grounds"} as @e[limit=2] run summon warden 48081 113 48047
execute if data storage switch:main {map:"new_grounds"} as @e[limit=2] run summon warden 48013 113 48047
execute if data storage switch:main {map:"new_grounds"} as @e[limit=2] run summon warden 48047 113 48013
execute if data storage switch:main {map:"warden_escape_statue"} as @e[limit=2] run summon warden 69056.0 137 69050.0
execute if data storage switch:main {map:"warden_escape_statue"} as @e[limit=2] run summon warden 69078 127 69027
execute if data storage switch:main {map:"warden_escape_statue"} as @e[limit=2] run summon warden 69078 126 69072
execute if data storage switch:main {map:"warden_escape_statue"} as @e[limit=2] run summon warden 69033 126 69072
execute if data storage switch:main {map:"warden_escape_statue"} as @e[limit=2] run summon warden 69033 126 69027

# Summon one small spider per new warden also
execute at @e[type=warden,tag=!switch.glowed] run summon spider ~ ~ ~ {attributes:[{id:"minecraft:scale",base:0.35}]}

# Make the new wardens glow 2 seconds
effect give @e[type=warden,tag=!switch.glowed] glowing 2 255 true
tag @e[type=warden,tag=!switch.glowed] add switch.glowed

# Make them join the team
team join switch.temp.mobs @e[type=warden]
team join switch.temp.mobs @e[type=spider]
""")

	# /start (translation ref rewritten)
	write_function(f"{path}/start", """
team join switch.no_pvp @a[tag=!detached]
scoreboard players set @a[tag=!detached] switch.alive 1
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] regeneration 5 255 true
time set 18000

## Téléportation des joueurs
scoreboard players set #dont_regenerate switch.data 1
scoreboard players set #do_spreadplayers switch.data 1
function switch:utils/choose_map_for {id:"warden_escape", maps:["warden_forest","cathedrale_liege","new_grounds","warden_escape_statue"]}
execute if data storage switch:main {map:"cathedrale_liege"} run tp @a[tag=!detached] 26075 120 26056
execute if data storage switch:main {map:"new_grounds"} run tp @a[tag=!detached] 48047 113 48047
execute if data storage switch:main {map:"warden_escape_statue"} run tp @a[tag=!detached] 69056.0 136 69050.0

execute in switch:game run gamerule minecraft:show_death_messages false
execute in switch:game run gamerule minecraft:natural_health_regeneration false
execute in switch:game run gamerule minecraft:keep_inventory true

function switch:modes/warden_escape/translations/start

team add switch.temp.mobs
scoreboard players set #remaining_time switch.data 100
scoreboard players set #warden_escape_seconds switch.data -15
scoreboard players set #warden_escape_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard objectives add switch.temp.snowballs_shot minecraft.used:minecraft.snowball
execute as @a[tag=!detached] at @s run function switch:modes/warden_escape/give_items
""")

	# /stop
	write_function(f"{path}/stop", """
scoreboard objectives remove switch.temp.snowballs_shot
team remove switch.temp.mobs
""")

	# /suicidaire_advancement
	write_function(f"{path}/suicidaire_advancement", """
scoreboard players set #count switch.data 0
tag @s add switch.temp
execute as @e[type=warden] on target if entity @s[tag=switch.temp] run scoreboard players add #count switch.data 1
tag @s remove switch.temp
execute unless score #test_mode switch.data matches 1 if score #count switch.data matches 8.. run advancement grant @s only switch:visible/26
""")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #warden_escape_ticks switch.data 1

# Manage death and items
function switch:utils/on_death_run_function {{function:"{path}/death"}}
kill @e[type=item]

# Player tick to change Warden Sus
execute as @a[tag=!detached,gamemode=adventure] at @s run function {path}/player_tick

# Infinite snowball
item replace entity @a[tag=!detached] hotbar.1 with snowball 16
execute unless score #test_mode switch.data matches 1 run advancement grant @a[tag=!detached,scores={{switch.temp.snowballs_shot=42..}}] only switch:visible/72

# Process end
execute if score #warden_escape_seconds switch.data matches 1.. unless entity @a[scores={{switch.alive=1..}}] run function {path}/process_end
execute if score #remaining_time switch.data matches 0 run function {path}/process_end
""")

	# /warden_sus
	write_function(f"{path}/warden_sus", f"""
scoreboard players set #success switch.data 0
data modify storage switch:main suspects set from entity @s anger.suspects
execute unless data storage switch:main suspects[0] run scoreboard players set #success switch.data 1
execute if score #success switch.data matches 0 if data storage switch:main suspects[0] run function {path}/warden_sus_loop
execute if score #success switch.data matches 1 if data storage switch:main suspects[0] run data modify entity @s anger.suspects prepend from storage switch:main sus
execute if score #success switch.data matches 1 unless data storage switch:main suspects[0] run data modify entity @s anger.suspects append from storage switch:main sus
""")

	# /warden_sus_loop
	write_function(f"{path}/warden_sus_loop", f"""
execute store success score #success switch.data run data modify storage switch:main suspects[0].uuid set from storage switch:main sus.uuid
data remove storage switch:main suspects[0]
execute if score #success switch.data matches 1 if data storage switch:main suspects[0] run function {path}/warden_sus_loop
""")

	# /xp_bar
	write_time_xp_bar(f"{path}/xp_bar", 90, "#warden_escape_seconds")
