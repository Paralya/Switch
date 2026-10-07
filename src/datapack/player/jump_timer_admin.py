""" Admin menu of the jump timers: list, set and remove the recorded times. """
# Imports
from stewbeet import Mem, write_function

from .jumps import JUMPS


# Functions
def write_jump_timer_admin_functions() -> None:
	""" Write the admin chat menu at switch:player/jump_timer/admin/* (edit/remove recorded jump times).

	Usage: /function switch:player/jump_timer/admin/menu then click on a jump to list its times,
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

