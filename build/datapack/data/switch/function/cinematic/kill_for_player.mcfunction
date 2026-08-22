
#> switch:cinematic/kill_for_player
#
# @executed	as @a[tag=!detached]
#
# @within	switch:engine/start_state [ as @a[tag=!detached] ]
#			switch:engine/launch_game/launch [ as @a[tag=!detached] ]
#			switch:engine/stop [ as @a[tag=!detached] ]
#			switch:player/trigger/detach/basic_stuff
#
# @description		End the cinematic the player is riding, if any, keeping the entity counter in sync.
#

scoreboard players operation #player_id switch.id = @s switch.id
execute as @e[tag=switch.cinematic,predicate=switch:has_same_id] run function switch:cinematic/kill

