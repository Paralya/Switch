
#> switch:player/jump_timer/on_cinematic
#
# @within	#cinemalya:v1/signals/on_launch
#

execute if entity @s[tag=switch.jump_timing] run function switch:player/jump_timer/cancel

