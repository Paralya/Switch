
#> switch:modes/laser_game/calls/joined
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:engine/signals/macro_joined
#

execute if data storage switch:main {current_game:"laser_game"} run function switch:modes/laser_game/joined

