
#> switch:modes/block_party/core/give_block
#
# @within	switch:modes/block_party/tick
#

# The item and its color were resolved and checked by pick_block
execute unless data block 0 4 0 Items[0] run return run function switch:modes/block_party/core/pick_abort

# Give item with name
execute if score #bp_block switch.data matches -1 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {"text":"Beige","italic":false,"color":"#00E5FF"}
execute if score #bp_block switch.data matches 0 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {"translate":"color.minecraft.white","italic":false,"color":"#00E5FF"}
execute if score #bp_block switch.data matches 1 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {"translate":"color.minecraft.orange","italic":false,"color":"#00E5FF"}
execute if score #bp_block switch.data matches 2 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {"translate":"color.minecraft.magenta","italic":false,"color":"#00E5FF"}
execute if score #bp_block switch.data matches 3 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {"translate":"color.minecraft.light_blue","italic":false,"color":"#00E5FF"}
execute if score #bp_block switch.data matches 4 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {"translate":"color.minecraft.yellow","italic":false,"color":"#00E5FF"}
execute if score #bp_block switch.data matches 5 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {"translate":"color.minecraft.lime","italic":false,"color":"#00E5FF"}
execute if score #bp_block switch.data matches 6 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {"translate":"color.minecraft.pink","italic":false,"color":"#00E5FF"}
execute if score #bp_block switch.data matches 7 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {"translate":"color.minecraft.gray","italic":false,"color":"#00E5FF"}
execute if score #bp_block switch.data matches 8 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {"translate":"color.minecraft.light_gray","italic":false,"color":"#00E5FF"}
execute if score #bp_block switch.data matches 9 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {"translate":"color.minecraft.cyan","italic":false,"color":"#00E5FF"}
execute if score #bp_block switch.data matches 10 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {"translate":"color.minecraft.purple","italic":false,"color":"#00E5FF"}
execute if score #bp_block switch.data matches 11 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {"translate":"color.minecraft.blue","italic":false,"color":"#00E5FF"}
execute if score #bp_block switch.data matches 12 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {"translate":"color.minecraft.brown","italic":false,"color":"#00E5FF"}
execute if score #bp_block switch.data matches 13 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {"translate":"color.minecraft.green","italic":false,"color":"#00E5FF"}
execute if score #bp_block switch.data matches 14 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {"translate":"color.minecraft.red","italic":false,"color":"#00E5FF"}
execute if score #bp_block switch.data matches 15 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {"translate":"color.minecraft.black","italic":false,"color":"#00E5FF"}
item replace entity @a[tag=!detached,gamemode=!spectator] hotbar.0 from block 0 4 0 container.0
item replace entity @a[tag=!detached,gamemode=!spectator] hotbar.2 from block 0 4 0 container.0
item replace entity @a[tag=!detached,gamemode=!spectator] hotbar.4 from block 0 4 0 container.0
item replace entity @a[tag=!detached,gamemode=!spectator] hotbar.6 from block 0 4 0 container.0
item replace entity @a[tag=!detached,gamemode=!spectator] hotbar.8 from block 0 4 0 container.0

# Title players

# Tellraw players
function switch:modes/block_party/translations/core_give_block

# Playsound and remove shulker box
execute as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s
setblock 0 4 0 air

