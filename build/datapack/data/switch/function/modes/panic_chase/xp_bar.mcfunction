
#> switch:modes/panic_chase/xp_bar
#
# @within	switch:modes/panic_chase/second
#

execute if data storage switch:main {map:"arti_box"} run scoreboard players set #divide switch.data 120000
execute if data storage switch:main {map:"nether_storm"} run scoreboard players set #divide switch.data 210000
function switch:modes/_common/xp_bar/time {points_score:"#remaining_time",levels_score:"#remaining_time"}

