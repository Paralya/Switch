
#> switch:modes/glassrunner/money_maker/add_money
#
# @executed	as @a[scores={switch.glassrunner.money_maker=60..}]
#
# @within	switch:modes/glassrunner/tick [ as @a[scores={switch.glassrunner.money_maker=60..}] ]
#

scoreboard players add @s switch.glassrunner.money 2
scoreboard players set @s switch.glassrunner.money_maker 0

xp add @s 2 levels


execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 0.5 2

