
scoreboard players add @s switch.temp.zone_capture 0

# Capture zone
scoreboard players set #state switch.data 0

# Being white
execute if score @s switch.temp.zone_capture matches -19..19 run particle dust 1 1 1 1 ~ ~1 ~ 1 1 1 0 10
execute if score @s switch.temp.zone_capture matches -19..19 if entity @s[tag=switch.rush_the_point.side] run fill ~-3 ~ ~-3 ~3 ~ ~3 white_wool replace #minecraft:wool
execute if score @s switch.temp.zone_capture matches -19..19 if entity @s[tag=switch.rush_the_point.center] run fill ~-10 ~ ~-10 ~10 ~ ~10 white_wool replace #minecraft:wool

# Being red
execute if score @s switch.temp.zone_capture matches -39..-20 run particle dust 1 0.75 0.75 1 ~ ~1 ~ 1 1 1 0 10
execute if score @s switch.temp.zone_capture matches -59..-40 run particle dust 1 0.5 0.5 1 ~ ~1 ~ 1 1 1 0 10
execute if score @s switch.temp.zone_capture matches ..-60 run particle dust 1 0 0 1 ~ ~1 ~ 1 1 1 0 10
execute if score @s switch.temp.zone_capture matches ..-60 if entity @s[tag=switch.rush_the_point.side] run fill ~-3 ~ ~-3 ~3 ~ ~3 red_wool replace #minecraft:wool
execute if score @s switch.temp.zone_capture matches ..-60 if entity @s[tag=switch.rush_the_point.center] run fill ~-10 ~ ~-10 ~10 ~ ~10 red_wool replace #minecraft:wool

# Being blue
execute if score @s switch.temp.zone_capture matches 20..39 run particle dust 0.75 0.75 1 1 ~ ~1 ~ 1 1 1 0 10
execute if score @s switch.temp.zone_capture matches 40..59 run particle dust 0.5 0.5 1 1 ~ ~1 ~ 1 1 1 0 10
execute if score @s switch.temp.zone_capture matches 60.. run particle dust 0 0 1 1 ~ ~1 ~ 1 1 1 0 10
execute if score @s switch.temp.zone_capture matches 60.. if entity @s[tag=switch.rush_the_point.side] run fill ~-3 ~ ~-3 ~3 ~ ~3 blue_wool replace #minecraft:wool
execute if score @s switch.temp.zone_capture matches 60.. if entity @s[tag=switch.rush_the_point.center] run fill ~-10 ~ ~-10 ~10 ~ ~10 blue_wool replace #minecraft:wool

