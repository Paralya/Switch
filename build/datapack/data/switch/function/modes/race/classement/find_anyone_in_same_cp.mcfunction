
#> switch:modes/race/classement/find_anyone_in_same_cp
#
# @executed	as @a[tag=!detached]
#
# @within	switch:modes/race/classement/main [ as @a[tag=!detached] ]
#

execute unless score @s switch.temp matches 1 run function switch:modes/race/classement/find_anyone_in_same_cp_more

