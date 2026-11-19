
#> switch:modes/tnt_run/dash/use
#
# @executed	as @a[tag=!detached,gamemode=adventure,scores={switch.right_click=1..,switch.temp.dashes=1..}] & at @s
#
# @within	switch:modes/tnt_run/tick [ as @a[tag=!detached,gamemode=adventure,scores={switch.right_click=1..,switch.temp.dashes=1..}] & at @s ]
#

scoreboard players remove @s switch.temp.dashes 1

tp @s @s
data modify storage switch:main Rotation set from entity @s Rotation
execute positioned 0.0 0.0 0.0 summon marker run function switch:modes/tnt_run/dash/direction

scoreboard players operation $x player_motion.api.launch = #dash_x switch.data
scoreboard players set $y player_motion.api.launch 12000
scoreboard players operation $z player_motion.api.launch = #dash_z switch.data
function player_motion:api/launch_xyz

execute at @s run playsound entity.firework_rocket.launch ambient @s
execute at @s run particle cloud ~ ~ ~ 0.3 0.3 0.3 0.05 20

