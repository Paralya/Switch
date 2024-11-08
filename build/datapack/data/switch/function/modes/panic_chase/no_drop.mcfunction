
#> switch:modes/panic_chase/no_drop
#
# @within	switch:modes/panic_chase/tick
#

tag @s add switch.checked
data modify entity @s Owner set from entity @s Thrower
data modify entity @s PickupDelay set value 0s

