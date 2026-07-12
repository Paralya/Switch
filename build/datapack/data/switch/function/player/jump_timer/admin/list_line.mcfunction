
#> switch:player/jump_timer/admin/list_line
#
# @within	switch:player/jump_timer/admin/list_loop with storage switch:temp jt_admin_input
#
# @args		name (unknown)
#			display (unknown)
#			jump (unknown)
#			time (unknown)
#

$tellraw @s ["",{"text":"#","color":"gold"},{"score":{"name":"#admin_rank","objective":"switch.data"},"color":"gold"},{"text":" $(name)","color":"yellow"},{"text":" ($(display))","color":"aqua"},{"text":" [✏]","color":"gold","click_event":{"action":"suggest_command","command":"/function switch:player/jump_timer/admin/set_time {jump:\"$(jump)\",name:\"$(name)\",time:$(time)}"},"hover_event":{"action":"show_text","value":{"text":"Edit this time (in centiseconds: 1000 = 10s)","color":"gray"}}},{"text":" [❌]","color":"red","click_event":{"action":"run_command","command":"/function switch:player/jump_timer/admin/remove {jump:\"$(jump)\",name:\"$(name)\"}"},"hover_event":{"action":"show_text","value":{"text":"Remove this time","color":"gray"}}}]

