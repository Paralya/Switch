
#> switch:modes/tnt_run/dash/setup_marker
#
# @executed	as @a[tag=!detached,gamemode=adventure] & at @s
#
# @within	switch:modes/tnt_run/is_on_ground
#

tag @s add switch.tnt_run
scoreboard players operation @s switch.id = #player_id switch.id

