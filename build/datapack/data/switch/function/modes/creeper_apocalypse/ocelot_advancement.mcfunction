
#> switch:modes/creeper_apocalypse/ocelot_advancement
#
# @executed	as @a[tag=!detached]
#
# @within	switch:modes/creeper_apocalypse/second [ as @a[tag=!detached] ]
#

execute store result score #health switch.data run data get entity @s Health
execute if score #health switch.data matches ..19 run scoreboard players reset @s switch.temp.ocelot

