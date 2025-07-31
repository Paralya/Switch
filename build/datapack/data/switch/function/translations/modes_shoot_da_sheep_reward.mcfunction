
#> switch:translations/modes_shoot_da_sheep_reward
#
# @executed	as @e[type=sheep] & at @s
#
# @within	switch:modes/shoot_da_sheep/reward
#

# French
execute if score #color switch.data matches 0..3 run tellraw @s[scores={switch.lang=0}] {"text":"+1 point","color":"gray"}
execute if score #color switch.data matches 4..5 run tellraw @s[scores={switch.lang=0}] {"text":"+2 points","color":"aqua"}
execute if score #color switch.data matches 6..7 run tellraw @s[scores={switch.lang=0}] {"text":"+3 points","color":"aqua"}
execute if score #color switch.data matches 8..9 run tellraw @s[scores={switch.lang=0}] {"text":"+4 points","color":"yellow"}
execute if score #color switch.data matches 10..11 run tellraw @s[scores={switch.lang=0}] {"text":"+6 points","color":"yellow"}
execute if score #color switch.data matches 12..13 run tellraw @s[scores={switch.lang=0}] {"text":"+8 points","color":"gold"}
execute if score #color switch.data matches 14 run tellraw @s[scores={switch.lang=0}] {"text":"+10 points","color":"red"}
execute if score #color switch.data matches 15 run tellraw @s[scores={switch.lang=0}] {"text":"-50% points","color":"dark_gray"}

# English
execute if score #color switch.data matches 0..3 run tellraw @s[scores={switch.lang=1}] {"text":"+1 point","color":"gray"}
execute if score #color switch.data matches 4..5 run tellraw @s[scores={switch.lang=1}] {"text":"+2 points","color":"aqua"}
execute if score #color switch.data matches 6..7 run tellraw @s[scores={switch.lang=1}] {"text":"+3 points","color":"aqua"}
execute if score #color switch.data matches 8..9 run tellraw @s[scores={switch.lang=1}] {"text":"+4 points","color":"yellow"}
execute if score #color switch.data matches 10..11 run tellraw @s[scores={switch.lang=1}] {"text":"+6 points","color":"yellow"}
execute if score #color switch.data matches 12..13 run tellraw @s[scores={switch.lang=1}] {"text":"+8 points","color":"gold"}
execute if score #color switch.data matches 14 run tellraw @s[scores={switch.lang=1}] {"text":"+10 points","color":"red"}
execute if score #color switch.data matches 15 run tellraw @s[scores={switch.lang=1}] {"text":"-50% points","color":"dark_gray"}

