
## Place the papers in a shulker box with their name
setblock 0 5 0 air
setblock 0 5 0 yellow_shulker_box
item replace block 0 5 0 container.0 with paper[item_name={"text":"","color":"yellow","italic":false},lore=[""]]
item replace block 0 5 0 container.1 with paper[item_name={"text":"","color":"yellow","italic":false},lore=[""]]
item replace block 0 5 0 container.2 with paper[item_name={"text":"","color":"yellow","italic":false},lore=[""]]
item replace block 0 5 0 container.3 with paper[item_name={"text":"","color":"yellow","italic":false},lore=[""]]
item replace block 0 5 0 container.4 with paper[item_name={"text":"","color":"yellow","italic":false},lore=[""]]

# French
execute if score @s switch.lang matches 0 run data modify block 0 5 0 Items[0].components."minecraft:item_name".text set from storage switch:main themes.theme1.fr
execute if score @s switch.lang matches 0 run data modify block 0 5 0 Items[1].components."minecraft:item_name".text set from storage switch:main themes.theme2.fr
execute if score @s switch.lang matches 0 run data modify block 0 5 0 Items[2].components."minecraft:item_name".text set from storage switch:main themes.theme3.fr
execute if score @s switch.lang matches 0 run data modify block 0 5 0 Items[3].components."minecraft:item_name".text set from storage switch:main themes.theme4.fr
execute if score @s switch.lang matches 0 run data modify block 0 5 0 Items[4].components."minecraft:item_name".text set from storage switch:main themes.theme5.fr

# English
execute if score @s switch.lang matches 1 run data modify block 0 5 0 Items[0].components."minecraft:item_name".text set from storage switch:main themes.theme1.en
execute if score @s switch.lang matches 1 run data modify block 0 5 0 Items[1].components."minecraft:item_name".text set from storage switch:main themes.theme2.en
execute if score @s switch.lang matches 1 run data modify block 0 5 0 Items[2].components."minecraft:item_name".text set from storage switch:main themes.theme3.en
execute if score @s switch.lang matches 1 run data modify block 0 5 0 Items[3].components."minecraft:item_name".text set from storage switch:main themes.theme4.en
execute if score @s switch.lang matches 1 run data modify block 0 5 0 Items[4].components."minecraft:item_name".text set from storage switch:main themes.theme5.en


# Change the paper Count depending on their number of votes
execute if score #vote_theme_1 switch.data matches 1.. store result block 0 5 0 Items[0].count int 1 run scoreboard players get #vote_theme_1 switch.data
execute if score #vote_theme_2 switch.data matches 1.. store result block 0 5 0 Items[1].count int 1 run scoreboard players get #vote_theme_2 switch.data
execute if score #vote_theme_3 switch.data matches 1.. store result block 0 5 0 Items[2].count int 1 run scoreboard players get #vote_theme_3 switch.data
execute if score #vote_theme_4 switch.data matches 1.. store result block 0 5 0 Items[3].count int 1 run scoreboard players get #vote_theme_4 switch.data
execute if score #vote_theme_5 switch.data matches 1.. store result block 0 5 0 Items[4].count int 1 run scoreboard players get #vote_theme_5 switch.data

## Change the paper lore depending on their number of votes
# 1
data modify storage switch:main input set value {Slot:0b, count:0, plurial:""}
execute store result storage switch:main input.count int 1 run scoreboard players get #vote_theme_1 switch.data
execute if score #vote_theme_1 switch.data matches 2.. run data modify storage switch:main input.plurial set value "s"
function switch:modes/build_battle/preparation/display_themes_macro with storage switch:main input
# 2
data modify storage switch:main input set value {Slot:1b, count:0, plurial:""}
execute store result storage switch:main input.count int 1 run scoreboard players get #vote_theme_2 switch.data
execute if score #vote_theme_2 switch.data matches 2.. run data modify storage switch:main input.plurial set value "s"
function switch:modes/build_battle/preparation/display_themes_macro with storage switch:main input
# 3
data modify storage switch:main input set value {Slot:2b, count:0, plurial:""}
execute store result storage switch:main input.count int 1 run scoreboard players get #vote_theme_3 switch.data
execute if score #vote_theme_3 switch.data matches 2.. run data modify storage switch:main input.plurial set value "s"
function switch:modes/build_battle/preparation/display_themes_macro with storage switch:main input
# 4
data modify storage switch:main input set value {Slot:3b, count:0, plurial:""}
execute store result storage switch:main input.count int 1 run scoreboard players get #vote_theme_4 switch.data
execute if score #vote_theme_4 switch.data matches 2.. run data modify storage switch:main input.plurial set value "s"
function switch:modes/build_battle/preparation/display_themes_macro with storage switch:main input
# 5
data modify storage switch:main input set value {Slot:4b, count:0, plurial:""}
execute store result storage switch:main input.count int 1 run scoreboard players get #vote_theme_5 switch.data
execute if score #vote_theme_5 switch.data matches 2.. run data modify storage switch:main input.plurial set value "s"
function switch:modes/build_battle/preparation/display_themes_macro with storage switch:main input


# Change the correct paper to a book
execute if score @s switch.temp.theme_vote matches 1 run data modify block 0 5 0 Items[0].id set value "minecraft:book"
execute if score @s switch.temp.theme_vote matches 2 run data modify block 0 5 0 Items[1].id set value "minecraft:book"
execute if score @s switch.temp.theme_vote matches 3 run data modify block 0 5 0 Items[2].id set value "minecraft:book"
execute if score @s switch.temp.theme_vote matches 4 run data modify block 0 5 0 Items[3].id set value "minecraft:book"
execute if score @s switch.temp.theme_vote matches 5 run data modify block 0 5 0 Items[4].id set value "minecraft:book"

# Place the papers in the inventory
execute if data entity @s Inventory[5] run clear @s
item replace entity @s[nbt=!{Inventory:[{Slot:20b}]}] inventory.11 from block 0 5 0 container.0
item replace entity @s[nbt=!{Inventory:[{Slot:21b}]}] inventory.12 from block 0 5 0 container.1
item replace entity @s[nbt=!{Inventory:[{Slot:22b}]}] inventory.13 from block 0 5 0 container.2
item replace entity @s[nbt=!{Inventory:[{Slot:23b}]}] inventory.14 from block 0 5 0 container.3
item replace entity @s[nbt=!{Inventory:[{Slot:24b}]}] inventory.15 from block 0 5 0 container.4

# Remove blocks
setblock 0 5 0 air

