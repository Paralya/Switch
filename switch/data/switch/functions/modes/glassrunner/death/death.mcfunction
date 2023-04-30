
clear @s
effect clear @s

execute if entity @s[team=!switch.glassrunner.red,team=!switch.glassrunner.blue] run function switch:modes/glassrunner/death/random

execute if entity @s[team=switch.glassrunner.red] run function switch:modes/glassrunner/death/red
execute if entity @s[team=switch.glassrunner.blue] run function switch:modes/glassrunner/death/blue

function switch:modes/glassrunner/death/both

spreadplayers 2925 2925 0 2 true @s[team=switch.glassrunner.red]
spreadplayers 3075 3075 0 2 true @s[team=switch.glassrunner.blue]
execute at @s facing 3000 128 3000 run tp ~ 129 ~
scoreboard players set @s switch.glassrunner.deathCount 0

effect give @s resistance infinite 255 true
effect give @s jump_boost infinite 3 true

gamemode adventure @s

