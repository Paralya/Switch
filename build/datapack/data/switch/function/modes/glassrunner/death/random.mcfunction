
#> switch:modes/glassrunner/death/random
#
# @within	switch:modes/glassrunner/death/death
#

execute store result score #nb_red switch.data if entity @a[tag=!detached,team=switch.glassrunner.red]
execute store result score #nb_blue switch.data if entity @a[tag=!detached,team=switch.glassrunner.blue]

execute if score #nb_red switch.data > #nb_blue switch.data run team join switch.glassrunner.blue @s
execute if score #nb_red switch.data <= #nb_blue switch.data run team join switch.glassrunner.red @s

