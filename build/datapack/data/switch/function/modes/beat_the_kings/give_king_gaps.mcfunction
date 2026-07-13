
#> switch:modes/beat_the_kings/give_king_gaps
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/beat_the_kings/give_items/king with storage switch:temp king_gaps
#
# @args		count (unknown)
#

$item replace entity @s hotbar.7 with golden_apple $(count)

