
data modify storage switch:temp input.x set from entity @s LastDeathLocation.pos[0]
data modify storage switch:temp input.y set from entity @s LastDeathLocation.pos[1]
data modify storage switch:temp input.z set from entity @s LastDeathLocation.pos[2]
data modify storage switch:temp input.dimension set from entity @s LastDeathLocation.dimension
function switch:utils/death_tp_2 with storage switch:temp input

