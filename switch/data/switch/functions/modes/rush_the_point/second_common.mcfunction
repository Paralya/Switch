
scoreboard players add #rush_the_point_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

execute if score #rush_the_point_seconds switch.data matches ..-1 run effect give @a[tag=!detached] jump_boost 100 250 true
execute if score #rush_the_point_seconds switch.data matches ..-1 run effect give @a[tag=!detached] slowness 100 250 true
execute if score #rush_the_point_seconds switch.data matches ..-1 run effect give @a[tag=!detached] blindness 100 250 true
execute if score #rush_the_point_seconds switch.data matches ..-1 run effect give @a[tag=!detached] night_vision 100 250 true
execute if score #rush_the_point_seconds switch.data matches ..-1 run effect give @a[tag=!detached] darkness 100 250 true
execute if score #rush_the_point_seconds switch.data matches ..-1 run setblock 14000 100 13925 air
execute if score #rush_the_point_seconds switch.data matches ..-1 run setblock 14000 100 14000 air
execute if score #rush_the_point_seconds switch.data matches ..-1 run setblock 14000 100 14075 air
execute if score #rush_the_point_seconds switch.data matches ..-1 run setblock 14000 86 14000 air
execute if score #rush_the_point_seconds switch.data matches 0 run effect clear @a[tag=!detached]

# Bonus
scoreboard players add #bonus_reload switch.data 1
execute if score #bonus_reload switch.data matches 60.. run function switch:modes/rush_the_point/bonus_reload

# Update sidebar
function switch:modes/rush_the_point/update_sidebar

