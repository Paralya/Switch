
#> switch:player/jump_timer/admin/list_loop
#
# @within	switch:player/jump_timer/admin/list
#			switch:player/jump_timer/admin/list_loop
#

scoreboard players add #admin_rank switch.data 1
data modify storage switch:temp jt_admin_input.name set from storage switch:temp jt_admin[0].name
data modify storage switch:temp jt_admin_input.time set from storage switch:temp jt_admin[0].time
data modify storage switch:temp jt_admin_input.display set from storage switch:temp jt_admin[0].display
function switch:player/jump_timer/admin/list_line with storage switch:temp jt_admin_input
data remove storage switch:temp jt_admin[0]
execute if data storage switch:temp jt_admin[0] run function switch:player/jump_timer/admin/list_loop

