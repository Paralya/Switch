
#> switch:player/practice/get_last_checkpoint
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/practice/respawn_click
#			switch:player/practice/respawn_fall
#			switch:player/practice/remove_checkpoint
#

data remove storage switch:temp practice_cp
data modify storage switch:temp practice_input set value {id:0}
execute store result storage switch:temp practice_input.id int 1 run scoreboard players get @s switch.id
function switch:player/practice/get_last_checkpoint_macro with storage switch:temp practice_input

