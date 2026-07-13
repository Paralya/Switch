
#> switch:player/layout/place
#
# @executed	as @a[tag=!detached,sort=random] & at @s
#
# @within	switch:player/layout/fill_loop with storage switch:layout todo[0]
#
# @args		i (unknown)
#			sibling (unknown)
#			role (unknown)
#			canon (unknown)
#

$execute if data storage switch:layout out.s$(i) run return 0

scoreboard players set #slot switch.data 0
scoreboard players set #want switch.data 0

# Sibling rule: the slot right after the role's chosen one (kept within the hotbar)
$scoreboard players set #sibling switch.data $(sibling)
$execute if score #sibling switch.data matches 1 run scoreboard players operation #want switch.data = @s switch.layout.$(role)
execute unless score #want switch.data matches 1..8 run scoreboard players set #want switch.data -1
scoreboard players add #want switch.data 1
execute if score #want switch.data matches 2..9 run function switch:player/layout/check_free

# Canonical slot
$execute if score #slot switch.data matches 0 run scoreboard players set #want switch.data $(canon)
execute if score #slot switch.data matches 0 run function switch:player/layout/check_free

# Lowest free slot
execute if score #slot switch.data matches 0 run function switch:player/layout/lowest_free

$execute if score #slot switch.data matches 1..10 run function switch:player/layout/try_commit {i:$(i)}

