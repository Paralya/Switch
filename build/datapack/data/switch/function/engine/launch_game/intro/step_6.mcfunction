
#> switch:engine/launch_game/intro/step_6
#
# @within	switch:engine/launch_game/intro/tick
#

execute as @a run function switch:engine/launch_game/intro/remove
scoreboard players set #intro_active switch.data 0
execute if score #engine_state switch.data matches 3 if data storage switch:main {current_game:"laser_game"} run posteffect add @a[tag=!detached] switch:ambiance/neon
execute if score #engine_state switch.data matches 3 if data storage switch:main {current_game:"warden_escape"} run posteffect add @a[tag=!detached] switch:ambiance/dark
scoreboard players add #intro_step switch.data 1

