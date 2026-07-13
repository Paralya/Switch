
#> switch:player/layout/try_commit
#
# @executed	as @a[tag=!detached,sort=random] & at @s
#
# @within	switch:player/layout/claim {i:$(i)}
#			switch:player/layout/place {i:$(i)}
#
# @args		i (unknown)
#

execute store result storage switch:layout v.s int 1 run scoreboard players get #slot switch.data
$data modify storage switch:layout v.i set value $(i)
function switch:player/layout/commit with storage switch:layout v

