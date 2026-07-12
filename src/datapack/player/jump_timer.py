
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

# Lobby jumps: (timer id, key, display name, color, start line block, end (x, y, z, max_distance))
# The timer ids match the {ns}.lobby_respawn scores, the names/colors match the lobby inventory
# items, and the start line blocks are hardcoded 1 block in front of the jump tp points
# (see tick_detach respawn coords)
JUMPS: list[tuple[int, str, str, str, tuple[int, int, int], tuple[int, int, int, int]]] = [
	(1, "green", "Green Jump", "green", (-5, 71, -10), (-8, 81, -22, 2)),
	(2, "white", "White Jump", "white", (6, 71, -10), (22, 88, 0, 2)),
	(3, "blue", "Blue Jump", "blue", (0, 76, -28), (0, 82, -39, 2)),
	(4, "yellow", "Yellow Jump", "yellow", (11, 75, 23), (63, 88, 10, 2)),
	(5, "red", "Red Jump", "red", (-14, 74, 13), (-26, 91, 15, 2)),
	(6, "brown", "Brown Jump", "#8B4513", (-36, 72, -14), (-20, 75, -78, 2)),
	(7, "purple", "Purple Jump", "dark_purple", (-12, 74, 36), (-42, 94, 32, 2)),
	(8, "dripstone", "Dripstone Jump", "gold", (13, 73, 48), (34, 82, 47, 1)),
	(9, "pink", "Pink Jump", "light_purple", (-47, 76, 15), (-44, 93, 27, 2)),
	(10, "bricks", "Bricks Jump", "#BC4A3C", (-87, 70, 0), (-123, 79, -11, 2)),
	(11, "obsidian", "Obsidian Jump", "dark_gray", (51, 75, -14), (36, 84, -73, 2)),
	(12, "duality", "Duality Jump", "#B87333", (12, 75, 112), (44, 86, 84, 2)),  # end also requires the two pressure plates (special-cased in tick_detach)
	(13, "graviglitch", "GraviGlitch Jump", "#676767", (-12, 74, 91), (-83, 100, 71, 2)),
]


