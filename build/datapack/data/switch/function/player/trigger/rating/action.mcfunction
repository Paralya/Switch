
#> switch:player/trigger/rating/action
#
# @within	switch:player/trigger/rating/
#

# Get the digit
scoreboard players operation #digits switch.data = @s switch.trigger.rating
scoreboard players operation #digits switch.data %= #100 switch.data
scoreboard players operation #int switch.data = @s switch.trigger.rating
scoreboard players operation #int switch.data /= #100 switch.data

# Get game index
data modify storage switch:temp input set value {index:0,index_hundred:0,digits:0}
execute store result storage switch:temp input.index int 1 run scoreboard players get #int switch.data
execute store result storage switch:temp input.index_hundred int 100 run scoreboard players get #int switch.data
execute store result storage switch:temp input.digits int 1 run scoreboard players get #digits switch.data

# Get username
setblock 0 0 0 air
setblock 0 0 0 yellow_shulker_box
loot insert 0 0 0 loot switch:get_username
data modify storage switch:temp input.player set from block 0 0 0 Items[0].components."minecraft:profile".name
setblock 0 0 0 air

# If the digit is 0, print function
execute if score #digits switch.data matches 0 run function switch:player/trigger/rating/print with storage switch:temp input

# Else, take account the note if it's between 1 and 5
execute if score #digits switch.data matches 1..5 run function switch:player/trigger/rating/note with storage switch:temp input

