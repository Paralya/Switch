
#> switch:modes/fireblast/summon_power_up
#
# @within	switch:modes/fireblast/second
#

# Stop if the number of power-ups already summoned is >= 5
execute store result score #count switch.data if entity @e[type=item,tag=switch.fireblast.power_up]
execute if score #count switch.data matches 5.. run return fail

# Pick a random power-up type
execute store result score #random switch.data run random value 1..3
execute if score #random switch.data matches 1 run summon item 0 0 0 {Item:{id:"minecraft:sugar",count:1},Tags:["switch.new","switch.fireblast.speed"]}
execute if score #random switch.data matches 2 run summon item 0 0 0 {Item:{id:"minecraft:blaze_powder",count:1},Tags:["switch.new","switch.fireblast.reload"]}
execute if score #random switch.data matches 3 run summon item 0 0 0 {Item:{id:"minecraft:rabbit_foot",count:1},Tags:["switch.new","switch.fireblast.jump_boost"]}

# Place the power-up at a random position
execute as @e[type=item,tag=switch.new] run function switch:modes/fireblast/place_power_up

