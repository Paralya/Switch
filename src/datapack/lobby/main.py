""" The lobby: leaderboards, stat displays and the per-tick chores outside of a game.

Everything here runs while players wait between two minigames, never during one.
"""
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from .displays import write_displays
from .npc import write_npc


def main() -> None:
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:lobby"
	write_npc()
	write_displays()

	# /tick
	write_function(f"{path}/tick", f"""
# Prevent entities (detached entities are lobby-owned, never wiped)
kill @e[type=arrow,distance=..200,tag=!detached]
kill @e[type=tnt,distance=..200,tag=!detached]
kill @e[type=creeper,distance=..200,tag=!detached]
kill @e[type=sheep,distance=..200,tag=!detached]
kill @e[type=falling_block,distance=..200,tag=!detached,nbt={{Time:20}}]

# Duality Jump (tick)
execute if score #players_in_lobby {ns}.data matches 1.. if block 20 79 94 stone_button[powered=true] run summon spectral_arrow 21.00 80.38 93.50 {{Tags:["detached"],Motion:[1.5,0.085,0.0],Rotation:[90f,0f],pickup:0b,life:1170s}}
execute if score #players_in_lobby {ns}.data matches 1.. if block 20 79 94 stone_button[powered=true] run setblock 20 79 94 stone_button[face=wall,facing=south,powered=false]
execute if score #players_in_lobby {ns}.data matches 1.. if block 28 79 90 stone_button[powered=true] run summon spectral_arrow 26.95 80.38 90.50 {{Tags:["detached"],Motion:[-1.5,0.093,0.0],Rotation:[-90f,0f],pickup:0b,life:1170s}}
execute if score #players_in_lobby {ns}.data matches 1.. if block 28 79 90 stone_button[powered=true] run setblock 28 79 90 stone_button[face=wall,facing=east,powered=false]
execute if score #players_in_lobby {ns}.data matches 1.. if block 45 87 90 stone_button[powered=true] run setblock 44 86 90 water
execute if score #players_in_lobby {ns}.data matches 1.. unless block 45 87 90 stone_button[powered=true] run setblock 44 86 90 air

execute if score #players_in_lobby {ns}.data matches 1.. unless block 27 80 102 light_weighted_pressure_plate[power=1] run setblock 34 79 103 waxed_copper_block
execute if score #players_in_lobby {ns}.data matches 1.. if block 27 80 102 light_weighted_pressure_plate[power=1] run setblock 34 79 103 redstone_block
execute if score #players_in_lobby {ns}.data matches 1.. if block 27 80 102 light_weighted_pressure_plate[power=1] run particle minecraft:dust{{color:[1,0,0],scale:1}} 32 78.5 102 1.8 .01 .01 1 5

# NPCs
execute if score #players_in_lobby {ns}.data matches 1.. positioned -22 69.8 3 run function {ns}:lobby/npc/ofchara/tick
""")
