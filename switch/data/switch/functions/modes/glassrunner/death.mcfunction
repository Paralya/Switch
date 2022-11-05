clear @s
scoreboard players set #success switch.data 0
execute if entity @s[team=switch.glassrunner.red] run function switch:modes/glassrunner/start/team/red
execute if entity @s[team=switch.glassrunner.blue] run function switch:modes/glassrunner/start/team/blue

execute if score #success switch.data matches 0 run function switch:modes/glassrunner/death_2

loot give @s loot switch:glassrunner/bow
give @s arrow 8
spreadplayers 2925 2925 0 2 true @s[team=switch.glassrunner.red]
spreadplayers 3075 3075 0 2 true @s[team=switch.glassrunner.blue]
execute at @s facing 3000 128 3000 run tp ~ 129 ~
scoreboard players set @s switch.glassrunner.deathCount 0
effect give @s resistance 999999 255 true