
#> switch:modes/glassrunner/money_maker/tick
#
# @within	switch:modes/glassrunner/tick
#

execute positioned ~ ~-2 ~ as @a[distance=..3] at @s if block ~ ~-1 ~ gold_block run scoreboard players add @s switch.glassrunner.money_maker 1

