
execute if predicate switch:chance/0.5 run summon creeper ~.5 ~ ~1 {AbsorptionAmount:2048.0f,Motion:[0.3d,1.50d,0.5d]}
execute if predicate switch:chance/0.5 run summon creeper ~.5 ~ ~-1 {AbsorptionAmount:2048.0f,Motion:[0.3d,1.50d,-0.5d]}
execute if predicate switch:chance/0.5 run summon creeper ~1 ~ ~.5 {AbsorptionAmount:2048.0f,Motion:[0.5d,1.50d,0.3d]}
execute if predicate switch:chance/0.5 run summon creeper ~-1 ~ ~.5 {AbsorptionAmount:2048.0f,Motion:[-0.5d,1.50d,0.3d]}
kill @s

