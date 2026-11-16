""" The functions every learned kit layout shares, under {ns}:player/layout/.

Temporaries are fake players of {ns}.data: #f0..#f9 flag the slots a pass already took, #t and #k are slots (index + 1 into LEARNED_SLOTS) being moved or tested, #m0..#m8 the slot of each group in the memory, #n0..#n8 the slot found for it, #p a packed memory.
The per-kit functions they serve are written by LearnedKit.write_functions().
"""
# Imports
from stewbeet import Mem, write_function

from ..kits import LEARNED_SLOTS, LearnedKit


# Functions
def write_layout_functions() -> None:
	""" Write {ns}:player/layout/*, after every kit was written so the learn dispatch knows them all. """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:player/layout"
	slots: range = range(len(LEARNED_SLOTS))
	slot_range: list[str] = [f'{{type:"minecraft:slot_range",slots:"{slot}"}}' for slot in LEARNED_SLOTS]

	kits: list[LearnedKit] = LearnedKit.registry()
	objectives: str = "".join(f"scoreboard objectives add {kit.objective} dummy {{\"text\":\"{kit.key}\"}}\n" for kit in kits)
	known: str = ",".join(f'{{n:"{kit.objective}"}}' for kit in kits)
	current: str = "".join(f'data remove storage {ns}:layout stale[{{n:"{kit.objective}"}}]\n' for kit in kits)
	write_function(f"{ns}:load", f"""
# Learned kit layouts: one memory objective per kit, the active kit index, ticks before learning
{objectives}scoreboard objectives add {ns}.layout.kit dummy
scoreboard objectives add {ns}.layout.cd dummy

# Memories of kits that changed since the last load are dropped with their objective
data modify storage {ns}:layout stale set from storage {ns}:layout objectives
data modify storage {ns}:layout objectives set value [{known}]
{current}execute if data storage {ns}:layout stale[0] run function {path}/prune with storage {ns}:layout stale[0]
""")
	write_function(f"{path}/prune", f"""
$scoreboard objectives remove $(n)
data remove storage {ns}:layout stale[0]
execute if data storage {ns}:layout stale[0] run function {path}/prune with storage {ns}:layout stale[0]
""")

	write_function(f"{path}/username_change", "".join(
		f"$execute if score $(old_username) {kit.objective} matches 0.. run scoreboard players operation $(username) {kit.objective} = $(old_username) {kit.objective}\n"
		for kit in kits))

	unpack: str = "".join(f"""scoreboard players operation #m{j} {ns}.data = #p {ns}.data
scoreboard players operation #m{j} {ns}.data %= #10 {ns}.data
scoreboard players add #m{j} {ns}.data 1
scoreboard players operation #p {ns}.data /= #10 {ns}.data
""" for j in range(9))
	write_function(f"{path}/unpack", unpack)

	write_function(f"{path}/clear_flags", "".join(f"scoreboard players set #f{k} {ns}.data 0\n" for k in slots))
	write_function(f"{path}/flag", "".join(f"execute if score #t {ns}.data matches {k + 1} run return run scoreboard players set #f{k} {ns}.data 1\n" for k in slots))
	write_function(f"{path}/is_free", "".join(f"execute if score #t {ns}.data matches {k + 1} if score #f{k} {ns}.data matches 0 run return 1\n" for k in slots) + "return 0\n")

	# Two slots swap in one command, since item replace reads every source before writing
	write_function(f"{path}/swap", "".join(f"execute if score #t {ns}.data matches {t + 1} run return run function {path}/swap/{t}\n" for t in slots))
	for t in slots:
		write_function(f"{path}/swap/{t}", "".join(
			f"execute if score #k {ns}.data matches {k + 1} run return run item replace entity @s [{slot_range[t]},{slot_range[k]}] from entity @s [{slot_range[k]},{slot_range[t]}]\n"
			for k in slots if k != t))

	# /free/<c>: first slot no pass took, the declared slot c first
	for c in slots:
		write_function(f"{path}/free/{c}", "".join(f"execute if score #f{k} {ns}.data matches 0 run return {k + 1}\n" for k in [c, *(k for k in slots if k != c)]))

	write_function(f"{path}/learn", "".join(
		f"execute if score @s {ns}.layout.kit matches {index} run return run function {kit.path}/layout/learn\n"
		for index, kit in enumerate(kits, start=1)))

	# /tick (as a dirty player): learn a second after the first change, so a whole rearrangement is one pass
	write_function(f"{path}/tick", f"""
scoreboard players remove @s {ns}.layout.cd 1
execute if score @s {ns}.layout.cd matches 1.. run return 0
tag @s remove {ns}.layout.dirty
function {path}/learn
""")

	# /deactivate (as a player whose kit inventory is about to be replaced): save what the player moved, then stop learning
	write_function(f"{path}/deactivate", f"""
execute if entity @s[tag={ns}.layout.dirty] run function {path}/learn
tag @s remove {ns}.layout.active
tag @s remove {ns}.layout.dirty
scoreboard players set @s {ns}.layout.kit 0
scoreboard players set @s {ns}.layout.cd 0
""")

