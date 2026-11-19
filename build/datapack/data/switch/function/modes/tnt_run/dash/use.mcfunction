
#> switch:modes/tnt_run/dash/use
#
# @executed	as @a[tag=!detached,gamemode=adventure,scores={switch.right_click=1..,switch.temp.dashes=1..}] & at @s
#
# @within	switch:modes/tnt_run/tick [ as @a[tag=!detached,gamemode=adventure,scores={switch.right_click=1..,switch.temp.dashes=1..}] & at @s ]
#

scoreboard players remove @s switch.temp.dashes 1
scoreboard players set $strength player_motion.api.launch 10000
function player_motion:api/launch_looking
execute at @s run playsound entity.firework_rocket.launch ambient @s
execute at @s run particle cloud ~ ~ ~ 0.3 0.3 0.3 0.05 20

