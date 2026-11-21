
#> switch:modes/shoot_da_sheep/translations/reward
#
# @executed	as @e[type=sheep] & at @s
#
# @within	switch:modes/shoot_da_sheep/reward
#

# French
execute if score #color switch.data matches 0..3 run tellraw @s[scores={switch.lang=0}] {"text":"+1 point","color":"#AEBBD0"}
execute if score #color switch.data matches 4..5 run tellraw @s[scores={switch.lang=0}] {"text":"+2 points","color":"#00E5FF"}
execute if score #color switch.data matches 6..7 run tellraw @s[scores={switch.lang=0}] {"text":"+3 points","color":"#00E5FF"}
execute if score #color switch.data matches 8..9 run tellraw @s[scores={switch.lang=0}] {"text":"+4 points","color":"#FFE60A"}
execute if score #color switch.data matches 10..11 run tellraw @s[scores={switch.lang=0}] {"text":"+6 points","color":"#FFE60A"}
execute if score #color switch.data matches 12..13 run tellraw @s[scores={switch.lang=0}] {"text":"+8 points","color":"#FFA600"}
execute if score #color switch.data matches 14 run tellraw @s[scores={switch.lang=0}] {"text":"+10 points","color":"#FF3347"}
execute if score #color switch.data matches 15 run tellraw @s[scores={switch.lang=0}] {"text":"-50% points","color":"#6B788F"}

# English
execute if score #color switch.data matches 0..3 run tellraw @s[scores={switch.lang=1}] {"text":"+1 point","color":"#AEBBD0"}
execute if score #color switch.data matches 4..5 run tellraw @s[scores={switch.lang=1}] {"text":"+2 points","color":"#00E5FF"}
execute if score #color switch.data matches 6..7 run tellraw @s[scores={switch.lang=1}] {"text":"+3 points","color":"#00E5FF"}
execute if score #color switch.data matches 8..9 run tellraw @s[scores={switch.lang=1}] {"text":"+4 points","color":"#FFE60A"}
execute if score #color switch.data matches 10..11 run tellraw @s[scores={switch.lang=1}] {"text":"+6 points","color":"#FFE60A"}
execute if score #color switch.data matches 12..13 run tellraw @s[scores={switch.lang=1}] {"text":"+8 points","color":"#FFA600"}
execute if score #color switch.data matches 14 run tellraw @s[scores={switch.lang=1}] {"text":"+10 points","color":"#FF3347"}
execute if score #color switch.data matches 15 run tellraw @s[scores={switch.lang=1}] {"text":"-50% points","color":"#6B788F"}

