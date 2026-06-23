
#> switch:modes/_common/assign_random_roles
#
# @within	switch:modes/gay_shooter/start {mode:"switch:modes/gay_shooter"}
#			switch:modes/panic_chase/start {mode:"switch:modes/panic_chase"}
#
# @args		mode (string)
#

scoreboard players set #next_role switch.data 0
scoreboard players set #next_player_id switch.data 0
$execute as @a[tag=!detached,sort=random] at @s run function $(mode)/roles
$execute as @a[tag=!detached] at @s run function $(mode)/give_items

