
#> switch:modes/glassrunner/snowball/use
#
# @within	switch:modes/glassrunner/tick_player
#

tag @s add switch.glassrunner.owner
execute as @e[type=minecraft:snowball,distance=..5,tag=!switch.glassrunner.snowball] run function switch:modes/glassrunner/snowball/repart
tag @s remove switch.glassrunner.owner

scoreboard players remove @s switch.glassrunner.use_snowball 1

execute positioned 2925 129 2925 if entity @s[team=switch.glassrunner.red,distance=..3] run loot give @s loot switch:glassrunner/snowball_bridge_red
execute positioned 3075 129 3075 if entity @s[team=switch.glassrunner.blue,distance=..3] run loot give @s loot switch:glassrunner/snowball_bridge_blue

