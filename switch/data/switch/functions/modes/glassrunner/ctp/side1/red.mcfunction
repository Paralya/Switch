execute if score #glassrunner.ctp.side1.red.timer switch.data matches 1..3 run place template switch:glassrunner/side1_red/1 2924 127 3074
execute if score #glassrunner.ctp.side1.red.timer switch.data matches 4..6 run place template switch:glassrunner/side1_red/2 2924 127 3074
execute if score #glassrunner.ctp.side1.red.timer switch.data matches 7..9 run place template switch:glassrunner/side1_red/3 2924 127 3074
execute if score #glassrunner.ctp.side1.red.timer switch.data matches 10..12 run place template switch:glassrunner/side1_red/4 2924 127 3074
execute if score #glassrunner.ctp.side1.red.timer switch.data matches 13..15 run place template switch:glassrunner/side1_red/5 2924 127 3074
execute if score #glassrunner.ctp.side1.red.timer switch.data matches 15.. run function switch:modes/glassrunner/ctp/side1/capture_red
# /var/opt/minecraft/crafty/crafty-4/servers/ae5e9828-b7de-49ba-b0b0-3ba9584969db/world/