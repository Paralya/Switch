
#> switch:player/jump_timer/compute_display
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/jump_timer/actionbar
#			switch:player/jump_timer/finish
#			switch:player/jump_timer/admin/set_time
#

scoreboard players operation #secs switch.data = #jump_time switch.data
scoreboard players operation #secs switch.data /= #100 switch.data
scoreboard players operation #cents switch.data = #jump_time switch.data
scoreboard players operation #cents switch.data %= #100 switch.data
scoreboard players operation #d1 switch.data = #cents switch.data
scoreboard players operation #d1 switch.data /= #10 switch.data
scoreboard players operation #d2 switch.data = #cents switch.data
scoreboard players operation #d2 switch.data %= #10 switch.data

