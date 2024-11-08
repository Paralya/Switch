
#> switch:modes/rush_the_point/start
#
# @within	switch:modes/rush_the_point/calls/start
#

function switch:modes/rush_the_point/start_common
function switch:translations/modes_rush_the_point_start

# Summon the points markers
summon marker 14000 99 14000 {Tags:["switch.rush_the_point.zone","switch.rush_the_point.center"]}
summon marker 14025 99 14050 {Tags:["switch.rush_the_point.zone","switch.rush_the_point.side"]}
summon marker 14025 99 13950 {Tags:["switch.rush_the_point.zone","switch.rush_the_point.side"]}
summon marker 13975 99 14050 {Tags:["switch.rush_the_point.zone","switch.rush_the_point.side"]}
summon marker 13975 99 13950 {Tags:["switch.rush_the_point.zone","switch.rush_the_point.side"]}

scoreboard players set #remaining_time switch.data 610
scoreboard players set #rush_the_point_seconds switch.data -10
scoreboard players set #rush_the_point_ticks switch.data 0
scoreboard objectives add switch.temp.zone_capture dummy

