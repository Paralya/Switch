
# If index is 0, add the theme to the list
execute if score #index switch.data matches ..0 run data modify storage switch:main choosed_themes append from storage switch:main copy[0]
scoreboard players remove #index switch.data 1

# Else, remove the theme from the list and continue
execute if score #index switch.data matches 0.. run data remove storage switch:main copy[0]
execute if score #index switch.data matches 0.. if data storage switch:main copy[0] run function switch:modes/build_battle/preparation/get_theme

