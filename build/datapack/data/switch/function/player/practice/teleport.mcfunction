
#> switch:player/practice/teleport
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/practice/respawn_click
#			switch:player/practice/respawn_fall
#

execute if entity @s[tag=switch.jump_timing] run function switch:player/jump_timer/cancel
function switch:player/practice/teleport_macro with storage switch:temp practice_cp
execute at @s run playsound switch:wormhole_potion ambient @s
execute at @s run particle portal ~ ~1 ~ 0.4 0.8 0.4 0.5 200

