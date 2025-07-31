
#> switch:modes/moutron/kill_kart
#
# @executed	as @e[tag=shopping_kart.kart,scores={shopping_kart.engine=..300}]
#
# @within	switch:modes/moutron/tick [ as @e[tag=shopping_kart.kart,scores={shopping_kart.engine=..300}] ]
#

# Dismount passengers and kill them
execute on passengers run function switch:modes/moutron/death

# Kill the sheep
tp @s 0 -10000 0
kill @s

