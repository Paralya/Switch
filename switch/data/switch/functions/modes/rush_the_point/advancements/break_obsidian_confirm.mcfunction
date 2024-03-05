
scoreboard players set #color switch.data 0
execute store success score #color switch.data if entity @s[team=switch.rush_the_point.blue]
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s
scoreboard players remove @s switch.temp.break_obsidian 1

execute if score #color switch.data matches 0 run scoreboard players add #red_points switch.data 250
execute if score #color switch.data matches 1 run scoreboard players add #blue_points switch.data 250

# Random
execute store result score #random switch.data run random value 0..9

# Color red
execute if score #random switch.data matches 0 if score #color switch.data matches 0 run effect give @a[tag=!detached,team=switch.rush_the_point.red] absorption 60 4 true
execute if score #random switch.data matches 1 if score #color switch.data matches 0 run effect give @a[tag=!detached,team=switch.rush_the_point.red] speed 60 0 true
execute if score #random switch.data matches 2 if score #color switch.data matches 0 run effect give @a[tag=!detached,team=switch.rush_the_point.red] strength 60 0 true
execute if score #random switch.data matches 3 if score #color switch.data matches 0 run effect give @a[tag=!detached,team=switch.rush_the_point.red] resistance 60 0 true
execute if score #random switch.data matches 4 if score #color switch.data matches 0 run effect give @a[tag=!detached,team=switch.rush_the_point.blue] wither 60 0 true
execute if score #random switch.data matches 5 if score #color switch.data matches 0 run effect give @a[tag=!detached,team=switch.rush_the_point.blue] slowness 60 1 true
execute if score #random switch.data matches 6 if score #color switch.data matches 0 run effect give @a[tag=!detached,team=switch.rush_the_point.blue] glowing 60 0 true
execute if score #random switch.data matches 7 if score #color switch.data matches 0 run effect give @a[tag=!detached,team=switch.rush_the_point.blue] levitation 1 20 true
execute if score #random switch.data matches 8 if score #color switch.data matches 0 run effect give @a[tag=!detached,team=switch.rush_the_point.blue] wither 60 0 true
execute if score #random switch.data matches 9 if score #color switch.data matches 0 run effect give @a[tag=!detached,team=switch.rush_the_point.blue] weakness 60 0 true

# Color blue
execute if score #random switch.data matches 0 if score #color switch.data matches 1 run effect give @a[tag=!detached,team=switch.rush_the_point.blue] absorption 60 4 true
execute if score #random switch.data matches 1 if score #color switch.data matches 1 run effect give @a[tag=!detached,team=switch.rush_the_point.blue] speed 60 0 true
execute if score #random switch.data matches 2 if score #color switch.data matches 1 run effect give @a[tag=!detached,team=switch.rush_the_point.blue] strength 60 0 true
execute if score #random switch.data matches 3 if score #color switch.data matches 1 run effect give @a[tag=!detached,team=switch.rush_the_point.blue] resistance 60 0 true
execute if score #random switch.data matches 4 if score #color switch.data matches 1 run effect give @a[tag=!detached,team=switch.rush_the_point.red] wither 60 0 true
execute if score #random switch.data matches 5 if score #color switch.data matches 1 run effect give @a[tag=!detached,team=switch.rush_the_point.red] slowness 60 1 true
execute if score #random switch.data matches 6 if score #color switch.data matches 1 run effect give @a[tag=!detached,team=switch.rush_the_point.red] glowing 60 0 true
execute if score #random switch.data matches 7 if score #color switch.data matches 1 run effect give @a[tag=!detached,team=switch.rush_the_point.red] levitation 1 20 true
execute if score #random switch.data matches 8 if score #color switch.data matches 1 run effect give @a[tag=!detached,team=switch.rush_the_point.red] wither 60 0 true
execute if score #random switch.data matches 9 if score #color switch.data matches 1 run effect give @a[tag=!detached,team=switch.rush_the_point.red] weakness 60 0 true

# Messages
function switch:translations/modes_rush_the_point_advancements_break_obsidian_confirm

# Increment
scoreboard players add @s switch.temp.total_obsidian 1
execute unless score #test_mode switch.data matches 1 if score @s switch.temp.total_obsidian matches 5.. run advancement grant @s only switch:visible/43
