
#> switch:modes/gay_shooter/roles
#
# @executed	as @a[tag=!detached,sort=random] & at @s
#
# @within	switch:modes/gay_shooter/start [ as @a[tag=!detached,sort=random] & at @s ]
#

# Role selection (1/4 shooters)
scoreboard players add #next_player_id switch.data 1
scoreboard players add #next_role switch.data 1
execute if score #next_role switch.data matches 1 run tp @s 114028 115 114013 0 0
execute if score #next_role switch.data matches 1 run team join switch.temp.shooters @s
execute if score #next_role switch.data matches 2.. run team join switch.temp.gays @s
execute if score #next_role switch.data matches 4.. run scoreboard players set #next_role switch.data 0

