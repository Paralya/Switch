
#> switch:player/layout/claim
#
# @executed	as @a[tag=!detached,sort=random] & at @s
#
# @within	switch:player/layout/claim_loop with storage switch:layout todo[0]
#
# @args		claim (unknown)
#			role (unknown)
#			i (unknown)
#

scoreboard players set #slot switch.data 0
$scoreboard players set #claim switch.data $(claim)
$execute if score #claim switch.data matches 1 run scoreboard players operation #slot switch.data = @s switch.layout.$(role)
$execute if score #slot switch.data matches 1..10 run function switch:player/layout/try_commit {i:$(i)}

