
#> switch:modes/rush_the_point/tick_common
#
# @within	switch:modes/rush_the_flag/tick
#			switch:modes/rush_the_point/tick
#

# Timer
scoreboard players add #rush_the_point_ticks switch.data 1

# Kill all entities under the map & Manage dropped items
execute as @e[tag=!detached,type=!marker,type=!item_display,type=!armor_stand] at @s run kill @s[y=0,dy=20]
execute as @e[type=item,tag=!switch.checked] run function switch:modes/rush_the_point/items_check
execute as @e[type=tnt,nbt={Fuse:1s}] at @s run function switch:modes/rush_the_point/explode_tnt

# Manage Fireball Stick
scoreboard players remove @a[scores={switch.temp.fireball_cooldown=1..}] switch.temp.fireball_cooldown 1
execute as @a[tag=!detached,scores={switch.right_click=1..},nbt={SelectedItem:{components:{"minecraft:custom_data":{switch:{"fireball_wand":true}}}}}] if score @s switch.temp.fireball_cooldown matches 1.. at @s run function switch:modes/rush_the_point/fireball/no_cooldown
execute as @a[tag=!detached,scores={switch.right_click=1..},nbt={SelectedItem:{components:{"minecraft:custom_data":{switch:{"fireball_wand":true}}}}}] unless score @s switch.temp.fireball_cooldown matches 1.. at @s run function switch:modes/rush_the_point/fireball/right_click
execute as @e[type=armor_stand,tag=switch.fireball,predicate=!switch:has_vehicle] at @s positioned ~ ~-1 ~ run function switch:modes/rush_the_point/explode_tnt

# Kill all arrows in ground & Manage snowballs
execute at @e[type=snowball] positioned ~ ~-2 ~ run fill ~-0.25 ~ ~-0.25 ~0.25 ~ ~0.25 cut_sandstone replace air
kill @e[type=arrow,nbt={inBlockState:{}}]

# Class System
execute as @a[tag=!detached,scores={switch.temp.chosen_class=0}] run function switch:modes/rush_the_point/classes/main

# Death System
execute as @e[tag=!detached,type=player,tag=switch.to_tp] run function switch:modes/rush_the_point/teleport_to_death
function switch:utils/on_death_run_function {function:"switch:modes/rush_the_point/death/player"}
execute if score #remaining_time switch.data matches 1.. as @e[type=marker,tag=switch.temp.player,tag=!switch.player_dead] run function switch:modes/rush_the_point/death/detect
execute if score #remaining_time switch.data matches 1.. as @e[type=marker,tag=switch.player_dead,tag=!switch.processed] run function switch:modes/rush_the_point/death/for_global

# Update sidebar
function switch:modes/rush_the_point/update_sidebar

