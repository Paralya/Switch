
# ruff: noqa: E501
# Imports
import stouputils as stp
from stewbeet import Mem, write_function


@stp.measure_time(message="Generated npc files")
def main() -> None:
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:npc"

	# /tick (generic body-locked NPC look-at logic, macro)
	write_function(f"{path}/tick", f"""
# If body is locked, set a score
execute store success score #body_locked {ns}.data if entity @s[tag={ns}.npc.body_locked]

# Store previous yaw rotation (if body is locked)
execute if score #body_locked {ns}.data matches 1 store result score #previous_yaw {ns}.data run data get entity @s Rotation[0] 1000

# Face the player
$execute anchored eyes facing entity $(facing) eyes run tp @s ~ ~ ~ ~ ~

# Store head rotation (pitch)
execute store result entity @s Pose.Head[0] float 1 run data get entity @s Rotation[1]

# If body locked, store yaw rotation (current yaw - previous yaw), then reset the rotation
execute if score #body_locked {ns}.data matches 1 store result score #new_yaw {ns}.data run data get entity @s Rotation[0] 1000
execute if score #body_locked {ns}.data matches 1 run scoreboard players operation #new_yaw {ns}.data -= #previous_yaw {ns}.data
execute if score #body_locked {ns}.data matches 1 store result entity @s Pose.Head[1] float 0.001 run scoreboard players get #new_yaw {ns}.data
execute if entity @s[tag={ns}.npc.body_locked] run tp @s ~ ~ ~ ~ ~

# If body isn't locked, reset head yaw
execute if score #body_locked {ns}.data matches 0 run data modify entity @s Pose.Head[1] set value 0.0f

# Make sure the armor stand is riding the interaction entity
execute if entity @s[predicate=!{ns}:has_vehicle] run ride @s mount @n[type=interaction,tag={ns}.npc,distance=..5]
""")

	# /ofchara/summon
	write_function(f"{path}/ofchara/summon", f"""
# Summon
summon interaction ~ ~2.5 ~ {{UUID:uuid("20180612-2024-2025-2026-300000000001"),Tags:["{ns}.npc","{ns}.npc.ofchara","detached"],height:-2.5f,response:0b,Passengers:[{{id:"minecraft:armor_stand",UUID:uuid("20180612-2024-2025-2026-300000000002"),Tags:["{ns}.npc","{ns}.npc.ofchara","{ns}.npc.body_locked","detached"],Rotation:[90.0f, 0.0f],Invulnerable:true,PersistenceRequired:true,NoBasePlate:true,NoGravity:true,ShowArms:true,DisabledSlots:4144959,Pose:{{Head:[0f,0f,1f],LeftLeg:[314f,8f,0f],RightLeg:[311f,4f,0f],LeftArm:[269f,60f,0f],RightArm:[344f,27f,25f]}},equipment:{{feet:{{id:"leather_boots",count:1,components:{{dyed_color:3145472}}}},legs:{{id:"leather_leggings",count:1,components:{{dyed_color:3145472}}}},chest:{{id:"leather_chestplate",count:1,components:{{dyed_color:3145472}}}},head:{{id:"player_head",count:1,components:{{profile:{{name:"OfChara"}}}}}},mainhand:{{id:"amethyst_block",count:1}}}}}}]}}

# Register the interaction entity right click event
execute as @n[type=interaction,tag={ns}.npc] run function #bs.interaction:on_right_click {{ run: "function {ns}:npc/ofchara/on_right_click", executor: "source" }}
""")

	# /ofchara/tick
	write_function(f"{path}/ofchara/tick", f"""
# If OfChara is not present in a radius of 1 block, spawn it.
execute unless entity 20180612-2024-2025-2026-300000000002 run function {ns}:npc/ofchara/summon

# Tick function
execute as 20180612-2024-2025-2026-300000000002 at @s run function {ns}:npc/tick {{facing:"@p[gamemode=!spectator,distance=..5]"}}
""")

	# /ofchara/on_right_click
	write_function(f"{path}/ofchara/on_right_click", """
# Playsound
playsound entity.villager.ambient ambient @s ^ ^ ^1
""")
