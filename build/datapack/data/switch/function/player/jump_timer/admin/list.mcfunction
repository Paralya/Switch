
#> switch:player/jump_timer/admin/list
#
# @within	string in switch:player/jump_timer/admin/menu
#			switch:player/jump_timer/admin/set_time {jump:"$(jump)"}
#			switch:player/jump_timer/admin/remove {jump:"$(jump)"}
#
# @args		jump (string)
#

$tellraw @s ["",{"text":"--- Best times: ","color":"gold"},{"text":"$(jump)","color":"yellow"},{"text":" ---","color":"gold"}]
$data modify storage switch:temp jt_admin set from storage switch:jumps $(jump)
scoreboard players set #admin_rank switch.data 0
$data modify storage switch:temp jt_admin_input set value {jump:"$(jump)"}
execute if data storage switch:temp jt_admin[0] run function switch:player/jump_timer/admin/list_loop
$execute unless data storage switch:jumps $(jump)[0] run tellraw @s [{"text":"(no recorded time)","color":"gray","italic":true}]

# Suggest adding a player manually and going back to the jumps menu
$tellraw @s ["",{"text":"[+ Add a time]","color":"green","click_event":{"action":"suggest_command","command":"/function switch:player/jump_timer/admin/set_time {jump:\"$(jump)\",name:\"Steve\",time:1000}"},"hover_event":{"action":"show_text","value":{"text":"Add/edit a player time (in centiseconds: 1000 = 10s)","color":"gray"}}},{"text":"   "},{"text":"[⬅ Back]","color":"gold","click_event":{"action":"run_command","command":"/function switch:player/jump_timer/admin/menu"}}]

