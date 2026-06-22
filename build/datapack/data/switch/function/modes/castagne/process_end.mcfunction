
#> switch:modes/castagne/process_end
#
# @within	switch:modes/castagne/tick
#

function switch:modes/_common/process_end/winner_by_health {death:"switch:modes/castagne/death"}

execute if score #process_end switch.data matches 200 run function switch:engine/restart

