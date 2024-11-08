
#> switch:modes/spleef/no_drop
#
# @within	switch:modes/spleef/tick
#

tag @s add switch.checked
execute if data entity @s Item{id:"snowball"} run kill @s
data modify entity @s Owner set from entity @s Thrower
data modify entity @s PickupDelay set value 0s

