
#> switch:player/jump_timer/admin/remove
#
# @within	string in switch:player/jump_timer/admin/list_line {jump:\"$(jump)\",name:\"$(name)\"}
#
# @args		jump (string)
#			name (string)
#

$execute unless data storage switch:jumps $(jump)[{name:"$(name)"}] run return run tellraw @s [{"text":"No time found for $(name) on this jump.","color":"red"}]
$data remove storage switch:jumps $(jump)[{name:"$(name)"}]
$execute as @e[type=text_display,tag=switch.stat_display,tag=jump_$(jump)] run kill @s
$tellraw @s ["",{"text":"Removed ","color":"green"},{"text":"$(name)","color":"yellow"},{"text":" from this jump leaderboard.","color":"green"}]
$function switch:player/jump_timer/admin/list {jump:"$(jump)"}

