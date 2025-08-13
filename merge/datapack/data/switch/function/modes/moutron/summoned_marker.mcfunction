
# Add tag & set color
tag @s add switch.moutron_marker
scoreboard players operation @s switch.temp.color = #color switch.data

# Remember owner for kill detection
data modify entity @s data.Owner set from storage switch:temp Owner

