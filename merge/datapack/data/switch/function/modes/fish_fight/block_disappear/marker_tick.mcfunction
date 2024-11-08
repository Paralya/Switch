
scoreboard players remove @s switch.data 1
execute if score @s switch.data matches ..0 at @s run setblock ~ ~ ~ air destroy
execute if score @s switch.data matches ..0 run kill @e[type=item,sort=nearest,limit=1]
execute if score @s switch.data matches ..0 run kill @s

