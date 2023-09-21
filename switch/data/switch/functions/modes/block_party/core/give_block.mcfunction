

## Switch case
data modify storage switch:main Item set from block 0 0 0 Items[0]
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
execute if score #bp_block switch.data matches -1 run data modify block 0 0 0 Items[0].tag.display.Name set value '{"text":"Beige","italic":false,"color":"aqua"}'
execute if score #bp_block switch.data matches 0 run data modify block 0 0 0 Items[0].tag.display.Name set value '{"text":"White / Blanc","italic":false,"color":"aqua"}'
execute if score #bp_block switch.data matches 1 run data modify block 0 0 0 Items[0].tag.display.Name set value '{"text":"Orange","italic":false,"color":"aqua"}'
execute if score #bp_block switch.data matches 2 run data modify block 0 0 0 Items[0].tag.display.Name set value '{"text":"Magenta","italic":false,"color":"aqua"}'
execute if score #bp_block switch.data matches 3 run data modify block 0 0 0 Items[0].tag.display.Name set value '{"text":"Light Blue / Bleu clair","italic":false,"color":"aqua"}'
execute if score #bp_block switch.data matches 4 run data modify block 0 0 0 Items[0].tag.display.Name set value '{"text":"Yellow / Jaune","italic":false,"color":"aqua"}'
execute if score #bp_block switch.data matches 5 run data modify block 0 0 0 Items[0].tag.display.Name set value '{"text":"Lime / Vert clair","italic":false,"color":"aqua"}'
execute if score #bp_block switch.data matches 6 run data modify block 0 0 0 Items[0].tag.display.Name set value '{"text":"Pink / Rose","italic":false,"color":"aqua"}'
execute if score #bp_block switch.data matches 7 run data modify block 0 0 0 Items[0].tag.display.Name set value '{"text":"Gray / Gris","italic":false,"color":"aqua"}'
execute if score #bp_block switch.data matches 8 run data modify block 0 0 0 Items[0].tag.display.Name set value '{"text":"Light Gray / Gris clair","italic":false,"color":"aqua"}'
execute if score #bp_block switch.data matches 9 run data modify block 0 0 0 Items[0].tag.display.Name set value '{"text":"Cyan","italic":false,"color":"aqua"}'
execute if score #bp_block switch.data matches 10 run data modify block 0 0 0 Items[0].tag.display.Name set value '{"text":"Purple / Violet","italic":false,"color":"aqua"}'
execute if score #bp_block switch.data matches 11 run data modify block 0 0 0 Items[0].tag.display.Name set value '{"text":"Blue / Bleu","italic":false,"color":"aqua"}'
execute if score #bp_block switch.data matches 12 run data modify block 0 0 0 Items[0].tag.display.Name set value '{"text":"Brown / Marron","italic":false,"color":"aqua"}'
execute if score #bp_block switch.data matches 13 run data modify block 0 0 0 Items[0].tag.display.Name set value '{"text":"Green / Vert","italic":false,"color":"aqua"}'
execute if score #bp_block switch.data matches 14 run data modify block 0 0 0 Items[0].tag.display.Name set value '{"text":"Red / Rouge","italic":false,"color":"aqua"}'
execute if score #bp_block switch.data matches 15 run data modify block 0 0 0 Items[0].tag.display.Name set value '{"text":"Black / Noir","italic":false,"color":"aqua"}'
item replace entity @a[gamemode=adventure] hotbar.0 from block 0 0 0 container.0
item replace entity @a[gamemode=adventure] hotbar.2 from block 0 0 0 container.0
item replace entity @a[gamemode=adventure] hotbar.4 from block 0 0 0 container.0
item replace entity @a[gamemode=adventure] hotbar.6 from block 0 0 0 container.0
item replace entity @a[gamemode=adventure] hotbar.8 from block 0 0 0 container.0

