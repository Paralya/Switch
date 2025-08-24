
#> switch:modes/rush_the_point/tick_zone
#
# @executed	at @s
#
# @within	switch:modes/rush_the_point/tick [ at @s ]
#

scoreboard players add @s switch.temp.zone_capture 0

# Capture zone
scoreboard players set #state switch.data 0
execute if entity @s[tag=switch.rush_the_point.center] if entity @a[tag=!detached,team=switch.rush_the_point.red,distance=..10] run scoreboard players add #state switch.data 1
execute if entity @s[tag=switch.rush_the_point.center] if entity @a[tag=!detached,team=switch.rush_the_point.blue,distance=..10] run scoreboard players add #state switch.data 2
execute if entity @s[tag=switch.rush_the_point.side] if entity @a[tag=!detached,team=switch.rush_the_point.red,distance=..4] run scoreboard players add #state switch.data 1
execute if entity @s[tag=switch.rush_the_point.side] if entity @a[tag=!detached,team=switch.rush_the_point.blue,distance=..4] run scoreboard players add #state switch.data 2

execute if score #state switch.data matches 1 if score @s switch.temp.zone_capture matches -60.. run scoreboard players remove @s switch.temp.zone_capture 1
execute if score #state switch.data matches 2 if score @s switch.temp.zone_capture matches ..60 run scoreboard players add @s switch.temp.zone_capture 1
execute if score #state switch.data matches 3 if score @s switch.temp.zone_capture matches ..-1 run scoreboard players add @s switch.temp.zone_capture 1
execute if score #state switch.data matches 3 if score @s switch.temp.zone_capture matches 1.. run scoreboard players remove @s switch.temp.zone_capture 1

# Being white
execute if score @s switch.temp.zone_capture matches -59..59 run particle dust{color:[1.0,1.0,1.0],scale:1.0} ~ ~1 ~ 1 1 1 0 10
execute if score @s switch.temp.zone_capture matches -59..59 if entity @s[tag=switch.rush_the_point.side] run fill ~-3 ~-1 ~-3 ~3 ~ ~3 white_wool replace #minecraft:wool
execute if score @s switch.temp.zone_capture matches -59..59 if entity @s[tag=switch.rush_the_point.center] run fill ~-10 ~-1 ~-10 ~10 ~ ~10 white_wool replace #minecraft:wool

# Being red
execute if score @s switch.temp.zone_capture matches -39..-20 run particle dust{color:[1.0,0.75,0.75],scale:1.0} ~ ~1 ~ 1 1 1 0 10
execute if score @s switch.temp.zone_capture matches -59..-40 run particle dust{color:[1.0,0.5,0.5],scale:1.0} ~ ~1 ~ 1 1 1 0 10
execute if score @s switch.temp.zone_capture matches ..-60 run particle dust{color:[1.0,0.0,0.0],scale:1.0} ~ ~1 ~ 1 1 1 0 10
execute if score @s switch.temp.zone_capture matches ..-60 if entity @s[tag=switch.rush_the_point.side] run fill ~-3 ~-1 ~-3 ~3 ~ ~3 red_wool replace #minecraft:wool
execute if score @s switch.temp.zone_capture matches ..-60 if entity @s[tag=switch.rush_the_point.center] run fill ~-10 ~-1 ~-10 ~10 ~ ~10 red_wool replace #minecraft:wool
execute if score @s switch.temp.zone_capture matches ..-60 if entity @s[tag=switch.rush_the_point.side] if predicate switch:chance/0.2 run scoreboard players add #red_points switch.data 1
execute if score @s switch.temp.zone_capture matches ..-60 if entity @s[tag=switch.rush_the_point.center] if predicate switch:chance/0.2 run scoreboard players add #red_points switch.data 1

# Being blue
execute if score @s switch.temp.zone_capture matches 20..39 run particle dust{color:[0.75,0.75,1.0],scale:1.0} ~ ~1 ~ 1 1 1 0 10
execute if score @s switch.temp.zone_capture matches 40..59 run particle dust{color:[0.5,0.5,1.0],scale:1.0} ~ ~1 ~ 1 1 1 0 10
execute if score @s switch.temp.zone_capture matches 60.. run particle dust{color:[0.0,0.0,1.0],scale:1.0} ~ ~1 ~ 1 1 1 0 10
execute if score @s switch.temp.zone_capture matches 60.. if entity @s[tag=switch.rush_the_point.side] run fill ~-3 ~-1 ~-3 ~3 ~ ~3 blue_wool replace #minecraft:wool
execute if score @s switch.temp.zone_capture matches 60.. if entity @s[tag=switch.rush_the_point.center] run fill ~-10 ~-1 ~-10 ~10 ~ ~10 blue_wool replace #minecraft:wool
execute if score @s switch.temp.zone_capture matches 60.. if entity @s[tag=switch.rush_the_point.side] if predicate switch:chance/0.2 run scoreboard players add #blue_points switch.data 1
execute if score @s switch.temp.zone_capture matches 60.. if entity @s[tag=switch.rush_the_point.center] if predicate switch:chance/0.2 run scoreboard players add #blue_points switch.data 1
execute if score @s switch.temp.zone_capture matches 60 if score #state switch.data matches 2 run scoreboard players add #blue_points switch.data 1

# Event when capturing
execute if score @s switch.temp.zone_capture matches -60 if score #state switch.data matches 1 run playsound entity.player.levelup ambient @a[tag=!detached,distance=..5]
execute if score @s switch.temp.zone_capture matches 60 if score #state switch.data matches 2 run playsound entity.player.levelup ambient @a[tag=!detached,distance=..5]
function switch:translations/modes_rush_the_point_tick_zone

