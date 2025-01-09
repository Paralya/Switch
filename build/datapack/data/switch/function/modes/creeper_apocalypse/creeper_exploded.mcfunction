
#> switch:modes/creeper_apocalypse/creeper_exploded
#
# @within	switch:modes/creeper_apocalypse/tick
#

execute if predicate switch:chance/0.5 run summon creeper ~.5 ~ ~1 {AbsorptionAmount:2048.0f,Motion:[0.3d,1.69d,0.5d],attributes:[{id:"minecraft:max_absorption",base:2048.0}],powered:true}
execute if predicate switch:chance/0.5 run summon creeper ~.5 ~ ~-1 {AbsorptionAmount:2048.0f,Motion:[0.3d,1.69d,-0.5d],attributes:[{id:"minecraft:max_absorption",base:2048.0}],powered:true}
execute if predicate switch:chance/0.5 run summon creeper ~1 ~ ~.5 {AbsorptionAmount:2048.0f,Motion:[0.5d,1.69d,0.3d],attributes:[{id:"minecraft:max_absorption",base:2048.0}],powered:true}
execute if predicate switch:chance/0.5 run summon creeper ~-1 ~ ~.5 {AbsorptionAmount:2048.0f,Motion:[-0.5d,1.69d,0.3d],attributes:[{id:"minecraft:max_absorption",base:2048.0}],powered:true}
kill @s

