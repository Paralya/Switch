
#> switch:modes/glassrunner/ctp/side2/blue
#
# @executed	positioned -3750 128 -1750
#
# @within	switch:modes/glassrunner/second
#

execute if score #glassrunner.ctp.side2.blue.timer switch.data matches 1..3 run place template switch:glassrunner/side1_blue/1 -3676 127 -1826
execute if score #glassrunner.ctp.side2.blue.timer switch.data matches 4..6 run place template switch:glassrunner/side1_blue/2 -3676 127 -1826
execute if score #glassrunner.ctp.side2.blue.timer switch.data matches 7..9 run place template switch:glassrunner/side1_blue/3 -3676 127 -1826
execute if score #glassrunner.ctp.side2.blue.timer switch.data matches 10..12 run place template switch:glassrunner/side1_blue/4 -3676 127 -1826
execute if score #glassrunner.ctp.side2.blue.timer switch.data matches 13..15 run place template switch:glassrunner/side1_blue/5 -3676 127 -1826
execute if score #glassrunner.ctp.side2.blue.timer switch.data matches 15.. run function switch:modes/glassrunner/ctp/side2/capture_blue
# /var/opt/minecraft/crafty/crafty-4/servers/ae5e9828-b7de-49ba-b0b0-3ba9584969db/world/

