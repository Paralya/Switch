
#> switch:modes/beat_the_kings/give_items
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/beat_the_kings/start [ as @a[tag=!detached] & at @s ]
#

execute if entity @s[team=switch.temp.civil] run function switch:modes/beat_the_kings/give_items/civil
execute if entity @s[team=switch.temp.king] run function switch:modes/beat_the_kings/give_items/king

attribute @s attack_speed base set 1024

