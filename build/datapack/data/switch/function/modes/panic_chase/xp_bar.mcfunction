
#> switch:modes/panic_chase/xp_bar
#
# @within	switch:modes/panic_chase/second
#

# 120 ou 210 seconds = 100%
# 0 seconds = 0%
scoreboard players operation #points switch.data = #remaining_time switch.data
scoreboard players operation #points switch.data *= #1000000 switch.data
execute if data storage switch:main {map:"arti_box"} run scoreboard players set #divide switch.data 120000
execute if data storage switch:main {map:"nether_storm"} run scoreboard players set #divide switch.data 210000
function switch:modes/_common/xp_bar/points

scoreboard players operation #levels switch.data = #remaining_time switch.data
function switch:modes/_common/xp_bar/levels

