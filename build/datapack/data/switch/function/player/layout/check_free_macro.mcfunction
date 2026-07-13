
#> switch:player/layout/check_free_macro
#
# @executed	as @a[tag=!detached,sort=random] & at @s
#
# @within	switch:player/layout/check_free with storage switch:layout v
#
# @args		w (unknown)
#

$execute if data storage switch:layout free{s$(w):1b} run scoreboard players set #slot switch.data $(w)

