
summon item 0 0 0 {Tags:["switch.coin","switch.new_coin"],Glowing:true,Item:{id:"minecraft:gold_ingot",count:1}}
summon item 0 0 0 {Tags:["switch.coin","switch.new_coin"],Glowing:true,Item:{id:"minecraft:gold_ingot",count:1}}
summon item 0 0 0 {Tags:["switch.coin","switch.new_coin"],Glowing:true,Item:{id:"minecraft:gold_ingot",count:1}}
summon item 0 0 0 {Tags:["switch.coin","switch.new_coin"],Glowing:true,Item:{id:"minecraft:gold_ingot",count:1}}
summon item 0 0 0 {Tags:["switch.coin","switch.new_coin"],Glowing:true,Item:{id:"minecraft:gold_ingot",count:1}}
summon item 0 0 0 {Tags:["switch.coin","switch.new_coin"],Glowing:true,Item:{id:"minecraft:gold_ingot",count:1}}
summon item 0 0 0 {Tags:["switch.coin","switch.new_coin"],Glowing:true,Item:{id:"minecraft:gold_ingot",count:1}}
summon item 0 0 0 {Tags:["switch.coin","switch.new_coin"],Glowing:true,Item:{id:"minecraft:gold_ingot",count:1}}
summon item 0 0 0 {Tags:["switch.coin","switch.new_coin"],Glowing:true,Item:{id:"minecraft:gold_ingot",count:1}}
summon item 0 0 0 {Tags:["switch.coin","switch.new_coin"],Glowing:true,Item:{id:"minecraft:gold_ingot",count:1}}

execute as @e[type=item,tag=switch.new_coin] run function switch:maps/spread_one_player
tag @e[type=item,tag=switch.new_coin] remove switch.new_coin

