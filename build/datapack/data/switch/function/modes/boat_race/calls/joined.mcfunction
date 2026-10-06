
#> switch:modes/boat_race/calls/joined
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:engine/signals/macro_joined
#

execute if data storage switch:main {current_game:"boat_race"} run function switch:modes/boat_race/death

