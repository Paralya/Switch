
#> switch:modes/thunder_spear/on_new_tnt
#
# @executed	at @s
#
# @within	switch:modes/thunder_spear/explode_arrow
#

# Modify Owner from storage
data modify entity @s Owner set from storage switch:temp Owner

# Modify fuse à 0s
data modify entity @s fuse set value 0s

