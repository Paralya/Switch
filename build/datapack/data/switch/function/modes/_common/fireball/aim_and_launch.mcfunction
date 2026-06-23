
#> switch:modes/_common/fireball/aim_and_launch
#
# @executed	as @a[tag=!detached,gamemode=!spectator,scores={switch.right_click=1..},nbt={SelectedItem:{components:{}}}] & at @s
#
# @within	switch:modes/fireblast/fireball/right_click
#			switch:modes/rush_the_point/fireball/right_click
#

data modify storage switch:main Rotation set from entity @s Rotation
execute positioned 0 0 0 summon marker run function switch:modes/_common/fireball/get_motion
execute as @e[type=fireball,tag=switch.new] run function switch:modes/_common/fireball/set_motion

