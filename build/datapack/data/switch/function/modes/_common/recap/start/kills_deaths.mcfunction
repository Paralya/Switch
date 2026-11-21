
#> switch:modes/_common/recap/start/kills_deaths
#
# @executed	positioned -3750 128 -1750
#
# @within	switch:modes/glassrunner/start
#

scoreboard objectives add switch.temp.points dummy
scoreboard objectives add switch.temp.kills playerKillCount
scoreboard objectives add switch.temp.deaths deathCount
scoreboard objectives add switch.temp.damage minecraft.custom:minecraft.damage_dealt
scoreboard objectives add switch.temp.obsidian minecraft.mined:minecraft.crying_obsidian
scoreboard objectives add switch.temp.recap_rank dummy
scoreboard players set #recap_layout switch.data 1

