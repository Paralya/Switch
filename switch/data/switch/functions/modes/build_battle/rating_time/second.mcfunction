
# Show Current theme
title @a actionbar [{"text":"Thème : ","color":"aqua"},{"nbt":"current_theme","storage":"switch:main","color":"yellow"}]

## Rating
# Equipment
gamemode creative @a
execute as @a if data entity @s Inventory[6] run clear @s
item replace entity @a weapon.offhand with warped_fungus_on_a_stick{CustomModelData:2010003,Unbreakable:1b}
item replace entity @a hotbar.0 with brown_concrete{display:{Name:'{"text":"Super Poop","color":"#8B4513","italic":false}'}}
item replace entity @a hotbar.1 with red_concrete{display:{Name:'{"text":"Poop","color":"red","italic":false}'}}
item replace entity @a hotbar.2 with green_concrete{display:{Name:'{"text":"OK","color":"dark_green","italic":false}'}}
item replace entity @a hotbar.3 with lime_concrete{display:{Name:'{"text":"Good","color":"green","italic":false}'}}
item replace entity @a hotbar.4 with magenta_concrete{display:{Name:'{"text":"Epic","color":"light_purple","italic":false}'}}
item replace entity @a hotbar.5 with yellow_concrete{display:{Name:'{"text":"Legendary","color":"gold","italic":false}'}}

## Timer
# Decrease remaining time
scoreboard players remove #remaining_time switch.data 1

# XP Bar
function switch:modes/build_battle/xp_bar_rating

# If the timer is equal to 1, save the build
execute if score #remaining_time switch.data matches 1 as @e[tag=switch.build_battle_save,limit=1] at @s run function switch:modes/build_battle/rating_time/save_build

# If the timer is equal to 0,
execute if score #remaining_time switch.data matches 0 run function switch:modes/build_battle/rating_time/time_up


