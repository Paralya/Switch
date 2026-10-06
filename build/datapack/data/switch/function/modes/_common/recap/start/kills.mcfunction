
#> switch:modes/_common/recap/start/kills
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:modes/cigogne/start
#			switch:modes/glassrunner/start
#			switch:modes/pillars_of_fortune/start
#			switch:modes/protect_the_king/start
#

scoreboard objectives add switch.temp.points dummy
scoreboard objectives add switch.temp.kills playerKillCount
scoreboard objectives add switch.temp.deaths deathCount
scoreboard objectives add switch.temp.damage minecraft.custom:minecraft.damage_dealt
scoreboard objectives add switch.temp.recap_rank dummy
scoreboard players set #recap_layout switch.data 0

