
# Place the papers in a shulker box with their name
setblock 0 0 0 air
setblock 0 1 0 air
setblock 0 0 0 yellow_shulker_box
setblock 0 1 0 oak_sign
item replace block 0 0 0 container.0 with paper{display:{Lore:['""']},HideFlags:7}
item replace block 0 0 0 container.1 with paper{display:{Lore:['""']},HideFlags:7}
item replace block 0 0 0 container.2 with paper{display:{Lore:['""']},HideFlags:7}
item replace block 0 0 0 container.3 with paper{display:{Lore:['""']},HideFlags:7}
item replace block 0 0 0 container.4 with paper{display:{Lore:['""']},HideFlags:7}
data modify block 0 1 0 front_text.messages[0] set value '{"nbt":"choosed_themes[0]","storage":"switch:main","color":"yellow","italic":false}'
data modify block 0 0 0 Items[0].tag.display.Name set from block 0 1 0 front_text.messages[0]
data modify block 0 1 0 front_text.messages[0] set value '{"nbt":"choosed_themes[1]","storage":"switch:main","color":"yellow","italic":false}'
data modify block 0 0 0 Items[1].tag.display.Name set from block 0 1 0 front_text.messages[0]
data modify block 0 1 0 front_text.messages[0] set value '{"nbt":"choosed_themes[2]","storage":"switch:main","color":"yellow","italic":false}'
data modify block 0 0 0 Items[2].tag.display.Name set from block 0 1 0 front_text.messages[0]
data modify block 0 1 0 front_text.messages[0] set value '{"nbt":"choosed_themes[3]","storage":"switch:main","color":"yellow","italic":false}'
data modify block 0 0 0 Items[3].tag.display.Name set from block 0 1 0 front_text.messages[0]
data modify block 0 1 0 front_text.messages[0] set value '{"nbt":"choosed_themes[4]","storage":"switch:main","color":"yellow","italic":false}'
data modify block 0 0 0 Items[4].tag.display.Name set from block 0 1 0 front_text.messages[0]

# Change the paper Count depending on their number of votes
execute if score #vote_theme_1 switch.data matches 1.. store result block 0 0 0 Items[0].Count byte 1 run scoreboard players get #vote_theme_1 switch.data
execute if score #vote_theme_2 switch.data matches 1.. store result block 0 0 0 Items[1].Count byte 1 run scoreboard players get #vote_theme_2 switch.data
execute if score #vote_theme_3 switch.data matches 1.. store result block 0 0 0 Items[2].Count byte 1 run scoreboard players get #vote_theme_3 switch.data
execute if score #vote_theme_4 switch.data matches 1.. store result block 0 0 0 Items[3].Count byte 1 run scoreboard players get #vote_theme_4 switch.data
execute if score #vote_theme_5 switch.data matches 1.. store result block 0 0 0 Items[4].Count byte 1 run scoreboard players get #vote_theme_5 switch.data

# Change the paper Lore depending on their number of votes
execute if score #vote_theme_1 switch.data matches 2.. run data modify block 0 1 0 front_text.messages[0] set value '[{"score":{"name":"#vote_theme_1","objective":"switch.data"},"color":"aqua","italic":false},{"text":" votes","color":"gray"}]'
execute if score #vote_theme_1 switch.data matches ..1 run data modify block 0 1 0 front_text.messages[0] set value '[{"score":{"name":"#vote_theme_1","objective":"switch.data"},"color":"aqua","italic":false},{"text":" vote","color":"gray"}]'
data modify block 0 0 0 Items[0].tag.display.Lore append from block 0 1 0 front_text.messages[0]
execute if score #vote_theme_2 switch.data matches 2.. run data modify block 0 1 0 front_text.messages[0] set value '[{"score":{"name":"#vote_theme_2","objective":"switch.data"},"color":"aqua","italic":false},{"text":" votes","color":"gray"}]'
execute if score #vote_theme_2 switch.data matches ..1 run data modify block 0 1 0 front_text.messages[0] set value '[{"score":{"name":"#vote_theme_2","objective":"switch.data"},"color":"aqua","italic":false},{"text":" vote","color":"gray"}]'
data modify block 0 0 0 Items[1].tag.display.Lore append from block 0 1 0 front_text.messages[0]
execute if score #vote_theme_3 switch.data matches 2.. run data modify block 0 1 0 front_text.messages[0] set value '[{"score":{"name":"#vote_theme_3","objective":"switch.data"},"color":"aqua","italic":false},{"text":" votes","color":"gray"}]'
execute if score #vote_theme_3 switch.data matches ..1 run data modify block 0 1 0 front_text.messages[0] set value '[{"score":{"name":"#vote_theme_3","objective":"switch.data"},"color":"aqua","italic":false},{"text":" vote","color":"gray"}]'
data modify block 0 0 0 Items[2].tag.display.Lore append from block 0 1 0 front_text.messages[0]
execute if score #vote_theme_4 switch.data matches 2.. run data modify block 0 1 0 front_text.messages[0] set value '[{"score":{"name":"#vote_theme_4","objective":"switch.data"},"color":"aqua","italic":false},{"text":" votes","color":"gray"}]'
execute if score #vote_theme_4 switch.data matches ..1 run data modify block 0 1 0 front_text.messages[0] set value '[{"score":{"name":"#vote_theme_4","objective":"switch.data"},"color":"aqua","italic":false},{"text":" vote","color":"gray"}]'
data modify block 0 0 0 Items[3].tag.display.Lore append from block 0 1 0 front_text.messages[0]
execute if score #vote_theme_5 switch.data matches 2.. run data modify block 0 1 0 front_text.messages[0] set value '[{"score":{"name":"#vote_theme_5","objective":"switch.data"},"color":"aqua","italic":false},{"text":" votes","color":"gray"}]'
execute if score #vote_theme_5 switch.data matches ..1 run data modify block 0 1 0 front_text.messages[0] set value '[{"score":{"name":"#vote_theme_5","objective":"switch.data"},"color":"aqua","italic":false},{"text":" vote","color":"gray"}]'
data modify block 0 0 0 Items[4].tag.display.Lore append from block 0 1 0 front_text.messages[0]

# Enchant the paper that the player has voted for
execute if score @s switch.temp.theme_vote matches 1 run data modify block 0 0 0 Items[0].id set value "minecraft:book"
execute if score @s switch.temp.theme_vote matches 2 run data modify block 0 0 0 Items[1].id set value "minecraft:book"
execute if score @s switch.temp.theme_vote matches 3 run data modify block 0 0 0 Items[2].id set value "minecraft:book"
execute if score @s switch.temp.theme_vote matches 4 run data modify block 0 0 0 Items[3].id set value "minecraft:book"
execute if score @s switch.temp.theme_vote matches 5 run data modify block 0 0 0 Items[4].id set value "minecraft:book"

# Place the papers in the inventory
execute if data entity @s Inventory[5] run clear @s
item replace entity @s[nbt=!{Inventory:[{Slot:20b}]}] inventory.11 from block 0 0 0 container.0
item replace entity @s[nbt=!{Inventory:[{Slot:21b}]}] inventory.12 from block 0 0 0 container.1
item replace entity @s[nbt=!{Inventory:[{Slot:22b}]}] inventory.13 from block 0 0 0 container.2
item replace entity @s[nbt=!{Inventory:[{Slot:23b}]}] inventory.14 from block 0 0 0 container.3
item replace entity @s[nbt=!{Inventory:[{Slot:24b}]}] inventory.15 from block 0 0 0 container.4

# Remove blocks
setblock 0 0 0 air
setblock 0 1 0 air

