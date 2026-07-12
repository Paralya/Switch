
#> switch:player/practice/clear_checkpoints
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/practice/toggle
#			switch:player/practice/disable
#

data modify storage switch:temp practice_input set value {id:0}
execute store result storage switch:temp practice_input.id int 1 run scoreboard players get @s switch.id
function switch:player/practice/clear_checkpoints_macro with storage switch:temp practice_input

