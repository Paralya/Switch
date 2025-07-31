
#> switch:modes/glassrunner/money_maker/tick
#
# @executed	as @e[tag=switch.glassrunner.money_maker] & at @s
#
# @within	switch:modes/glassrunner/tick [ as @e[tag=switch.glassrunner.money_maker] & at @s ]
#

execute positioned ~ ~-2 ~ as @a[distance=..3] at @s if block ~ ~-1 ~ gold_block run scoreboard players add @s switch.glassrunner.money_maker 1

