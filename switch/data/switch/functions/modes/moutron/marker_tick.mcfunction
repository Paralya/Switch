
# Increase score
scoreboard players add @s switch.temp.moutron 1

# Place stained glass pane depending on color
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 1 if block ~ ~ ~ air run setblock ~ ~ ~ orange_stained_glass_pane
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 2 if block ~ ~ ~ air run setblock ~ ~ ~ magenta_stained_glass_pane
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 3 if block ~ ~ ~ air run setblock ~ ~ ~ light_blue_stained_glass_pane
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 4 if block ~ ~ ~ air run setblock ~ ~ ~ yellow_stained_glass_pane
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 5 if block ~ ~ ~ air run setblock ~ ~ ~ lime_stained_glass_pane
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 6 if block ~ ~ ~ air run setblock ~ ~ ~ pink_stained_glass_pane
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 7 if block ~ ~ ~ air run setblock ~ ~ ~ gray_stained_glass_pane
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 8 if block ~ ~ ~ air run setblock ~ ~ ~ light_gray_stained_glass_pane
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 9 if block ~ ~ ~ air run setblock ~ ~ ~ cyan_stained_glass_pane
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 10 if block ~ ~ ~ air run setblock ~ ~ ~ purple_stained_glass_pane
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 11 if block ~ ~ ~ air run setblock ~ ~ ~ blue_stained_glass_pane
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 12 if block ~ ~ ~ air run setblock ~ ~ ~ brown_stained_glass_pane
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 13 if block ~ ~ ~ air run setblock ~ ~ ~ green_stained_glass_pane
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 14 if block ~ ~ ~ air run setblock ~ ~ ~ red_stained_glass_pane
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 15 if block ~ ~ ~ air run setblock ~ ~ ~ black_stained_glass_pane

# If score reaches life time, kill the entity and remove the block
execute if score @s switch.temp.moutron > #life_time switch.data if block ~ ~ ~ #switch:moutron/glass_panes run setblock ~ ~ ~ air
execute if score @s switch.temp.moutron > #life_time switch.data run kill @s