def write_jump_timer_functions() -> None:
	""" Write the jump timer functions at switch:player/jump_timer/* (best times leaderboards for the lobby jumps).

	Crossing the start line (1 block in front of the jump tp) starts/restarts the timer, shown in the actionbar.
	The time is measured by a per-player /stopwatch (wall clock, lag resistant) and stored in centiseconds.
	Any teleportation cancels the timer (cinematic launch, practice checkpoints, detach) and finishing a jump
	requires an active timer for that jump. Best times are stored sorted in the "{ns}:jumps" storage: a new
	best time is inserted at the correct position directly instead of sorting the whole list.
	Admins can edit the leaderboards with a chat menu: /function {ns}:player/jump_timer/admin/menu
	"""
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:player/jump_timer"
	write_jump_timer_translations()

	# Objectives and storage setup (appended to switch:load)
	storage_init: str = "\n".join(
		f"execute unless data storage {ns}:jumps {key} run data modify storage {ns}:jumps {key} set value []"
		for _, key, _, _, _, _ in JUMPS
	)
	write_function(f"{ns}:load", f"""
# Jump timers (best times leaderboards)
scoreboard objectives add {ns}.jump_timer dummy
scoreboard objectives add {ns}.jump_timer_id dummy
{storage_init}

# One-time migration: the first version stored best times in ticks (20/s), we now use centiseconds
# (100/s). Convert every existing entry once (ticks * 5 = centiseconds). The guard score persists.
execute unless score #jump_timer_cs_migrated {ns}.data matches 1 run function {ns}:player/jump_timer/migrate
scoreboard players set #jump_timer_cs_migrated {ns}.data 1
""")

	# /migrate (one-time ticks -> centiseconds conversion of every leaderboard entry)
	migrate_lines: str = "\n".join(
		f"data modify storage {ns}:temp jt_mig_src set from storage {ns}:jumps {key}\n"
		f"data modify storage {ns}:temp jt_mig_dst set value []\n"
		f"execute if data storage {ns}:temp jt_mig_src[0] run function {ns}:player/jump_timer/migrate_loop\n"
		f"data modify storage {ns}:jumps {key} set from storage {ns}:temp jt_mig_dst"
		for _, key, _, _, _, _ in JUMPS
	)
	write_function(f"{path}/migrate", f"""
{migrate_lines}
""")

	# /migrate_loop (multiply the first entry's time by 5, then move it to the destination list)
	write_function(f"{path}/migrate_loop", f"""
execute store result score #mig_time {ns}.data run data get storage {ns}:temp jt_mig_src[0].time
scoreboard players operation #mig_time {ns}.data *= #5 {ns}.data
execute store result storage {ns}:temp jt_mig_src[0].time int 1 run scoreboard players get #mig_time {ns}.data
data modify storage {ns}:temp jt_mig_dst append from storage {ns}:temp jt_mig_src[0]
data remove storage {ns}:temp jt_mig_src[0]
execute if data storage {ns}:temp jt_mig_src[0] run function {ns}:player/jump_timer/migrate_loop
""")

	# /tick (called by {ns}:player/tick_detach, before the jumps completion checks)
	start_lines: str = "\n".join(
		f"execute if entity @s[x={x},y={y},z={z},dx=0,dy=1,dz=0,gamemode=!creative,gamemode=!spectator,tag=!{ns}.practice] run function {ns}:player/jump_timer/start {{id:{jump_id}}}"
		for jump_id, _, _, _, (x, y, z), _ in JUMPS
	)
	write_function(f"{path}/tick", f"""
# Cancel the timer of practice mode players
execute if entity @s[tag={ns}.jump_timing,tag={ns}.practice] run function {ns}:player/jump_timer/cancel

# Start/restart the timer when crossing a start line (1 block in front of the jump tp)
{start_lines}

# Update the timer from the stopwatch and show it in the actionbar
execute if entity @s[tag={ns}.jump_timing] run function {ns}:player/jump_timer/query
execute if entity @s[tag={ns}.jump_timing] run function {ns}:player/jump_timer/actionbar
""")

	# /start (each player has its own stopwatch "{ns}:jump_timer/<player id>", wall clock so lag resistant)
	write_function(f"{path}/start", f"""
$scoreboard players set @s {ns}.jump_timer_id $(id)
scoreboard players set @s {ns}.jump_timer 0
tag @s add {ns}.jump_timing
execute store result storage {ns}:temp jt_sw.pid int 1 run scoreboard players get @s {ns}.id
function {ns}:player/jump_timer/stopwatch_start with storage {ns}:temp jt_sw
""")
	write_function(f"{path}/stopwatch_start", f"""
$stopwatch create {ns}:jump_timer/$(pid)
$stopwatch restart {ns}:jump_timer/$(pid)
""")

	# /query (stores the elapsed time of the player stopwatch in centiseconds)
	write_function(f"{path}/query", f"""
execute store result storage {ns}:temp jt_sw.pid int 1 run scoreboard players get @s {ns}.id
function {ns}:player/jump_timer/stopwatch_query with storage {ns}:temp jt_sw
""")
	write_function(f"{path}/stopwatch_query", f"""
$execute store result score @s {ns}.jump_timer run stopwatch query {ns}:jump_timer/$(pid) 100
""")

	# /cancel (called by anything that teleports a player: cinematic launch, practice checkpoints, detach)
	write_function(f"{path}/cancel", f"""
scoreboard players set @s {ns}.jump_timer_id 0
scoreboard players set @s {ns}.jump_timer 0
tag @s remove {ns}.jump_timing
execute store result storage {ns}:temp jt_sw.pid int 1 run scoreboard players get @s {ns}.id
function {ns}:player/jump_timer/stopwatch_remove with storage {ns}:temp jt_sw
""")
	write_function(f"{path}/stopwatch_remove", f"""
$stopwatch remove {ns}:jump_timer/$(pid)
""")

	# /compute_display (#jump_time centiseconds -> #secs seconds and #d1 #d2 centiseconds digits)
	write_function(f"{path}/compute_display", f"""
scoreboard players operation #secs {ns}.data = #jump_time {ns}.data
scoreboard players operation #secs {ns}.data /= #100 {ns}.data
scoreboard players operation #cents {ns}.data = #jump_time {ns}.data
scoreboard players operation #cents {ns}.data %= #100 {ns}.data
scoreboard players operation #d1 {ns}.data = #cents {ns}.data
scoreboard players operation #d1 {ns}.data /= #10 {ns}.data
scoreboard players operation #d2 {ns}.data = #cents {ns}.data
scoreboard players operation #d2 {ns}.data %= #10 {ns}.data
""")

	# /actionbar (shows the jump the timer is linked to, with the same name/color as its lobby item)
	actionbar_lines: str = "\n".join(
		f'execute if score @s {ns}.jump_timer_id matches {jump_id} run title @s actionbar [{{"text":"⌛ ","color":"gold"}},{{"text":"{name}","color":"{color}"}},{{"text":" : ","color":"gray"}},{{"score":{{"name":"#secs","objective":"{ns}.data"}},"color":"yellow"}},{{"text":".","color":"yellow"}},{{"score":{{"name":"#d1","objective":"{ns}.data"}},"color":"yellow"}},{{"score":{{"name":"#d2","objective":"{ns}.data"}},"color":"yellow"}},{{"text":"s","color":"yellow"}}]'
		for jump_id, _, name, color, _, _ in JUMPS
	)
	write_function(f"{path}/actionbar", f"""
scoreboard players operation #jump_time {ns}.data = @s {ns}.jump_timer
function {ns}:player/jump_timer/compute_display
{actionbar_lines}
""")

	# /finish (macro: jump key, called by tick_detach when reaching a jump end with an active timer for it)
	write_function(f"{path}/finish", f"""
# Grant the jump completion advancement
$advancement grant @s only {ns}:visible/jump_$(jump)

# Stop the timer (querying the exact final time) and compute the time display digits
function {ns}:player/jump_timer/query
scoreboard players operation #jump_time {ns}.data = @s {ns}.jump_timer
function {ns}:player/jump_timer/actionbar
function {ns}:player/jump_timer/cancel
function {ns}:player/jump_timer/compute_display

# Get the username of the player
setblock 0 11 0 air
setblock 0 11 0 yellow_shulker_box
loot insert 0 11 0 loot {ns}:get_username
data modify storage {ns}:temp jt_input set value {{jump:"",player:"",time:0,s:0,d1:0,d2:0}}
$data modify storage {ns}:temp jt_input.jump set value "$(jump)"
data modify storage {ns}:temp jt_input.player set from block 0 11 0 Items[0].components."minecraft:profile".name
setblock 0 11 0 air

# Fill the time values and update the leaderboard
execute store result storage {ns}:temp jt_input.time int 1 run scoreboard players get #jump_time {ns}.data
execute store result storage {ns}:temp jt_input.s int 1 run scoreboard players get #secs {ns}.data
execute store result storage {ns}:temp jt_input.d1 int 1 run scoreboard players get #d1 {ns}.data
execute store result storage {ns}:temp jt_input.d2 int 1 run scoreboard players get #d2 {ns}.data
function {ns}:player/jump_timer/record with storage {ns}:temp jt_input
""")

	# /record (macro: jump, player, time, s, d1, d2)
	write_function(f"{path}/record", f"""
# Build the display string of the new time
$data modify storage {ns}:temp jt_input.display set value "$(s).$(d1)$(d2)s"

# Get the current best time of the player (if any)
$scoreboard players set #new_time {ns}.data $(time)
scoreboard players set #old_time {ns}.data 2147483647
$execute if data storage {ns}:jumps $(jump)[{{name:"$(player)"}}] store result score #old_time {ns}.data run data get storage {ns}:jumps $(jump)[{{name:"$(player)"}}].time

# If the new time is not better, keep the old one and stop here
$execute if score #new_time {ns}.data >= #old_time {ns}.data run data modify storage {ns}:temp jt_input.old_display set from storage {ns}:jumps $(jump)[{{name:"$(player)"}}].display
execute if score #new_time {ns}.data >= #old_time {ns}.data run playsound block.note_block.pling ambient @s
execute if score #new_time {ns}.data >= #old_time {ns}.data run return run function {ns}:player/translations/jump_timer_no_record

# Insert the new time at the correct position (sets #rank) and congratulate the player
function {ns}:player/jump_timer/insert with storage {ns}:temp jt_input
playsound entity.player.levelup ambient @s
function {ns}:player/translations/jump_timer_record
""")

	# /insert (macro: jump, player, time, s, d1, d2; shared by /record and /admin/set_time)
	write_function(f"{path}/insert", f"""
# Remove the old entry of the player, then walk the sorted list to find the insertion position
$scoreboard players set #new_time {ns}.data $(time)
$data remove storage {ns}:jumps $(jump)[{{name:"$(player)"}}]
$data modify storage {ns}:temp jt_rest set from storage {ns}:jumps $(jump)
data modify storage {ns}:temp jt_new set value []
execute if data storage {ns}:temp jt_rest[0] run function {ns}:player/jump_timer/insert_loop

# Insert the new time at the found position (#rank), then append the remaining slower times
$data modify storage {ns}:temp jt_new append value {{name:"$(player)",time:$(time),display:"$(s).$(d1)$(d2)s"}}
execute store result score #rank {ns}.data if data storage {ns}:temp jt_new[]
data modify storage {ns}:temp jt_new append from storage {ns}:temp jt_rest[]
$data modify storage {ns}:jumps $(jump) set from storage {ns}:temp jt_new

# Kill the best times display to force a refresh
$execute as @e[type=text_display,tag={ns}.stat_display,tag=jump_$(jump)] run kill @s
""")

	# /insert_loop (append the faster or equal times to the new list, stop at the first slower one)
	write_function(f"{path}/insert_loop", f"""
execute store result score #cur_time {ns}.data run data get storage {ns}:temp jt_rest[0].time
execute if score #cur_time {ns}.data > #new_time {ns}.data run return 1
data modify storage {ns}:temp jt_new append from storage {ns}:temp jt_rest[0]
data remove storage {ns}:temp jt_rest[0]
execute if data storage {ns}:temp jt_rest[0] run function {ns}:player/jump_timer/insert_loop
""")

	# /username_change (macro: username, old_username; called on login by {ns}:player/username_change/update_everything)
	rename_lines: str = "\n".join(
		f'$data remove storage {ns}:jumps {key}[{{name:"$(username)"}}]\n'
		f'$execute if data storage {ns}:jumps {key}[{{name:"$(old_username)"}}] run data modify storage {ns}:jumps {key}[{{name:"$(old_username)"}}].name set value "$(username)"\n'
		f'$execute if data storage {ns}:jumps {key}[{{name:"$(username)"}}] run kill @e[type=text_display,tag={ns}.stat_display,tag=jump_{key}]'
		for _, key, _, _, _, _ in JUMPS
	)
	write_function(f"{path}/username_change", f"""
# Move the best times of the old username to the new one (killed displays get resummoned refreshed)
{rename_lines}
""")

	write_jump_timer_admin_functions()


