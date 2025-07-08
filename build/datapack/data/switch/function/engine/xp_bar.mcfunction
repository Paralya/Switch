
#> switch:engine/xp_bar
#
# @within	switch:modes/_coupdetat/xp_bar
#			switch:modes/beat_the_kings/xp_bar
#			switch:modes/block_party/xp_bar
#			switch:modes/boat_race/xp_bar
#			switch:modes/build_battle/xp_bar_preparation
#			switch:modes/build_battle/xp_bar_rating
#			switch:modes/castagne/xp_bar
#			switch:modes/cigogne/xp_bar
#			switch:modes/coin_chaser/xp_bar
#			switch:modes/creeper_apocalypse/xp_bar
#			switch:modes/de_a_coudre/xp_bar
#			switch:modes/feed_fast/xp_bar
#			switch:modes/gay_shooter/xp_bar
#			switch:modes/infected/xp_bar
#			switch:modes/kart_racer/xp_bar
#			switch:modes/minigolf/xp_bar
#			switch:modes/mlg_a_coudre/xp_bar
#			switch:modes/moutron/xp_bar
#			switch:modes/panic_chase/xp_bar
#			switch:modes/pillars_of_fortune/xp_bar
#			switch:modes/pitch_creep/xp_bar
#			switch:modes/protect_the_king/xp_bar
#			switch:modes/rush_the_point/xp_bar
#			switch:modes/shoot_da_sheep/xp_bar
#			switch:modes/simultaneous_jump/xp_bar
#			switch:modes/snowball_painter/xp_bar
#			switch:modes/spectres_game/xp_bar
#			switch:modes/thunder_spear/xp_bar
#			switch:modes/tnt_run/xp_bar
#			switch:modes/traitors_game/xp_bar
#			switch:modes/warden_escape/xp_bar
#

# Divide points
scoreboard players operation #points switch.data /= #divide switch.data
scoreboard players set #divide switch.data 1
execute if score #points switch.data matches ..0 run scoreboard players set #points switch.data 0
execute if score #points switch.data matches 1000.. run scoreboard players set #points switch.data 1000

# XP from 0 to 1000 points
xp set @a[tag=!detached] 130 levels
data modify storage switch:main temp set value {selector:"@a[tag=!detached]", xp:0, type:""}
execute store result storage switch:main temp.xp int 1 run scoreboard players get #points switch.data
function switch:engine/xp_bar_macro with storage switch:main temp
xp set @a[tag=!detached] 0 levels

