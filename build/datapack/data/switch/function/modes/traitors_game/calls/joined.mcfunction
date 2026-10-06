
#> switch:modes/traitors_game/calls/joined
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:engine/signals/macro_joined
#

execute if data storage switch:main {current_game:"traitors_game"} run function switch:modes/traitors_game/joined