def write_jump_timer_admin_functions() -> None:
	""" Write the admin chat menu at switch:player/jump_timer/admin/* (edit/remove recorded jump times).

	Usage (op only): /function switch:player/jump_timer/admin/menu then click on a jump to list its times,
	each entry having an edit button (suggests a set_time command, time in centiseconds) and a remove button.
	"""
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:player/jump_timer/admin"

	# /menu (clickable list of the jumps)
	menu_lines: str = "\n".join(
		f'tellraw @s ["",{{"text":"➤ ","color":"gold"}},{{"text":"[{name}]","color":"{color}","click_event":{{"action":"run_command","command":"/function {ns}:player/jump_timer/admin/list {{jump:\\"{key}\\"}}"}},"hover_event":{{"action":"show_text","value":{{"text":"Show the recorded times of this jump","color":"gray"}}}}}}]'
		for _, key, name, color, _, _ in JUMPS
	)
	write_function(f"{path}/menu", f"""
tellraw @s [{{"text":"--- Jump leaderboards (admin) ---","color":"gold","bold":true}}]
{menu_lines}
""")

	# /list (macro: jump; prints every recorded time with its rank and edit/remove buttons)
	write_function(f"{path}/list", f"""
$tellraw @s ["",{{"text":"--- Best times: ","color":"gold"}},{{"text":"$(jump)","color":"yellow"}},{{"text":" ---","color":"gold"}}]
$data modify storage {ns}:temp jt_admin set from storage {ns}:jumps $(jump)
scoreboard players set #admin_rank {ns}.data 0
$data modify storage {ns}:temp jt_admin_input set value {{jump:"$(jump)"}}
execute if data storage {ns}:temp jt_admin[0] run function {ns}:player/jump_timer/admin/list_loop
$execute unless data storage {ns}:jumps $(jump)[0] run tellraw @s [{{"text":"(no recorded time)","color":"gray","italic":true}}]

# Suggest adding a player manually and going back to the jumps menu
$tellraw @s ["",{{"text":"[+ Add a time]","color":"green","click_event":{{"action":"suggest_command","command":"/function {ns}:player/jump_timer/admin/set_time {{jump:\\"$(jump)\\",name:\\"Steve\\",time:1000}}"}},"hover_event":{{"action":"show_text","value":{{"text":"Add/edit a player time (in centiseconds: 1000 = 10s)","color":"gray"}}}}}},{{"text":"   "}},{{"text":"[⬅ Back]","color":"gold","click_event":{{"action":"run_command","command":"/function {ns}:player/jump_timer/admin/menu"}}}}]
""")

	# /list_loop (walk the copied list, printing one line per entry)
	write_function(f"{path}/list_loop", f"""
scoreboard players add #admin_rank {ns}.data 1
data modify storage {ns}:temp jt_admin_input.name set from storage {ns}:temp jt_admin[0].name
data modify storage {ns}:temp jt_admin_input.time set from storage {ns}:temp jt_admin[0].time
data modify storage {ns}:temp jt_admin_input.display set from storage {ns}:temp jt_admin[0].display
function {ns}:player/jump_timer/admin/list_line with storage {ns}:temp jt_admin_input
data remove storage {ns}:temp jt_admin[0]
execute if data storage {ns}:temp jt_admin[0] run function {ns}:player/jump_timer/admin/list_loop
""")

	# /list_line (macro: jump, name, time, display)
	write_function(f"{path}/list_line", f"""
$tellraw @s ["",{{"text":"#","color":"gold"}},{{"score":{{"name":"#admin_rank","objective":"{ns}.data"}},"color":"gold"}},{{"text":" $(name)","color":"yellow"}},{{"text":" ($(display))","color":"aqua"}},{{"text":" [✏]","color":"gold","click_event":{{"action":"suggest_command","command":"/function {ns}:player/jump_timer/admin/set_time {{jump:\\"$(jump)\\",name:\\"$(name)\\",time:$(time)}}"}},"hover_event":{{"action":"show_text","value":{{"text":"Edit this time (in centiseconds: 1000 = 10s)","color":"gray"}}}}}},{{"text":" [❌]","color":"red","click_event":{{"action":"run_command","command":"/function {ns}:player/jump_timer/admin/remove {{jump:\\"$(jump)\\",name:\\"$(name)\\"}}"}},"hover_event":{{"action":"show_text","value":{{"text":"Remove this time","color":"gray"}}}}}}]
""")

	# /set_time (macro: jump, name, time in centiseconds; adds the player or moves their existing time)
	write_function(f"{path}/set_time", f"""
# Compute the display digits from the centiseconds, then insert at the correct position
$scoreboard players set #jump_time {ns}.data $(time)
function {ns}:player/jump_timer/compute_display
data modify storage {ns}:temp jt_input set value {{jump:"",player:"",time:0,s:0,d1:0,d2:0}}
$data modify storage {ns}:temp jt_input.jump set value "$(jump)"
$data modify storage {ns}:temp jt_input.player set value "$(name)"
$data modify storage {ns}:temp jt_input.time set value $(time)
execute store result storage {ns}:temp jt_input.s int 1 run scoreboard players get #secs {ns}.data
execute store result storage {ns}:temp jt_input.d1 int 1 run scoreboard players get #d1 {ns}.data
execute store result storage {ns}:temp jt_input.d2 int 1 run scoreboard players get #d2 {ns}.data
function {ns}:player/jump_timer/insert with storage {ns}:temp jt_input

# Feedback, then show the updated list
$tellraw @s ["",{{"text":"Time of ","color":"green"}},{{"text":"$(name)","color":"yellow"}},{{"text":" set to ","color":"green"}},{{"score":{{"name":"#secs","objective":"{ns}.data"}},"color":"yellow"}},{{"text":".","color":"yellow"}},{{"score":{{"name":"#d1","objective":"{ns}.data"}},"color":"yellow"}},{{"score":{{"name":"#d2","objective":"{ns}.data"}},"color":"yellow"}},{{"text":"s","color":"yellow"}},{{"text":" (rank #","color":"green"}},{{"score":{{"name":"#rank","objective":"{ns}.data"}},"color":"gold"}},{{"text":")","color":"green"}}]
$function {ns}:player/jump_timer/admin/list {{jump:"$(jump)"}}
""")

	# /remove (macro: jump, name)
	write_function(f"{path}/remove", f"""
$execute unless data storage {ns}:jumps $(jump)[{{name:"$(name)"}}] run return run tellraw @s [{{"text":"No time found for $(name) on this jump.","color":"red"}}]
$data remove storage {ns}:jumps $(jump)[{{name:"$(name)"}}]
$execute as @e[type=text_display,tag={ns}.stat_display,tag=jump_$(jump)] run kill @s
$tellraw @s ["",{{"text":"Removed ","color":"green"}},{{"text":"$(name)","color":"yellow"}},{{"text":" from this jump leaderboard.","color":"green"}}]
$function {ns}:player/jump_timer/admin/list {{jump:"$(jump)"}}
""")


