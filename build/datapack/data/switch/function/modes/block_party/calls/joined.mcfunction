
#> switch:modes/block_party/calls/joined
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:engine/signals/macro_joined
#

execute if data storage switch:main {current_game:"block_party"} run function switch:modes/block_party/joined

