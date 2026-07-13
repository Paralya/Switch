
# ruff: noqa: E501
""" Per-player inventory layout: where each kit ROLE lands in the hotbar/offhand.

Each player owns one {ns}.layout.<role> score per role (0 = no preference, 1..9 = hotbar.0..8,
10 = weapon.offhand). Every kit's give function feeds its item table to /player/layout/resolve,
which turns those preferences into an injective item-index -> slot-string map ({ns}:layout out);
the kit's /items macro body then substitutes $(s<i>) with the chosen slot.

With every score at 0 the resolver is the identity: each item falls back to the canonical slot the
kit declares, which is byte-for-byte the slot it used before this system existed.

Resolution, per kit and per player:
- reserve:  slots that raw kit lines write to (e.g. beat_the_kings' king gaps) are taken first.
- claim:    each item flagged claim whose role is mapped takes the player's slot, first come first
            served; a colliding claim is simply dropped to the fill phase, never lost.
- fill:     every remaining item takes, in order: the slot right after its role's chosen one when
            flagged sibling (keeps potion pairs adjacent), else its canonical slot, else the lowest
            free slot. A kit never has more than 10 remappable items (build-time assert), so the
            last fallback always succeeds and no two items ever share a slot.
"""

# Imports
from stewbeet import Mem, write_function

from ..kits.roles import ROLES, TARGETS


def write_layout_functions() -> None:
	""" Write the {ns}:player/layout/* resolver and register the layout scores/storage at load. """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:player/layout"

	# Score objectives + the slot-id -> slot-string lookup (appended to {ns}:load)
	objectives: str = "\n".join(f"scoreboard objectives add {ns}.layout.{role} dummy" for role in ROLES)
	slots: str = ",".join(f'"{slot}"' for slot in TARGETS)
	write_function(f"{ns}:load", f"""
# Per-player inventory layout (one score per kit role, 0 = default slot)
{objectives}
data modify storage {ns}:layout slots set value ["",{slots}]
""")

	# /init (as a new player: make sure every layout score exists, so the resolver's copies succeed)
	write_function(f"{path}/init", "\n".join(f"scoreboard players add @s {ns}.layout.{role} 0" for role in ROLES) + "\n")

	# /resolve (as the player receiving a kit; reads {ns}:layout kit, writes {ns}:layout out)
	free_all: str = ",".join(f"s{i}:1b" for i in range(1, len(TARGETS) + 1))
	write_function(f"{path}/resolve", f"""
data modify storage {ns}:layout free set value {{{free_all}}}
data modify storage {ns}:layout out set value {{}}

# Slots written by raw kit lines are never handed out
data modify storage {ns}:layout todo set from storage {ns}:layout kit.reserved
execute if data storage {ns}:layout todo[0] run function {path}/reserve_loop

# Claim phase: mapped roles take their slot
data modify storage {ns}:layout todo set from storage {ns}:layout kit.items
execute if data storage {ns}:layout todo[0] run function {path}/claim_loop

# Fill phase: everything else falls back (sibling, then canonical, then lowest free)
data modify storage {ns}:layout todo set from storage {ns}:layout kit.items
execute if data storage {ns}:layout todo[0] run function {path}/fill_loop
""")

	# /reserve_loop + /reserve
	write_function(f"{path}/reserve_loop", f"""
function {path}/reserve with storage {ns}:layout todo[0]
data remove storage {ns}:layout todo[0]
execute if data storage {ns}:layout todo[0] run function {path}/reserve_loop
""")
	write_function(f"{path}/reserve", f"""
$data modify storage {ns}:layout free.s$(s) set value 0b
""")

	# /claim_loop + /claim
	write_function(f"{path}/claim_loop", f"""
function {path}/claim with storage {ns}:layout todo[0]
data remove storage {ns}:layout todo[0]
execute if data storage {ns}:layout todo[0] run function {path}/claim_loop
""")
	write_function(f"{path}/claim", f"""
scoreboard players set #slot {ns}.data 0
$scoreboard players set #claim {ns}.data $(claim)
$execute if score #claim {ns}.data matches 1 run scoreboard players operation #slot {ns}.data = @s {ns}.layout.$(role)
$execute if score #slot {ns}.data matches 1..10 run function {path}/try_commit {{i:$(i)}}
""")

	# /fill_loop + /place
	write_function(f"{path}/fill_loop", f"""
function {path}/place with storage {ns}:layout todo[0]
data remove storage {ns}:layout todo[0]
execute if data storage {ns}:layout todo[0] run function {path}/fill_loop
""")
	write_function(f"{path}/place", f"""
$execute if data storage {ns}:layout out.s$(i) run return 0

scoreboard players set #slot {ns}.data 0
scoreboard players set #want {ns}.data 0

# Sibling rule: the slot right after the role's chosen one (kept within the hotbar)
$scoreboard players set #sibling {ns}.data $(sibling)
$execute if score #sibling {ns}.data matches 1 run scoreboard players operation #want {ns}.data = @s {ns}.layout.$(role)
execute unless score #want {ns}.data matches 1..8 run scoreboard players set #want {ns}.data -1
scoreboard players add #want {ns}.data 1
execute if score #want {ns}.data matches 2..9 run function {path}/check_free

# Canonical slot
$execute if score #slot {ns}.data matches 0 run scoreboard players set #want {ns}.data $(canon)
execute if score #slot {ns}.data matches 0 run function {path}/check_free

# Lowest free slot
execute if score #slot {ns}.data matches 0 run function {path}/lowest_free

$execute if score #slot {ns}.data matches 1..10 run function {path}/try_commit {{i:$(i)}}
""")

	# /check_free (sets #slot to #want when that slot is still free)
	write_function(f"{path}/check_free", f"""
execute store result storage {ns}:layout v.w int 1 run scoreboard players get #want {ns}.data
function {path}/check_free_macro with storage {ns}:layout v
""")
	write_function(f"{path}/check_free_macro", f"""
$execute if data storage {ns}:layout free{{s$(w):1b}} run scoreboard players set #slot {ns}.data $(w)
""")

	# /lowest_free
	write_function(f"{path}/lowest_free", "\n".join(
		f"execute if data storage {ns}:layout free{{s{i}:1b}} run return run scoreboard players set #slot {ns}.data {i}"
		for i in range(1, len(TARGETS) + 1)
	) + "\n")

	# /try_commit (macro arg i: commit #slot to out.s<i> when the slot is still free)
	write_function(f"{path}/try_commit", f"""
execute store result storage {ns}:layout v.s int 1 run scoreboard players get #slot {ns}.data
$data modify storage {ns}:layout v.i set value $(i)
function {path}/commit with storage {ns}:layout v
""")
	write_function(f"{path}/commit", f"""
$execute unless data storage {ns}:layout free{{s$(s):1b}} run return 0
$data modify storage {ns}:layout free.s$(s) set value 0b
$data modify storage {ns}:layout out.s$(i) set from storage {ns}:layout slots[$(s)]
""")
