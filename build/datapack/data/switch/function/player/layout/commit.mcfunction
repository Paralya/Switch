
#> switch:player/layout/commit
#
# @executed	as @a[tag=!detached,sort=random] & at @s
#
# @within	switch:player/layout/try_commit with storage switch:layout v
#
# @args		s (unknown)
#			i (unknown)
#

$execute unless data storage switch:layout free{s$(s):1b} run return 0
$data modify storage switch:layout free.s$(s) set value 0b
$data modify storage switch:layout out.s$(i) set from storage switch:layout slots[$(s)]

