
#> sheepwars:sheeps/blink
#
# @within			sheepwars:sheeps/tick_sheep
# @executed			as & at the sheep (that can explode)
#
# @description		Score sheepwars.data is supposed to be at least 50 (ticks).
#

# Remembers the sheep color
execute if score @s sheepwars.data matches 50 store result score @s sheepwars.previous_color run data get entity @s Color

## Makes the sheep blink (Explode at 7.5s : 150 ticks)
# Normal
execute if score @s sheepwars.data matches 50 run data modify entity @s Color set value 0
execute if score @s sheepwars.data matches 60 store result entity @s Color byte 1 run scoreboard players get @s sheepwars.previous_color
execute if score @s sheepwars.data matches 70 run data modify entity @s Color set value 0
execute if score @s sheepwars.data matches 80 store result entity @s Color byte 1 run scoreboard players get @s sheepwars.previous_color
execute if score @s sheepwars.data matches 90 run data modify entity @s Color set value 0
execute if score @s sheepwars.data matches 100 store result entity @s Color byte 1 run scoreboard players get @s sheepwars.previous_color

# Fast
execute if score @s sheepwars.data matches 105 run data modify entity @s Color set value 0
execute if score @s sheepwars.data matches 110 store result entity @s Color byte 1 run scoreboard players get @s sheepwars.previous_color
execute if score @s sheepwars.data matches 115 run data modify entity @s Color set value 0
execute if score @s sheepwars.data matches 120 store result entity @s Color byte 1 run scoreboard players get @s sheepwars.previous_color
execute if score @s sheepwars.data matches 125 run data modify entity @s Color set value 0

# Very fast
execute if score @s sheepwars.data matches 127 run data modify entity @s Color set value 0
execute if score @s sheepwars.data matches 129 store result entity @s Color byte 1 run scoreboard players get @s sheepwars.previous_color
execute if score @s sheepwars.data matches 131 run data modify entity @s Color set value 0
execute if score @s sheepwars.data matches 133 store result entity @s Color byte 1 run scoreboard players get @s sheepwars.previous_color
execute if score @s sheepwars.data matches 135 run data modify entity @s Color set value 0
execute if score @s sheepwars.data matches 137 store result entity @s Color byte 1 run scoreboard players get @s sheepwars.previous_color
execute if score @s sheepwars.data matches 139 run data modify entity @s Color set value 0
execute if score @s sheepwars.data matches 141 store result entity @s Color byte 1 run scoreboard players get @s sheepwars.previous_color
execute if score @s sheepwars.data matches 143 run data modify entity @s Color set value 0
execute if score @s sheepwars.data matches 145 store result entity @s Color byte 1 run scoreboard players get @s sheepwars.previous_color
execute if score @s sheepwars.data matches 147 run data modify entity @s Color set value 0
execute if score @s sheepwars.data matches 149 store result entity @s Color byte 1 run scoreboard players get @s sheepwars.previous_color

# Do nothing at 150 ticks in this function


