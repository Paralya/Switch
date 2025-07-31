
#> switch:modes/kart_racer/classement/try
#
# @executed	as @a[tag=!detached]
#
# @within	switch:modes/kart_racer/classement/main [ as @a[tag=!detached] ]
#

execute if score @s switch.temp matches 1 at @s run function switch:modes/kart_racer/classement/has_same_classement

