
#> switch:modes/memory_mine/zone/summon
#
# @within	switch:modes/memory_mine/second
#

# Summon marker in a random place
summon marker 0 0 0 {Tags:["switch.zone","switch.new"]}
spreadplayers 153013 153016 0 8 under 105 false @e[type=marker,tag=switch.new]
execute at @e[type=marker,tag=switch.new] run playsound block.anvil.fall ambient @a[distance=..50]
tag @e[type=marker,tag=switch.new] remove switch.new

