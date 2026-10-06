
#> switch:modes/murder_mystery/calls/joined
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:engine/signals/macro_joined
#

execute if data storage switch:main {current_game:"murder_mystery"} run function switch:utils/classic_death

