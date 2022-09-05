
execute if predicate switch:chance/0.5 run summon creeper ~.5 ~ ~1 {AbsorptionAmount:2048f,Motion:[0.2d,0.40d,0.4d]}
execute if predicate switch:chance/0.5 run summon creeper ~.5 ~ ~-1 {AbsorptionAmount:2048f,Motion:[0.2d,0.40d,-0.4d]}
execute if predicate switch:chance/0.5 run summon creeper ~1 ~ ~.5 {AbsorptionAmount:2048f,Motion:[0.4d,0.40d,0.2d]}
execute if predicate switch:chance/0.5 run summon creeper ~-1 ~ ~.5 {AbsorptionAmount:2048f,Motion:[-0.4d,0.40d,0.2d]}

kill @s
