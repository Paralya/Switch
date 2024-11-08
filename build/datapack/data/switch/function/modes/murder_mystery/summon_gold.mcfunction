
#> switch:modes/murder_mystery/summon_gold
#
# @within	switch:modes/murder_mystery/second
#

execute if predicate switch:chance/0.1 at @r[gamemode=!spectator,tag=!detached] if block ~ ~ ~ air run summon item ~6 ~ ~ {Tags:["switch.gold"],Item:{id:"minecraft:gold_ingot",count:1}}
execute if predicate switch:chance/0.1 at @r[gamemode=!spectator,tag=!detached] if block ~ ~ ~ air run summon item ~-6 ~ ~ {Tags:["switch.gold"],Item:{id:"minecraft:gold_ingot",count:1}}
execute if predicate switch:chance/0.1 at @r[gamemode=!spectator,tag=!detached] if block ~ ~ ~ air run summon item ~ ~ ~6 {Tags:["switch.gold"],Item:{id:"minecraft:gold_ingot",count:1}}
execute if predicate switch:chance/0.1 at @r[gamemode=!spectator,tag=!detached] if block ~ ~ ~ air run summon item ~ ~ ~-6 {Tags:["switch.gold"],Item:{id:"minecraft:gold_ingot",count:1}}
execute if predicate switch:chance/0.1 at @r[gamemode=!spectator,tag=!detached] if block ~ ~ ~ air run summon item ~6 ~ ~6 {Tags:["switch.gold"],Item:{id:"minecraft:gold_ingot",count:1}}
execute if predicate switch:chance/0.1 at @r[gamemode=!spectator,tag=!detached] if block ~ ~ ~ air run summon item ~-6 ~ ~-6 {Tags:["switch.gold"],Item:{id:"minecraft:gold_ingot",count:1}}
execute if predicate switch:chance/0.1 at @r[gamemode=!spectator,tag=!detached] if block ~ ~ ~ air run summon item ~6 ~ ~6 {Tags:["switch.gold"],Item:{id:"minecraft:gold_ingot",count:1}}
execute if predicate switch:chance/0.1 at @r[gamemode=!spectator,tag=!detached] if block ~ ~ ~ air run summon item ~-6 ~ ~-6 {Tags:["switch.gold"],Item:{id:"minecraft:gold_ingot",count:1}}

