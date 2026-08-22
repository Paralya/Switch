""" End of game recap: one chat line per player, ranked, with their kills, deaths and points.

The ranking is a selection loop rather than a sort: Minecraft has no "order this selector by score",
so the best player still unlisted is picked, printed, marked, and the function calls itself again.
"""
# Imports
from stewbeet import Mem, write_function


# Functions
def write_recap() -> None:
	""" Write the shared recap functions at switch:modes/_common/recap/* """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:modes/_common/recap"

	# /start (macro: points is 1 for the modes that score their players individually, 0 otherwise)
	write_function(f"{path}/start", f"""
scoreboard objectives add {ns}.temp.kills playerKillCount
scoreboard objectives add {ns}.temp.deaths deathCount
scoreboard objectives add {ns}.temp.points dummy
$scoreboard players set #recap_points {ns}.data $(points)
""")

	# /stop
	write_function(f"{path}/stop", f"""
scoreboard objectives remove {ns}.temp.kills
scoreboard objectives remove {ns}.temp.deaths
scoreboard objectives remove {ns}.temp.points
""")

	# /show
	write_function(f"{path}/show", f"""
# A player who never scored has no value on the objective, which would leave them out of the ranking
scoreboard players add @a[tag=!detached] {ns}.temp.kills 0
scoreboard players add @a[tag=!detached] {ns}.temp.deaths 0
scoreboard players add @a[tag=!detached] {ns}.temp.points 0

# Without a point system, the kill count becomes the ranking key and the points column stays hidden
execute as @a[tag=!detached] unless score #recap_points {ns}.data matches 1 run scoreboard players operation @s {ns}.temp.points = @s {ns}.temp.kills

tag @a remove {ns}.temp.recap_done
function {ns}:translations/common/recap_header
execute if entity @a[tag=!detached] run function {path}/next
""")

	# /next
	write_function(f"{path}/next", f"""
# Print the best player still unlisted, ties broken by taking whichever the selector returns first
execute store result score #recap_left {ns}.data if entity @a[tag=!detached,tag=!{ns}.temp.recap_done]
scoreboard players set #recap_best {ns}.data -2147483648
scoreboard players operation #recap_best {ns}.data > @a[tag=!detached,tag=!{ns}.temp.recap_done] {ns}.temp.points
execute as @a[tag=!detached,tag=!{ns}.temp.recap_done] if score @s {ns}.temp.points = #recap_best {ns}.data run tag @s add {ns}.temp.recap_tied
execute as @a[tag={ns}.temp.recap_tied,limit=1] run function {path}/line
tag @a remove {ns}.temp.recap_tied

# Recurse only while the list shrinks: a player the round failed to rank would loop forever
execute store result score #recap_now {ns}.data if entity @a[tag=!detached,tag=!{ns}.temp.recap_done]
execute if score #recap_now {ns}.data matches 1.. if score #recap_now {ns}.data < #recap_left {ns}.data run function {path}/next
""")

	# /line (executed as the player being listed)
	write_function(f"{path}/line", f"""
tag @s add {ns}.temp.recap_done
execute if score #recap_points {ns}.data matches 1 run function {ns}:translations/common/recap_line_points
execute unless score #recap_points {ns}.data matches 1 run function {ns}:translations/common/recap_line
""")

