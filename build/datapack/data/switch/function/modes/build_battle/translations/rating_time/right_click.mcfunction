
#> switch:modes/build_battle/translations/rating_time/right_click
#
# @executed	as @a[tag=!detached,scores={switch.right_click=1..}] & at @s
#
# @within	switch:modes/build_battle/rating_time/right_click
#

# French
execute if score #slot switch.data matches 0 run tellraw @s[scores={switch.lang=0}] {"text":"Super Poop","color":"#8B4513"}
execute if score #slot switch.data matches 1 run tellraw @s[scores={switch.lang=0}] {"text":"Poop","color":"#FF3347"}
execute if score #slot switch.data matches 2 run tellraw @s[scores={switch.lang=0}] {"text":"OK","color":"#1FA83C"}
execute if score #slot switch.data matches 3 run tellraw @s[scores={switch.lang=0}] {"text":"Good","color":"#2EFF8B"}
execute if score #slot switch.data matches 4 run tellraw @s[scores={switch.lang=0}] {"text":"Epic","color":"#FF8FD8"}
execute if score #slot switch.data matches 5 run tellraw @s[scores={switch.lang=0}] {"text":"Legendary","color":"#FFA600"}

# English
execute if score #slot switch.data matches 0 run tellraw @s[scores={switch.lang=1}] {"text":"Super Poop","color":"#8B4513"}
execute if score #slot switch.data matches 1 run tellraw @s[scores={switch.lang=1}] {"text":"Poop","color":"#FF3347"}
execute if score #slot switch.data matches 2 run tellraw @s[scores={switch.lang=1}] {"text":"OK","color":"#1FA83C"}
execute if score #slot switch.data matches 3 run tellraw @s[scores={switch.lang=1}] {"text":"Good","color":"#2EFF8B"}
execute if score #slot switch.data matches 4 run tellraw @s[scores={switch.lang=1}] {"text":"Epic","color":"#FF8FD8"}
execute if score #slot switch.data matches 5 run tellraw @s[scores={switch.lang=1}] {"text":"Legendary","color":"#FFA600"}

