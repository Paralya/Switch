
#> switch:modes/rush_the_point/advancements/break_obsidian
#
# @within	advancement switch:rush_the_point/break_obsidian
#

advancement revoke @s only switch:rush_the_point/break_obsidian
execute if score #engine_state switch.data matches 3 if data storage switch:main {current_game:"rush_the_point"} run function switch:modes/rush_the_point/advancements/break_obsidian_confirm

