
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

execute if score #remaining_time switch.data matches 1.. run function switch:modes/rush_the_point/xp_bar
execute if score #remaining_time switch.data matches 1.. if score #color switch.data matches 1 run scoreboard players add #red_points switch.data 10
execute if score #remaining_time switch.data matches 1.. if score #color switch.data matches 2 run scoreboard players add #blue_points switch.data 10

# Bonus
scoreboard players add #bonus_reload switch.data 1
execute if score #bonus_reload switch.data matches 60.. run function switch:modes/rush_the_point/bonus_reload

# Bridge snowballs
execute if score #bonus_reload switch.data matches 0 run summon item 14063 103 14000 {Item:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Bridge Snowball","color":"yellow","italic":false}'}}},NoGravity:1b,Glowing:1b,CustomName:'{"text":"Bridge Snowball","color":"yellow","italic":false}',CustomNameVisible:1b}
execute if score #bonus_reload switch.data matches 0 run summon item 13937 103 14000 {Item:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Bridge Snowball","color":"yellow","italic":false}'}}},NoGravity:1b,Glowing:1b,CustomName:'{"text":"Bridge Snowball","color":"yellow","italic":false}',CustomNameVisible:1b}
execute if score #bonus_reload switch.data matches 31 run summon item 14063 103 14000 {Item:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Bridge Snowball","color":"yellow","italic":false}'}}},NoGravity:1b,Glowing:1b,CustomName:'{"text":"Bridge Snowball","color":"yellow","italic":false}',CustomNameVisible:1b}
execute if score #bonus_reload switch.data matches 31 run summon item 13937 103 14000 {Item:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Bridge Snowball","color":"yellow","italic":false}'}}},NoGravity:1b,Glowing:1b,CustomName:'{"text":"Bridge Snowball","color":"yellow","italic":false}',CustomNameVisible:1b}

# Update sidebar
function switch:modes/rush_the_point/update_sidebar
