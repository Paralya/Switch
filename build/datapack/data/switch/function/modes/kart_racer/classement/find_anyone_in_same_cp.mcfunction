
#> switch:modes/kart_racer/classement/find_anyone_in_same_cp
#
# @executed	as @a[tag=!detached]
#
# @within	switch:modes/kart_racer/classement/main [ as @a[tag=!detached] ]
#

execute unless score @s switch.temp matches 1 run function switch:modes/kart_racer/classement/find_anyone_in_same_cp_more

