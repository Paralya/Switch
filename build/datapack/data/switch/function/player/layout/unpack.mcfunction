
#> switch:player/layout/unpack
#
# @executed	as @a[tag=!detached,sort=random] & at @s
#
# @within	switch:modes/_common/layers_starter_kit/layout/apply
#			switch:modes/_common/layers_starter_kit/layout/learn
#			switch:modes/_coupdetat/give_items/layout/apply
#			switch:modes/_coupdetat/give_items/layout/learn
#			switch:modes/beat_the_kings/give_items/civil/layout/apply
#			switch:modes/beat_the_kings/give_items/civil/layout/learn
#			switch:modes/beat_the_kings/give_items/king/layout/apply
#			switch:modes/beat_the_kings/give_items/king/layout/learn
#			switch:modes/capture_the_flag/classes/archer/layout/apply
#			switch:modes/capture_the_flag/classes/archer/layout/learn
#			switch:modes/capture_the_flag/classes/chemister/layout/apply
#			switch:modes/capture_the_flag/classes/chemister/layout/learn
#			switch:modes/capture_the_flag/classes/demolisher/layout/apply
#			switch:modes/capture_the_flag/classes/demolisher/layout/learn
#			switch:modes/capture_the_flag/classes/tank/layout/apply
#			switch:modes/capture_the_flag/classes/tank/layout/learn
#			switch:modes/capture_the_flag/classes/warrior/layout/apply
#			switch:modes/capture_the_flag/classes/warrior/layout/learn
#			switch:modes/castagne/give_items/layout/apply
#			switch:modes/castagne/give_items/layout/learn
#			switch:modes/cigogne/give_items/layout/apply
#			switch:modes/cigogne/give_items/layout/learn
#			switch:modes/fish_fight/give_items/layout/apply
#			switch:modes/fish_fight/give_items/layout/learn
#			switch:modes/one_shot/give_items/layout/apply
#			switch:modes/one_shot/give_items/layout/learn
#			switch:modes/pitch_creep/give_items/layout/apply
#			switch:modes/pitch_creep/give_items/layout/learn
#			switch:modes/pitchout/give_items/layout/apply
#			switch:modes/pitchout/give_items/layout/learn
#			switch:modes/protect_the_king/give_items/layout/apply
#			switch:modes/protect_the_king/give_items/layout/learn
#			switch:modes/pvpswap/give_items/layout/apply
#			switch:modes/pvpswap/give_items/layout/learn
#			switch:modes/rush_the_point/classes/archer/layout/apply
#			switch:modes/rush_the_point/classes/archer/layout/learn
#			switch:modes/rush_the_point/classes/builder/layout/apply
#			switch:modes/rush_the_point/classes/builder/layout/learn
#			switch:modes/rush_the_point/classes/destroyer/layout/apply
#			switch:modes/rush_the_point/classes/destroyer/layout/learn
#			switch:modes/rush_the_point/classes/aviateur/layout/apply
#			switch:modes/rush_the_point/classes/aviateur/layout/learn
#			switch:modes/rush_the_point/classes/guerrier/layout/apply
#			switch:modes/rush_the_point/classes/guerrier/layout/learn
#			switch:modes/sheepwars/team_and_give/layout/apply
#			switch:modes/sheepwars/team_and_give/layout/learn
#			switch:modes/spectres_game/give_items/spectre/layout/apply
#			switch:modes/spectres_game/give_items/spectre/layout/learn
#			switch:modes/spectres_game/give_items/visible/layout/apply
#			switch:modes/spectres_game/give_items/visible/layout/learn
#			switch:modes/spleef/give_items/layout/apply
#			switch:modes/spleef/give_items/layout/learn
#			switch:modes/traitors_game/give_items/layout/apply
#			switch:modes/traitors_game/give_items/layout/learn
#

scoreboard players operation #m0 switch.data = #p switch.data
scoreboard players operation #m0 switch.data %= #10 switch.data
scoreboard players add #m0 switch.data 1
scoreboard players operation #p switch.data /= #10 switch.data
scoreboard players operation #m1 switch.data = #p switch.data
scoreboard players operation #m1 switch.data %= #10 switch.data
scoreboard players add #m1 switch.data 1
scoreboard players operation #p switch.data /= #10 switch.data
scoreboard players operation #m2 switch.data = #p switch.data
scoreboard players operation #m2 switch.data %= #10 switch.data
scoreboard players add #m2 switch.data 1
scoreboard players operation #p switch.data /= #10 switch.data
scoreboard players operation #m3 switch.data = #p switch.data
scoreboard players operation #m3 switch.data %= #10 switch.data
scoreboard players add #m3 switch.data 1
scoreboard players operation #p switch.data /= #10 switch.data
scoreboard players operation #m4 switch.data = #p switch.data
scoreboard players operation #m4 switch.data %= #10 switch.data
scoreboard players add #m4 switch.data 1
scoreboard players operation #p switch.data /= #10 switch.data
scoreboard players operation #m5 switch.data = #p switch.data
scoreboard players operation #m5 switch.data %= #10 switch.data
scoreboard players add #m5 switch.data 1
scoreboard players operation #p switch.data /= #10 switch.data
scoreboard players operation #m6 switch.data = #p switch.data
scoreboard players operation #m6 switch.data %= #10 switch.data
scoreboard players add #m6 switch.data 1
scoreboard players operation #p switch.data /= #10 switch.data
scoreboard players operation #m7 switch.data = #p switch.data
scoreboard players operation #m7 switch.data %= #10 switch.data
scoreboard players add #m7 switch.data 1
scoreboard players operation #p switch.data /= #10 switch.data
scoreboard players operation #m8 switch.data = #p switch.data
scoreboard players operation #m8 switch.data %= #10 switch.data
scoreboard players add #m8 switch.data 1
scoreboard players operation #p switch.data /= #10 switch.data

