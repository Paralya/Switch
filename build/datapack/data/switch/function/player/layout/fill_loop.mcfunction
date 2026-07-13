
#> switch:player/layout/fill_loop
#
# @executed	as @a[tag=!detached,sort=random] & at @s
#
# @within	switch:player/layout/resolve
#			switch:player/layout/fill_loop
#

function switch:player/layout/place with storage switch:layout todo[0]
data remove storage switch:layout todo[0]
execute if data storage switch:layout todo[0] run function switch:player/layout/fill_loop

