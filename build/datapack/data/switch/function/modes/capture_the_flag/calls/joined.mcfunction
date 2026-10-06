
#> switch:modes/capture_the_flag/calls/joined
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:engine/signals/macro_joined
#

execute if data storage switch:main {current_game:"capture_the_flag"} run function switch:modes/capture_the_flag/joined

