
#> switch:player/jump_timer/admin/set_time
#
# @within	switch:player/jump_timer/admin/list {jump:\"$(jump)\",name:\"Steve\",time:1000}"},"hover_event":{"action":"show_text","value":{"text":"Add/edit a player time (in centiseconds: 1000 = 10s)","color":"gray"}}},{"text":"   "},{"text":"[⬅ Back]","color":"gold","click_event":{"action":"run_command","command":"/function switch:player/jump_timer/admin/menu"}}]
#			switch:player/jump_timer/admin/list_line {jump:\"$(jump)\",name:\"$(name)\",time:$(time)}"},"hover_event":{"action":"show_text","value":{"text":"Edit this time (in centiseconds: 1000 = 10s)","color":"gray"}}},{"text":" [❌]","color":"red","click_event":{"action":"run_command","command":"/function switch:player/jump_timer/admin/remove {jump:\"$(jump)\",name:\"$(name)\"}"},"hover_event":{"action":"show_text","value":{"text":"Remove this time","color":"gray"}}}]
#
# @args		time (int)
#			jump (unknown)
#			name (unknown)
#

# Compute the display digits from the centiseconds, then insert at the correct position
$scoreboard players set #jump_time switch.data $(time)
function switch:player/jump_timer/compute_display
data modify storage switch:temp jt_input set value {jump:"",player:"",time:0,s:0,d1:0,d2:0}
$data modify storage switch:temp jt_input.jump set value "$(jump)"
$data modify storage switch:temp jt_input.player set value "$(name)"
$data modify storage switch:temp jt_input.time set value $(time)
execute store result storage switch:temp jt_input.s int 1 run scoreboard players get #secs switch.data
execute store result storage switch:temp jt_input.d1 int 1 run scoreboard players get #d1 switch.data
execute store result storage switch:temp jt_input.d2 int 1 run scoreboard players get #d2 switch.data
function switch:player/jump_timer/insert with storage switch:temp jt_input

# Feedback, then show the updated list
$tellraw @s ["",{"text":"Time of ","color":"green"},{"text":"$(name)","color":"yellow"},{"text":" set to ","color":"green"},{"score":{"name":"#secs","objective":"switch.data"},"color":"yellow"},{"text":".","color":"yellow"},{"score":{"name":"#d1","objective":"switch.data"},"color":"yellow"},{"score":{"name":"#d2","objective":"switch.data"},"color":"yellow"},{"text":"s","color":"yellow"},{"text":" (rank #","color":"green"},{"score":{"name":"#rank","objective":"switch.data"},"color":"gold"},{"text":")","color":"green"}]
$function switch:player/jump_timer/admin/list {jump:"$(jump)"}

