
#> switch:player/layout/deactivate
#
# @executed	at @s
#
# @within	switch:modes/_common/death_spectator
#			switch:modes/_common/death_spectator_lives
#			switch:modes/_common/layers_starter_kit
#			switch:modes/_common/death/for_global [ as @a[tag=!detached,predicate=switch:has_same_id] ]
#			switch:modes/_coupdetat/give_items
#			switch:modes/beat_the_kings/give_items/civil
#			switch:modes/beat_the_kings/give_items/king
#			switch:modes/beat_the_kings/death/for_global [ as @a[tag=!detached,predicate=switch:has_same_id] ]
#			switch:modes/capture_the_flag/teleport_to_spawn
#			switch:modes/capture_the_flag/classes/archer
#			switch:modes/capture_the_flag/classes/chemister
#			switch:modes/capture_the_flag/classes/demolisher
#			switch:modes/capture_the_flag/classes/tank
#			switch:modes/capture_the_flag/classes/warrior
#			switch:modes/castagne/give_items
#			switch:modes/cigogne/give_items
#			switch:modes/fish_fight/give_items
#			switch:modes/one_shot/give_items
#			switch:modes/pitch_creep/give_items
#			switch:modes/pitchout/give_items
#			switch:modes/protect_the_king/give_items
#			switch:modes/pvpswap/give_items
#			switch:modes/rush_the_point/classes/archer
#			switch:modes/rush_the_point/classes/builder
#			switch:modes/rush_the_point/classes/destroyer
#			switch:modes/rush_the_point/classes/aviateur
#			switch:modes/rush_the_point/classes/guerrier
#			switch:modes/rush_the_point/teleport_to_spawn
#			switch:modes/sheepwars/team_and_give
#			switch:modes/spectres_game/death/for_global [ as @a[tag=switch.temp] ]
#			switch:modes/spectres_game/give_items/spectre
#			switch:modes/spectres_game/give_items/visible
#			switch:modes/spectres_game/death/revive_visible
#			switch:modes/spleef/give_items
#			switch:modes/traitors_game/death/for_global [ as @a[tag=!detached,predicate=switch:has_same_id] ]
#			switch:modes/traitors_game/give_items
#			switch:utils/classic_death
#			switch:utils/reset_players [ as @a[tag=!detached] ]
#			switch:player/trigger/detach/basic_stuff
#

execute if entity @s[tag=switch.layout.dirty] run function switch:player/layout/learn
tag @s remove switch.layout.active
tag @s remove switch.layout.dirty
scoreboard players set @s switch.layout.kit 0
scoreboard players set @s switch.layout.cd 0

