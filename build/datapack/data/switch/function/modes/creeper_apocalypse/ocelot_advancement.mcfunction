
#> switch:modes/creeper_apocalypse/ocelot_advancement
#
# @within	switch:modes/creeper_apocalypse/second
#

execute store result score #health switch.data run data get entity @s Health
execute if score #health switch.data matches ..19 run scoreboard players reset @s switch.temp.ocelot

