
#> switch:player/layout/learn
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/layout/tick
#			switch:player/layout/deactivate
#

execute if score @s switch.layout.kit matches 1 run return run function switch:modes/_common/layers_starter_kit/layout/learn
execute if score @s switch.layout.kit matches 2 run return run function switch:modes/_coupdetat/give_items/layout/learn
execute if score @s switch.layout.kit matches 3 run return run function switch:modes/beat_the_kings/give_items/civil/layout/learn
execute if score @s switch.layout.kit matches 4 run return run function switch:modes/beat_the_kings/give_items/king/layout/learn
execute if score @s switch.layout.kit matches 5 run return run function switch:modes/capture_the_flag/classes/archer/layout/learn
execute if score @s switch.layout.kit matches 6 run return run function switch:modes/capture_the_flag/classes/chemister/layout/learn
execute if score @s switch.layout.kit matches 7 run return run function switch:modes/capture_the_flag/classes/demolisher/layout/learn
execute if score @s switch.layout.kit matches 8 run return run function switch:modes/capture_the_flag/classes/tank/layout/learn
execute if score @s switch.layout.kit matches 9 run return run function switch:modes/capture_the_flag/classes/warrior/layout/learn
execute if score @s switch.layout.kit matches 10 run return run function switch:modes/castagne/give_items/layout/learn
execute if score @s switch.layout.kit matches 11 run return run function switch:modes/cigogne/give_items/layout/learn
execute if score @s switch.layout.kit matches 12 run return run function switch:modes/fish_fight/give_items/layout/learn
execute if score @s switch.layout.kit matches 13 run return run function switch:modes/one_shot/give_items/layout/learn
execute if score @s switch.layout.kit matches 14 run return run function switch:modes/pitch_creep/give_items/layout/learn
execute if score @s switch.layout.kit matches 15 run return run function switch:modes/pitchout/give_items/layout/learn
execute if score @s switch.layout.kit matches 16 run return run function switch:modes/protect_the_king/give_items/layout/learn
execute if score @s switch.layout.kit matches 17 run return run function switch:modes/pvpswap/give_items/layout/learn
execute if score @s switch.layout.kit matches 18 run return run function switch:modes/rush_the_point/classes/archer/layout/learn
execute if score @s switch.layout.kit matches 19 run return run function switch:modes/rush_the_point/classes/builder/layout/learn
execute if score @s switch.layout.kit matches 20 run return run function switch:modes/rush_the_point/classes/destroyer/layout/learn
execute if score @s switch.layout.kit matches 21 run return run function switch:modes/rush_the_point/classes/aviateur/layout/learn
execute if score @s switch.layout.kit matches 22 run return run function switch:modes/rush_the_point/classes/guerrier/layout/learn
execute if score @s switch.layout.kit matches 23 run return run function switch:modes/sheepwars/team_and_give/layout/learn
execute if score @s switch.layout.kit matches 24 run return run function switch:modes/spectres_game/give_items/spectre/layout/learn
execute if score @s switch.layout.kit matches 25 run return run function switch:modes/spectres_game/give_items/visible/layout/learn
execute if score @s switch.layout.kit matches 26 run return run function switch:modes/spleef/give_items/layout/learn
execute if score @s switch.layout.kit matches 27 run return run function switch:modes/traitors_game/give_items/layout/learn

