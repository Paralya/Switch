
# Increase score
scoreboard players add @s switch.temp.moutron 1

# Place stained glass pane depending on color
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 1 run fill ~-0.2 ~ ~-0.2 ~0.2 ~ ~0.2 orange_stained_glass_pane replace air
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 2 run fill ~-0.2 ~ ~-0.2 ~0.2 ~ ~0.2 magenta_stained_glass_pane replace air
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 3 run fill ~-0.2 ~ ~-0.2 ~0.2 ~ ~0.2 light_blue_stained_glass_pane replace air
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 4 run fill ~-0.2 ~ ~-0.2 ~0.2 ~ ~0.2 yellow_stained_glass_pane replace air
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 5 run fill ~-0.2 ~ ~-0.2 ~0.2 ~ ~0.2 lime_stained_glass_pane replace air
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 6 run fill ~-0.2 ~ ~-0.2 ~0.2 ~ ~0.2 pink_stained_glass_pane replace air
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 7 run fill ~-0.2 ~ ~-0.2 ~0.2 ~ ~0.2 gray_stained_glass_pane replace air
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 8 run fill ~-0.2 ~ ~-0.2 ~0.2 ~ ~0.2 light_gray_stained_glass_pane replace air
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 9 run fill ~-0.2 ~ ~-0.2 ~0.2 ~ ~0.2 cyan_stained_glass_pane replace air
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 10 run fill ~-0.2 ~ ~-0.2 ~0.2 ~ ~0.2 purple_stained_glass_pane replace air
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 11 run fill ~-0.2 ~ ~-0.2 ~0.2 ~ ~0.2 blue_stained_glass_pane replace air
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 12 run fill ~-0.2 ~ ~-0.2 ~0.2 ~ ~0.2 brown_stained_glass_pane replace air
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 13 run fill ~-0.2 ~ ~-0.2 ~0.2 ~ ~0.2 green_stained_glass_pane replace air
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 14 run fill ~-0.2 ~ ~-0.2 ~0.2 ~ ~0.2 red_stained_glass_pane replace air
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 15 run fill ~-0.2 ~ ~-0.2 ~0.2 ~ ~0.2 black_stained_glass_pane replace air

# If score reaches life time, kill the entity and remove the block
execute if score @s switch.temp.moutron > #life_time switch.data run fill ~-0.2 ~ ~-0.2 ~0.2 ~ ~0.2 air replace #switch:moutron/glass_panes
execute if score @s switch.temp.moutron > #life_time switch.data run kill @s

