
scoreboard players set #random switch.data 0
execute if predicate switch:chance/0.5 run scoreboard players add #random switch.data 1
execute if predicate switch:chance/0.5 run scoreboard players add #random switch.data 1
execute if predicate switch:chance/0.5 run scoreboard players add #random switch.data 1

execute if score #random switch.data matches 0 run summon item_frame ~ ~ ~ {ItemRotation:0b,Facing:1b,Invulnerable:1b,Invisible:1b,Item:{id:"minecraft:soul_campfire",Count:1b,tag:{CustomModelData:4220016}},Tags:["switch.banana"]}
execute if score #random switch.data matches 1 run summon item_frame ~ ~ ~ {ItemRotation:2b,Facing:1b,Invulnerable:1b,Invisible:1b,Item:{id:"minecraft:soul_campfire",Count:1b,tag:{CustomModelData:4220016}},Tags:["switch.banana"]}
execute if score #random switch.data matches 2 run summon item_frame ~ ~ ~ {ItemRotation:4b,Facing:1b,Invulnerable:1b,Invisible:1b,Item:{id:"minecraft:soul_campfire",Count:1b,tag:{CustomModelData:4220016}},Tags:["switch.banana"]}
execute if score #random switch.data matches 3 run summon item_frame ~ ~ ~ {ItemRotation:6b,Facing:1b,Invulnerable:1b,Invisible:1b,Item:{id:"minecraft:soul_campfire",Count:1b,tag:{CustomModelData:4220016}},Tags:["switch.banana"]}
