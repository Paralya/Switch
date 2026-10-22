
#> switch:modes/glassrunner/ctp/center/blue
#
# @executed	positioned -3750 128 -1750
#
# @within	switch:modes/glassrunner/second
#

execute if score #glassrunner.ctp.center.blue.timer switch.data matches 1..2 run place template switch:glassrunner/center_blue/1 -3753 127 -1753
execute if score #glassrunner.ctp.center.blue.timer switch.data matches 3..4 run place template switch:glassrunner/center_blue/2 -3753 127 -1753
execute if score #glassrunner.ctp.center.blue.timer switch.data matches 5..6 run place template switch:glassrunner/center_blue/3 -3753 127 -1753
execute if score #glassrunner.ctp.center.blue.timer switch.data matches 7..8 run place template switch:glassrunner/center_blue/4 -3753 127 -1753
execute if score #glassrunner.ctp.center.blue.timer switch.data matches 9..10 run place template switch:glassrunner/center_blue/5 -3753 127 -1753
execute if score #glassrunner.ctp.center.blue.timer switch.data matches 11..12 run place template switch:glassrunner/center_blue/6 -3753 127 -1753
execute if score #glassrunner.ctp.center.blue.timer switch.data matches 13..14 run place template switch:glassrunner/center_blue/7 -3753 127 -1753
execute if score #glassrunner.ctp.center.blue.timer switch.data matches 15.. run function switch:modes/glassrunner/ctp/center/capture_blue
# /var/opt/minecraft/crafty/crafty-4/servers/ae5e9828-b7de-49ba-b0b0-3ba9584969db/world/

