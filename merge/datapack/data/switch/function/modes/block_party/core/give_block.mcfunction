

## Switch case
data modify storage switch:main Item set from block 0 4 0 Items[0]
scoreboard players set #bp_block switch.data -1
execute if score #bp_block switch.data matches -1 if data storage switch:main Item{id:"minecraft:white_concrete"} run scoreboard players set #bp_block switch.data 0
execute if score #bp_block switch.data matches -1 if data storage switch:main Item{id:"minecraft:orange_concrete"} run scoreboard players set #bp_block switch.data 1
execute if score #bp_block switch.data matches -1 if data storage switch:main Item{id:"minecraft:magenta_concrete"} run scoreboard players set #bp_block switch.data 2
execute if score #bp_block switch.data matches -1 if data storage switch:main Item{id:"minecraft:light_blue_concrete"} run scoreboard players set #bp_block switch.data 3
execute if score #bp_block switch.data matches -1 if data storage switch:main Item{id:"minecraft:yellow_concrete"} run scoreboard players set #bp_block switch.data 4
execute if score #bp_block switch.data matches -1 if data storage switch:main Item{id:"minecraft:lime_concrete"} run scoreboard players set #bp_block switch.data 5
execute if score #bp_block switch.data matches -1 if data storage switch:main Item{id:"minecraft:pink_concrete"} run scoreboard players set #bp_block switch.data 6
execute if score #bp_block switch.data matches -1 if data storage switch:main Item{id:"minecraft:gray_concrete"} run scoreboard players set #bp_block switch.data 7
execute if score #bp_block switch.data matches -1 if data storage switch:main Item{id:"minecraft:light_gray_concrete"} run scoreboard players set #bp_block switch.data 8
execute if score #bp_block switch.data matches -1 if data storage switch:main Item{id:"minecraft:cyan_concrete"} run scoreboard players set #bp_block switch.data 9
execute if score #bp_block switch.data matches -1 if data storage switch:main Item{id:"minecraft:purple_concrete"} run scoreboard players set #bp_block switch.data 10
execute if score #bp_block switch.data matches -1 if data storage switch:main Item{id:"minecraft:blue_concrete"} run scoreboard players set #bp_block switch.data 11
execute if score #bp_block switch.data matches -1 if data storage switch:main Item{id:"minecraft:brown_concrete"} run scoreboard players set #bp_block switch.data 12
execute if score #bp_block switch.data matches -1 if data storage switch:main Item{id:"minecraft:green_concrete"} run scoreboard players set #bp_block switch.data 13
execute if score #bp_block switch.data matches -1 if data storage switch:main Item{id:"minecraft:red_concrete"} run scoreboard players set #bp_block switch.data 14
execute if score #bp_block switch.data matches -1 if data storage switch:main Item{id:"minecraft:black_concrete"} run scoreboard players set #bp_block switch.data 15

# Give item with name
execute if score #bp_block switch.data matches -1 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {"text":"Beige","italic":false,"color":"aqua"}
execute if score #bp_block switch.data matches 0 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {"translate":"color.minecraft.white","italic":false,"color":"aqua"}
execute if score #bp_block switch.data matches 1 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {"translate":"color.minecraft.orange","italic":false,"color":"aqua"}
execute if score #bp_block switch.data matches 2 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {"translate":"color.minecraft.magenta","italic":false,"color":"aqua"}
execute if score #bp_block switch.data matches 3 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {"translate":"color.minecraft.light_blue","italic":false,"color":"aqua"}
execute if score #bp_block switch.data matches 4 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {"translate":"color.minecraft.yellow","italic":false,"color":"aqua"}
execute if score #bp_block switch.data matches 5 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {"translate":"color.minecraft.lime","italic":false,"color":"aqua"}
execute if score #bp_block switch.data matches 6 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {"translate":"color.minecraft.pink","italic":false,"color":"aqua"}
execute if score #bp_block switch.data matches 7 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {"translate":"color.minecraft.gray","italic":false,"color":"aqua"}
execute if score #bp_block switch.data matches 8 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {"translate":"color.minecraft.light_gray","italic":false,"color":"aqua"}
execute if score #bp_block switch.data matches 9 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {"translate":"color.minecraft.cyan","italic":false,"color":"aqua"}
execute if score #bp_block switch.data matches 10 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {"translate":"color.minecraft.purple","italic":false,"color":"aqua"}
execute if score #bp_block switch.data matches 11 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {"translate":"color.minecraft.blue","italic":false,"color":"aqua"}
execute if score #bp_block switch.data matches 12 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {"translate":"color.minecraft.brown","italic":false,"color":"aqua"}
execute if score #bp_block switch.data matches 13 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {"translate":"color.minecraft.green","italic":false,"color":"aqua"}
execute if score #bp_block switch.data matches 14 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {"translate":"color.minecraft.red","italic":false,"color":"aqua"}
execute if score #bp_block switch.data matches 15 run data modify block 0 4 0 Items[0].components."minecraft:item_name" set value {"translate":"color.minecraft.black","italic":false,"color":"aqua"}
item replace entity @a[tag=!detached,gamemode=!spectator] hotbar.0 from block 0 4 0 container.0
item replace entity @a[tag=!detached,gamemode=!spectator] hotbar.2 from block 0 4 0 container.0
item replace entity @a[tag=!detached,gamemode=!spectator] hotbar.4 from block 0 4 0 container.0
item replace entity @a[tag=!detached,gamemode=!spectator] hotbar.6 from block 0 4 0 container.0
item replace entity @a[tag=!detached,gamemode=!spectator] hotbar.8 from block 0 4 0 container.0

# Title players

# Tellraw players
function switch:translations/modes_block_party_core_give_block


# Playsound and remove shulker box
execute as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s
setblock 0 4 0 air

