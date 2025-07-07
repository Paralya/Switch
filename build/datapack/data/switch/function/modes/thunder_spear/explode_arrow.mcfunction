
#> switch:modes/thunder_spear/explode_arrow
#
# @within	switch:modes/thunder_spear/tick
#

# Explosion damage
execute on origin run tag @s add switch.origin
execute as @a[tag=!detached,distance=..15] run damage @s 0.000000001 minecraft:player_explosion by @p[tag=switch.origin]
execute on origin run tag @s remove switch.origin

# Summon tnt
data modify storage switch:temp Owner set from entity @s Owner
execute summon tnt run function switch:modes/thunder_spear/on_new_tnt
playsound switch:explosion ambient @a[distance=..50]

# Kill the arrow
kill @s

