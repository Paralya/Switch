
#> switch:modes/glassrunner/end/timeout
#
# @executed	positioned 3000 128 3000
#
# @within	switch:modes/glassrunner/tick
#

execute if score #glassrunner.points.red switch.data > #glassrunner.points.blue switch.data run function switch:modes/glassrunner/end/red
execute if score #glassrunner.points.blue switch.data > #glassrunner.points.red switch.data run function switch:modes/glassrunner/end/blue
execute if score #glassrunner.points.red switch.data = #glassrunner.points.blue switch.data run function switch:modes/glassrunner/end/null

