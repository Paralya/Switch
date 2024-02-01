
# Summon marker in a random place
summon marker 0 0 0 {Tags:["switch.zone","switch.new"]}
spreadplayers 153013 153016 0 15 under 105 false @e[type=marker,tag=switch.new]
tag @e[type=marker,tag=switch.new] remove switch.new

