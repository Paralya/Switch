
#> switch:player/layout/is_free
#
# @within	string in switch:modes/_common/layers_starter_kit/layout/learn
#			string in switch:modes/_coupdetat/give_items/layout/learn
#			string in switch:modes/beat_the_kings/give_items/civil/layout/learn
#			string in switch:modes/beat_the_kings/give_items/king/layout/learn
#			string in switch:modes/capture_the_flag/classes/archer/layout/learn
#			string in switch:modes/capture_the_flag/classes/chemister/layout/learn
#			string in switch:modes/capture_the_flag/classes/demolisher/layout/learn
#			string in switch:modes/capture_the_flag/classes/tank/layout/learn
#			string in switch:modes/capture_the_flag/classes/warrior/layout/learn
#			string in switch:modes/castagne/give_items/layout/learn
#			string in switch:modes/cigogne/give_items/layout/learn
#			string in switch:modes/fish_fight/give_items/layout/learn
#			string in switch:modes/one_shot/give_items/layout/learn
#			string in switch:modes/pitch_creep/give_items/layout/learn
#			string in switch:modes/pitchout/give_items/layout/learn
#			string in switch:modes/protect_the_king/give_items/layout/learn
#			string in switch:modes/pvpswap/give_items/layout/learn
#			string in switch:modes/rush_the_point/classes/archer/layout/learn
#			string in switch:modes/rush_the_point/classes/builder/layout/learn
#			string in switch:modes/rush_the_point/classes/destroyer/layout/learn
#			string in switch:modes/rush_the_point/classes/aviateur/layout/learn
#			string in switch:modes/rush_the_point/classes/guerrier/layout/learn
#			string in switch:modes/sheepwars/team_and_give/layout/learn
#			string in switch:modes/spectres_game/give_items/spectre/layout/learn
#			string in switch:modes/spectres_game/give_items/visible/layout/learn
#			string in switch:modes/spleef/give_items/layout/learn
#			string in switch:modes/traitors_game/give_items/layout/learn
#

execute if score #t switch.data matches 1 if score #f0 switch.data matches 0 run return 1
execute if score #t switch.data matches 2 if score #f1 switch.data matches 0 run return 1
execute if score #t switch.data matches 3 if score #f2 switch.data matches 0 run return 1
execute if score #t switch.data matches 4 if score #f3 switch.data matches 0 run return 1
execute if score #t switch.data matches 5 if score #f4 switch.data matches 0 run return 1
execute if score #t switch.data matches 6 if score #f5 switch.data matches 0 run return 1
execute if score #t switch.data matches 7 if score #f6 switch.data matches 0 run return 1
execute if score #t switch.data matches 8 if score #f7 switch.data matches 0 run return 1
execute if score #t switch.data matches 9 if score #f8 switch.data matches 0 run return 1
execute if score #t switch.data matches 10 if score #f9 switch.data matches 0 run return 1
return 0

