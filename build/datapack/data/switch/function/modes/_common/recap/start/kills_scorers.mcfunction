
#> switch:modes/_common/recap/start/kills_scorers
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:modes/pillars_of_fortune/start
#

scoreboard objectives add switch.temp.points dummy
scoreboard objectives add switch.temp.kills playerKillCount
scoreboard objectives add switch.temp.deaths deathCount
scoreboard objectives add switch.temp.damage minecraft.custom:minecraft.damage_dealt
scoreboard objectives add switch.temp.mobs minecraft.custom:minecraft.mob_kills
scoreboard objectives add switch.temp.obsidian minecraft.mined:minecraft.crying_obsidian
scoreboard objectives add switch.temp.recap_rank dummy
scoreboard players set #recap_layout switch.data 1

