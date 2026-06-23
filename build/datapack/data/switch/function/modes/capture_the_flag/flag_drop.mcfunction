
#> switch:modes/capture_the_flag/flag_drop
#
# @executed	as @e[type=item_display,tag=switch.flag,sort=random] & at @s & positioned ~ ~ ~
#
# @within	switch:modes/capture_the_flag/flag_tick
#

# Drop the flag
function switch:modes/capture_the_flag/translations/flag_drop
function switch:modes/_common/flag/release_holders
execute on vehicle run tp @s ~ ~-2 ~

# Add free tag
tag @s add switch.free

