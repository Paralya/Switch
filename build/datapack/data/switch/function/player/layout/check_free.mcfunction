
#> switch:player/layout/check_free
#
# @executed	as @a[tag=!detached,sort=random] & at @s
#
# @within	switch:player/layout/place
#

execute store result storage switch:layout v.w int 1 run scoreboard players get #want switch.data
function switch:player/layout/check_free_macro with storage switch:layout v

