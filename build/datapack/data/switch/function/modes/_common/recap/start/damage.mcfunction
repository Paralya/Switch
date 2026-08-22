
#> switch:modes/_common/recap/start/damage
#
# @within	switch:modes/spectres_game/start
#

scoreboard objectives add switch.temp.points dummy
scoreboard objectives add switch.temp.kills playerKillCount
scoreboard objectives add switch.temp.deaths deathCount
scoreboard objectives add switch.temp.damage minecraft.custom:minecraft.damage_dealt
scoreboard objectives add switch.temp.recap_rank dummy
scoreboard players set #recap_layout switch.data 2

