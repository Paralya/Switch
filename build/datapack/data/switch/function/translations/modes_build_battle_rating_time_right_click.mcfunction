
#> switch:translations/modes_build_battle_rating_time_right_click
#
# @executed	as @a[tag=!detached,scores={switch.right_click=1..}] & at @s
#
# @within	switch:modes/build_battle/rating_time/right_click
#

# French
execute if score #slot switch.data matches 0 run tellraw @s[scores={switch.lang=0}] {"text":"Super Poop","color":"#8B4513"}
execute if score #slot switch.data matches 1 run tellraw @s[scores={switch.lang=0}] {"text":"Poop","color":"red"}
execute if score #slot switch.data matches 2 run tellraw @s[scores={switch.lang=0}] {"text":"OK","color":"dark_green"}
execute if score #slot switch.data matches 3 run tellraw @s[scores={switch.lang=0}] {"text":"Good","color":"green"}
execute if score #slot switch.data matches 4 run tellraw @s[scores={switch.lang=0}] {"text":"Epic","color":"light_purple"}
execute if score #slot switch.data matches 5 run tellraw @s[scores={switch.lang=0}] {"text":"Legendary","color":"gold"}

# English
execute if score #slot switch.data matches 0 run tellraw @s[scores={switch.lang=1}] {"text":"Super Poop","color":"#8B4513"}
execute if score #slot switch.data matches 1 run tellraw @s[scores={switch.lang=1}] {"text":"Poop","color":"red"}
execute if score #slot switch.data matches 2 run tellraw @s[scores={switch.lang=1}] {"text":"OK","color":"dark_green"}
execute if score #slot switch.data matches 3 run tellraw @s[scores={switch.lang=1}] {"text":"Good","color":"green"}
execute if score #slot switch.data matches 4 run tellraw @s[scores={switch.lang=1}] {"text":"Epic","color":"light_purple"}
execute if score #slot switch.data matches 5 run tellraw @s[scores={switch.lang=1}] {"text":"Legendary","color":"gold"}

