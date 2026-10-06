
#> switch:modes/build_battle/calls/joined
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:engine/signals/macro_joined
#

execute if data storage switch:main {current_game:"build_battle"} in switch:build_battle run function switch:modes/build_battle/joined

