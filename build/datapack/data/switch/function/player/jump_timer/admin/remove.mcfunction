
#> switch:player/jump_timer/admin/remove
#
# @within	switch:player/jump_timer/admin/list_line {jump:\"$(jump)\",name:\"$(name)\",time:$(time)}"},"hover_event":{"action":"show_text","value":{"text":"Edit this time (in centiseconds: 1000 = 10s)","color":"gray"}}},{"text":" [❌]","color":"red","click_event":{"action":"run_command","command":"/function switch:player/jump_timer/admin/remove {jump:\"$(jump)\",name:\"$(name)\"}"},"hover_event":{"action":"show_text","value":{"text":"Remove this time","color":"gray"}}}]
#
# @args		jump (unknown)
#			name (unknown)
#

$execute unless data storage switch:jumps $(jump)[{name:"$(name)"}] run return run tellraw @s [{"text":"No time found for $(name) on this jump.","color":"red"}]
$data remove storage switch:jumps $(jump)[{name:"$(name)"}]
$execute as @e[type=text_display,tag=switch.stat_display,tag=jump_$(jump)] run kill @s
$tellraw @s ["",{"text":"Removed ","color":"green"},{"text":"$(name)","color":"yellow"},{"text":" from this jump leaderboard.","color":"green"}]
$function switch:player/jump_timer/admin/list {jump:"$(jump)"}

