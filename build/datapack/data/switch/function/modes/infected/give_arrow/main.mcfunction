
#> switch:modes/infected/give_arrow/main
#
# @within	switch:modes/infected/second_regen
#

# Try to get slot and count
data modify storage switch:temp input set value {Slot:-1b,count:0}
data modify storage switch:temp input.Slot set from entity @s Inventory[{id:"minecraft:arrow"}].Slot
data modify storage switch:temp input.count set from entity @s Inventory[{id:"minecraft:arrow"}].count
execute store result score #count switch.data run data get storage switch:temp input.count
scoreboard players add #count switch.data 1
execute store result storage switch:temp input.count int 1 run scoreboard players get #count switch.data

# If slot is different from -1, then we have an arrow
execute unless data storage switch:temp input{Slot:-1b} run function switch:modes/infected/give_arrow/have_one_slot_arrow with storage switch:temp input

# Else, give arrow to the hotbar slot 8 or anywhere
execute if data storage switch:temp input{Slot:-1b} if data entity @s Inventory[{Slot:8b}] run give @s arrow
execute if data storage switch:temp input{Slot:-1b} unless data entity @s Inventory[{Slot:8b}] run item replace entity @s hotbar.8 with arrow

