
#> switch:modes/glassrunner/ctp/center/red
#
# @within	switch:modes/glassrunner/second
#

execute if score #glassrunner.ctp.center.red.timer switch.data matches 1..2 run place template switch:glassrunner/center_red/1 2997 127 2997
execute if score #glassrunner.ctp.center.red.timer switch.data matches 3..4 run place template switch:glassrunner/center_red/2 2997 127 2997
execute if score #glassrunner.ctp.center.red.timer switch.data matches 5..6 run place template switch:glassrunner/center_red/3 2997 127 2997
execute if score #glassrunner.ctp.center.red.timer switch.data matches 7..8 run place template switch:glassrunner/center_red/4 2997 127 2997
execute if score #glassrunner.ctp.center.red.timer switch.data matches 9..10 run place template switch:glassrunner/center_red/5 2997 127 2997
execute if score #glassrunner.ctp.center.red.timer switch.data matches 11..12 run place template switch:glassrunner/center_red/6 2997 127 2997
execute if score #glassrunner.ctp.center.red.timer switch.data matches 13..14 run place template switch:glassrunner/center_red/7 2997 127 2997
execute if score #glassrunner.ctp.center.red.timer switch.data matches 15.. run function switch:modes/glassrunner/ctp/center/capture_red
# /var/opt/minecraft/crafty/crafty-4/servers/ae5e9828-b7de-49ba-b0b0-3ba9584969db/world/

