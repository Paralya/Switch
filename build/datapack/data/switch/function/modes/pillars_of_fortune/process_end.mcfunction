
#> switch:modes/pillars_of_fortune/process_end
#
# @within	switch:modes/pillars_of_fortune/tick
#

function switch:modes/_common/process_end/winner_by_health {death:"switch:utils/classic_death"}

execute if score #process_end switch.data matches 200 run function switch:engine/restart

