
#> switch:player/layout/swap
#
# @executed	as @a[tag=!detached,sort=random] & at @s
#
# @within	switch:modes/_common/layers_starter_kit/layout/apply
#			switch:modes/_coupdetat/give_items/layout/apply
#			switch:modes/beat_the_kings/give_items/civil/layout/apply
#			switch:modes/beat_the_kings/give_items/king/layout/apply
#			switch:modes/capture_the_flag/classes/archer/layout/apply
#			switch:modes/capture_the_flag/classes/chemister/layout/apply
#			switch:modes/capture_the_flag/classes/demolisher/layout/apply
#			switch:modes/capture_the_flag/classes/tank/layout/apply
#			switch:modes/capture_the_flag/classes/warrior/layout/apply
#			switch:modes/castagne/give_items/layout/apply
#			switch:modes/cigogne/give_items/layout/apply
#			switch:modes/fish_fight/give_items/layout/apply
#			switch:modes/one_shot/give_items/layout/apply
#			switch:modes/pitch_creep/give_items/layout/apply
#			switch:modes/pitchout/give_items/layout/apply
#			switch:modes/protect_the_king/give_items/layout/apply
#			switch:modes/pvpswap/give_items/layout/apply
#			switch:modes/rush_the_point/classes/archer/layout/apply
#			switch:modes/rush_the_point/classes/builder/layout/apply
#			switch:modes/rush_the_point/classes/destroyer/layout/apply
#			switch:modes/rush_the_point/classes/aviateur/layout/apply
#			switch:modes/rush_the_point/classes/guerrier/layout/apply
#			switch:modes/sheepwars/team_and_give/layout/apply
#			switch:modes/spectres_game/give_items/spectre/layout/apply
#			switch:modes/spectres_game/give_items/visible/layout/apply
#			switch:modes/spleef/give_items/layout/apply
#			switch:modes/traitors_game/give_items/layout/apply
#

execute if score #t switch.data matches 1 run return run function switch:player/layout/swap/0
execute if score #t switch.data matches 2 run return run function switch:player/layout/swap/1
execute if score #t switch.data matches 3 run return run function switch:player/layout/swap/2
execute if score #t switch.data matches 4 run return run function switch:player/layout/swap/3
execute if score #t switch.data matches 5 run return run function switch:player/layout/swap/4
execute if score #t switch.data matches 6 run return run function switch:player/layout/swap/5
execute if score #t switch.data matches 7 run return run function switch:player/layout/swap/6
execute if score #t switch.data matches 8 run return run function switch:player/layout/swap/7
execute if score #t switch.data matches 9 run return run function switch:player/layout/swap/8
execute if score #t switch.data matches 10 run return run function switch:player/layout/swap/9

