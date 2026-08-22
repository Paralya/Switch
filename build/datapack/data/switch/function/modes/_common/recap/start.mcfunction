
#> switch:modes/_common/recap/start
#
# @within	switch:modes/capture_the_flag/start {points:1}
#			switch:modes/glassrunner/start {points:0}
#			switch:modes/rush_the_point/start_common {points:1}
#			switch:modes/spectres_game/start {points:0}
#
# @args		points (int)
#

scoreboard objectives add switch.temp.kills playerKillCount
scoreboard objectives add switch.temp.deaths deathCount
scoreboard objectives add switch.temp.points dummy
$scoreboard players set #recap_points switch.data $(points)

