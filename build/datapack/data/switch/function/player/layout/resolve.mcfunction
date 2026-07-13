
#> switch:player/layout/resolve
#
# @executed	as @a[tag=!detached,sort=random] & at @s
#
# @within	switch:modes/_common/layers_starter_kit
#			switch:modes/_coupdetat/give_items
#			switch:modes/beat_the_kings/give_items/civil
#			switch:modes/beat_the_kings/give_items/king
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
#			switch:modes/sheepwars/team_and_give
#			switch:modes/spectres_game/give_items/spectre
#			switch:modes/spectres_game/give_items/visible
#			switch:modes/spleef/give_items
#			switch:modes/traitors_game/give_items
#

data modify storage switch:layout free set value {s1:1b,s2:1b,s3:1b,s4:1b,s5:1b,s6:1b,s7:1b,s8:1b,s9:1b,s10:1b}
data modify storage switch:layout out set value {}

# Slots written by raw kit lines are never handed out
data modify storage switch:layout todo set from storage switch:layout kit.reserved
execute if data storage switch:layout todo[0] run function switch:player/layout/reserve_loop

# Claim phase: mapped roles take their slot
data modify storage switch:layout todo set from storage switch:layout kit.items
execute if data storage switch:layout todo[0] run function switch:player/layout/claim_loop

# Fill phase: everything else falls back (sibling, then canonical, then lowest free)
data modify storage switch:layout todo set from storage switch:layout kit.items
execute if data storage switch:layout todo[0] run function switch:player/layout/fill_loop

