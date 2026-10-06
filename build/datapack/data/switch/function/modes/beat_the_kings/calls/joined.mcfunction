
#> switch:modes/beat_the_kings/calls/joined
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:engine/signals/macro_joined
#

execute if data storage switch:main {current_game:"beat_the_kings"} run function switch:modes/beat_the_kings/death/player