def write_jump_timer_translations() -> None:
	""" Write the jump timer translation functions at switch:player/translations/jump_timer_* """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:player/translations"

	# /jump_timer_record
	write_function(f"{path}/jump_timer_record", f"""
# French
tellraw @s[scores={{{ns}.lang=0}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Jump terminé en ","color":"green"}},{{"nbt":"jt_input.display","storage":"{ns}:temp","interpret":true,"color":"yellow"}},{{"text":" ! Nouveau record personnel : ","color":"green"}},{{"text":"#","color":"gold"}},{{"score":{{"name":"#rank","objective":"{ns}.data"}},"color":"gold"}},{{"text":" du classement !","color":"green"}}]

# English
tellraw @s[scores={{{ns}.lang=1}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Jump completed in ","color":"green"}},{{"nbt":"jt_input.display","storage":"{ns}:temp","interpret":true,"color":"yellow"}},{{"text":"! New personal best: ","color":"green"}},{{"text":"#","color":"gold"}},{{"score":{{"name":"#rank","objective":"{ns}.data"}},"color":"gold"}},{{"text":" on the leaderboard!","color":"green"}}]
""")

	# /jump_timer_no_record
	write_function(f"{path}/jump_timer_no_record", f"""
# French
tellraw @s[scores={{{ns}.lang=0}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Jump terminé en ","color":"gray"}},{{"nbt":"jt_input.display","storage":"{ns}:temp","interpret":true,"color":"yellow"}},{{"text":" (record personnel : ","color":"gray"}},{{"nbt":"jt_input.old_display","storage":"{ns}:temp","interpret":true,"color":"yellow"}},{{"text":")","color":"gray"}}]

# English
tellraw @s[scores={{{ns}.lang=1}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Jump completed in ","color":"gray"}},{{"nbt":"jt_input.display","storage":"{ns}:temp","interpret":true,"color":"yellow"}},{{"text":" (personal best: ","color":"gray"}},{{"nbt":"jt_input.old_display","storage":"{ns}:temp","interpret":true,"color":"yellow"}},{{"text":")","color":"gray"}}]
""")

