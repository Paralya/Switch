
#> sheepwars:sheeps/blink
#
# @within			sheepwars:sheeps/tick_sheep
# @executed			as & at the sheep (that can explode)
#
# @description		Score sheepwars.data is supposed to be at least 90 (ticks).
#

# Remembers the sheep color
execute if score @s sheepwars.data matches 90 store result score @s sheepwars.previous_color run data get entity @s Color

## Makes the sheep blink (Explode at 9.5s : 190 ticks)
# Normal
execute if score @s sheepwars.data matches 90 run data modify entity @s Color set value 0
execute if score @s sheepwars.data matches 100 store result entity @s Color byte 1 run scoreboard players get @s sheepwars.previous_color
execute if score @s sheepwars.data matches 110 run data modify entity @s Color set value 0
execute if score @s sheepwars.data matches 120 store result entity @s Color byte 1 run scoreboard players get @s sheepwars.previous_color
execute if score @s sheepwars.data matches 130 run data modify entity @s Color set value 0
execute if score @s sheepwars.data matches 140 store result entity @s Color byte 1 run scoreboard players get @s sheepwars.previous_color

# Fast
execute if score @s sheepwars.data matches 145 run data modify entity @s Color set value 0
execute if score @s sheepwars.data matches 150 store result entity @s Color byte 1 run scoreboard players get @s sheepwars.previous_color
execute if score @s sheepwars.data matches 155 run data modify entity @s Color set value 0
execute if score @s sheepwars.data matches 160 store result entity @s Color byte 1 run scoreboard players get @s sheepwars.previous_color
execute if score @s sheepwars.data matches 165 run data modify entity @s Color set value 0

# Very fast
execute if score @s sheepwars.data matches 167 run data modify entity @s Color set value 0
execute if score @s sheepwars.data matches 169 store result entity @s Color byte 1 run scoreboard players get @s sheepwars.previous_color
execute if score @s sheepwars.data matches 171 run data modify entity @s Color set value 0
execute if score @s sheepwars.data matches 173 store result entity @s Color byte 1 run scoreboard players get @s sheepwars.previous_color
execute if score @s sheepwars.data matches 175 run data modify entity @s Color set value 0
execute if score @s sheepwars.data matches 177 store result entity @s Color byte 1 run scoreboard players get @s sheepwars.previous_color
execute if score @s sheepwars.data matches 179 run data modify entity @s Color set value 0
execute if score @s sheepwars.data matches 181 store result entity @s Color byte 1 run scoreboard players get @s sheepwars.previous_color
execute if score @s sheepwars.data matches 183 run data modify entity @s Color set value 0
execute if score @s sheepwars.data matches 185 store result entity @s Color byte 1 run scoreboard players get @s sheepwars.previous_color
execute if score @s sheepwars.data matches 187 run data modify entity @s Color set value 0
execute if score @s sheepwars.data matches 189 store result entity @s Color byte 1 run scoreboard players get @s sheepwars.previous_color

# Do nothing at 190 ticks in this function

