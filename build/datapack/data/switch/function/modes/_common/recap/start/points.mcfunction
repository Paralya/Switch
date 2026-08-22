
#> switch:modes/_common/recap/start/points
#
# @within	switch:modes/capture_the_flag/start
#			switch:modes/rush_the_point/start_common
#

scoreboard objectives add switch.temp.points dummy
scoreboard objectives add switch.temp.kills playerKillCount
scoreboard objectives add switch.temp.deaths deathCount
scoreboard objectives add switch.temp.damage minecraft.custom:minecraft.damage_dealt
scoreboard objectives add switch.temp.recap_rank dummy
scoreboard players set #recap_layout switch.data 1

