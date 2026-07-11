
#> switch:modes/_common/xp_bar/time
#
# @within	switch:modes/_coupdetat/xp_bar {points_score:"#coupdetat_ticks",levels_score:"#remaining_seconds"}
#			switch:modes/beat_the_kings/xp_bar {points_score:"#remaining_time",levels_score:"#remaining_time"}
#			switch:modes/boat_race/xp_bar {points_score:"#boat_race_seconds",levels_score:"#remaining_time"}
#			switch:modes/castagne/xp_bar {points_score:"#castagne_seconds",levels_score:"#remaining_time"}
#			switch:modes/cigogne/xp_bar {points_score:"#cigogne_seconds",levels_score:"#remaining_time"}
#			switch:modes/coin_chaser/xp_bar {points_score:"#remaining_time",levels_score:"#remaining_time"}
#			switch:modes/creeper_apocalypse/xp_bar {points_score:"#creeper_apocalypse_seconds",levels_score:"#remaining_time"}
#			switch:modes/de_a_coudre/xp_bar {points_score:"#remaining_time",levels_score:"#remaining_seconds"}
#			switch:modes/feed_fast/xp_bar {points_score:"#remaining_time",levels_score:"#remaining_time"}
#			switch:modes/gay_shooter/xp_bar {points_score:"#remaining_time",levels_score:"#remaining_time"}
#			switch:modes/infected/xp_bar {points_score:"#remaining_time",levels_score:"#remaining_time"}
#			switch:modes/minigolf/xp_bar {points_score:"#remaining_time",levels_score:"#remaining_time"}
#			switch:modes/mlg_a_coudre/xp_bar {points_score:"#remaining_time",levels_score:"#remaining_time"}
#			switch:modes/one_shot/xp_bar {points_score:"#remaining_time",levels_score:"#remaining_time"}
#			switch:modes/panic_chase/xp_bar {points_score:"#remaining_time",levels_score:"#remaining_time"}
#			switch:modes/pillars_of_fortune/xp_bar {points_score:"#pillars_of_fortune_seconds",levels_score:"#remaining_time"}
#			switch:modes/pitch_creep/xp_bar {points_score:"#pitch_creep_seconds",levels_score:"#remaining_time"}
#			switch:modes/protect_the_king/xp_bar {points_score:"#remaining_time",levels_score:"#remaining_time"}
#			switch:modes/race/xp_bar {points_score:"#remaining_time",levels_score:"#remaining_time"}
#			switch:modes/rush_the_point/xp_bar {points_score:"#remaining_time",levels_score:"#remaining_time"}
#			switch:modes/shoot_da_sheep/xp_bar {points_score:"#remaining_time",levels_score:"#remaining_time"}
#			switch:modes/simultaneous_jump/xp_bar {points_score:"#remaining_time",levels_score:"#remaining_time"}
#			switch:modes/snowball_painter/xp_bar {points_score:"#remaining_time",levels_score:"#remaining_time"}
#			switch:modes/spectres_game/xp_bar {points_score:"#remaining_time",levels_score:"#remaining_time"}
#			switch:modes/thunder_spear/xp_bar {points_score:"#thunder_spear_seconds",levels_score:"#remaining_time"}
#			switch:modes/tnt_run/xp_bar {points_score:"#tnt_run_seconds",levels_score:"#tnt_run_seconds"}
#			switch:modes/traitors_game/xp_bar {points_score:"#remaining_time",levels_score:"#remaining_time"}
#			switch:modes/warden_escape/xp_bar {points_score:"#warden_escape_seconds",levels_score:"#remaining_time"}
#
# @args		points_score (string)
#			levels_score (string)
#

$scoreboard players operation #points switch.data = $(points_score) switch.data
scoreboard players operation #points switch.data *= #1000000 switch.data
function switch:modes/_common/xp_bar/points
$scoreboard players operation #levels switch.data = $(levels_score) switch.data
function switch:modes/_common/xp_bar/levels