# Title players
execute if score #bp_block switch.data matches -1 run title @a title {"text":"Beige","italic":false,"color":"#c8ad7f"}
execute if score #bp_block switch.data matches 0 run title @a title {"text":"White / Blanc","italic":false,"color":"#ffffff"}
execute if score #bp_block switch.data matches 1 run title @a title {"text":"Orange","italic":false,"color":"#ff7f00"}
execute if score #bp_block switch.data matches 2 run title @a title {"text":"Magenta","italic":false,"color":"#ff00ff"}
execute if score #bp_block switch.data matches 3 run title @a title {"text":"Light Blue / Bleu clair","italic":false,"color":"#00ffff"}
execute if score #bp_block switch.data matches 4 run title @a title {"text":"Yellow / Jaune","italic":false,"color":"#ffff00"}
execute if score #bp_block switch.data matches 5 run title @a title {"text":"Lime / Vert clair","italic":false,"color":"#00ff00"}
execute if score #bp_block switch.data matches 6 run title @a title {"text":"Pink / Rose","italic":false,"color":"#ff7faa"}
execute if score #bp_block switch.data matches 7 run title @a title {"text":"Gray / Gris","italic":false,"color":"#7f7f7f"}
execute if score #bp_block switch.data matches 8 run title @a title {"text":"Light Gray / Gris clair","italic":false,"color":"#c0c0c0"}
execute if score #bp_block switch.data matches 9 run title @a title {"text":"Cyan","italic":false,"color":"#009090"}
execute if score #bp_block switch.data matches 10 run title @a title {"text":"Purple / Violet","italic":false,"color":"#7f00ff"}
execute if score #bp_block switch.data matches 11 run title @a title {"text":"Blue / Bleu","italic":false,"color":"#0000ff"}
execute if score #bp_block switch.data matches 12 run title @a title {"text":"Brown / Marron","italic":false,"color":"#7f3f00"}
execute if score #bp_block switch.data matches 13 run title @a title {"text":"Green / Vert","italic":false,"color":"#006000"}
execute if score #bp_block switch.data matches 14 run title @a title {"text":"Red / Rouge","italic":false,"color":"#ff0000"}
execute if score #bp_block switch.data matches 15 run title @a title {"text":"Black / Noir","italic":false,"color":"#000000"}

# Tellraw players
execute if score #bp_block switch.data matches -1 run tellraw @a {"text":"Beige","italic":false,"color":"#c8ad7f"}
execute if score #bp_block switch.data matches 0 run tellraw @a {"text":"White / Blanc","italic":false,"color":"#ffffff"}
execute if score #bp_block switch.data matches 1 run tellraw @a {"text":"Orange","italic":false,"color":"#ff7f00"}
execute if score #bp_block switch.data matches 2 run tellraw @a {"text":"Magenta","italic":false,"color":"#ff00ff"}
execute if score #bp_block switch.data matches 3 run tellraw @a {"text":"Light Blue / Bleu clair","italic":false,"color":"#00ffff"}
execute if score #bp_block switch.data matches 4 run tellraw @a {"text":"Yellow / Jaune","italic":false,"color":"#ffff00"}
execute if score #bp_block switch.data matches 5 run tellraw @a {"text":"Lime / Vert clair","italic":false,"color":"#00ff00"}
execute if score #bp_block switch.data matches 6 run tellraw @a {"text":"Pink / Rose","italic":false,"color":"#ff7faa"}
execute if score #bp_block switch.data matches 7 run tellraw @a {"text":"Gray / Gris","italic":false,"color":"#7f7f7f"}
execute if score #bp_block switch.data matches 8 run tellraw @a {"text":"Light Gray / Gris clair","italic":false,"color":"#c0c0c0"}
execute if score #bp_block switch.data matches 9 run tellraw @a {"text":"Cyan","italic":false,"color":"#009090"}
execute if score #bp_block switch.data matches 10 run tellraw @a {"text":"Purple / Violet","italic":false,"color":"#7f00ff"}
execute if score #bp_block switch.data matches 11 run tellraw @a {"text":"Blue / Bleu","italic":false,"color":"#0000ff"}
execute if score #bp_block switch.data matches 12 run tellraw @a {"text":"Brown / Marron","italic":false,"color":"#7f3f00"}
execute if score #bp_block switch.data matches 13 run tellraw @a {"text":"Green / Vert","italic":false,"color":"#006000"}
execute if score #bp_block switch.data matches 14 run tellraw @a {"text":"Red / Rouge","italic":false,"color":"#ff0000"}
execute if score #bp_block switch.data matches 15 run tellraw @a {"text":"Black / Noir","italic":false,"color":"#000000"}


# Playsound and remove shulker box
execute as @a at @s run playsound entity.experience_orb.pickup ambient @s
setblock 0 0 0 air

