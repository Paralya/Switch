
#> switch:modes/race/player_setup_id
#
# @executed	as @a[tag=!detached]
#
# @within	switch:modes/race/post_load [ as @a[tag=!detached] ]
#

# Apply ID for Respawn
scoreboard players add #next_id switch.temp.id 1
scoreboard players operation @s switch.temp.id = #next_id switch.temp.id

data modify storage switch:main temp set value {id:0}
execute store result storage switch:main temp.id int 1 run scoreboard players get @s switch.temp.id
data modify storage switch:main respawn_states append from storage switch:main temp

