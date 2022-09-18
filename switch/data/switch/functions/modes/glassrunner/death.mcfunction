clear @s
execute if entity @s[team=switch.glassrunner.red] run function switch:modes/glassrunner/start/team/red
execute if entity @s[team=switch.glassrunner.blue] run function switch:modes/glassrunner/start/team/blue
spreadplayers 2925 2925 0 2 true @s[team=switch.glassrunner.red]
spreadplayers 3075 3075 0 2 true @s[team=switch.glassrunner.blue]
execute at @s facing 3000 128 3000 run tp ~ ~ ~
scoreboard players set @s switch.glassrunner.deathCount 0