
#> switch:modes/fish_fight/no_drop
#
# @within	switch:modes/fish_fight/tick
#

tag @s add switch.checked
data modify entity @s Owner set from entity @s Thrower
data modify entity @s PickupDelay set value 0s

