
#> switch:modes/infected/calls/joined
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:engine/signals/macro_joined
#

execute if data storage switch:main {current_game:"infected"} run function switch:modes/infected/joined

