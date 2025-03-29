
scoreboard players set #color switch.data 0
execute store success score #color switch.data if entity @s[team=switch.rush_the_point.blue]
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s
scoreboard players remove @s switch.temp.break_obsidian 1

# Random
execute store result score #random switch.data run random value 0..9

# Color red
execute if score #random switch.data matches 0 if score #color switch.data matches 0 run effect give @a[tag=!detached,team=switch.rush_the_point.red] absorption 60 4 true
execute if score #random switch.data matches 1 if score #color switch.data matches 0 run effect give @a[tag=!detached,team=switch.rush_the_point.red] speed 60 0 true
execute if score #random switch.data matches 2 if score #color switch.data matches 0 run effect give @a[tag=!detached,team=switch.rush_the_point.red] strength 60 0 true
execute if score #random switch.data matches 3 if score #color switch.data matches 0 run effect give @a[tag=!detached,team=switch.rush_the_point.red] resistance 60 0 true
execute if score #random switch.data matches 4 if score #color switch.data matches 0 run summon wither 14000 110 14000 {Team:"switch.rush_the_point.red",CustomName:{"text":"Wither Rouge","color":"red"}}
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
execute if score #random switch.data matches 4 if score #color switch.data matches 1 run summon wither 14000 110 14000 {Team:"switch.rush_the_point.blue",CustomName:{"text":"Wither Bleu","color":"blue"}}
execute if score #random switch.data matches 5 if score #color switch.data matches 1 run effect give @a[tag=!detached,team=switch.rush_the_point.red] slowness 60 1 true
execute if score #random switch.data matches 6 if score #color switch.data matches 1 run effect give @a[tag=!detached,team=switch.rush_the_point.red] glowing 60 0 true
execute if score #random switch.data matches 7 if score #color switch.data matches 1 run effect give @a[tag=!detached,team=switch.rush_the_point.red] levitation 1 20 true
execute if score #random switch.data matches 8 if score #color switch.data matches 1 run effect give @a[tag=!detached,team=switch.rush_the_point.red] wither 60 0 true
execute if score #random switch.data matches 9 if score #color switch.data matches 1 run effect give @a[tag=!detached,team=switch.rush_the_point.red] weakness 60 0 true

# Messages
function switch:translations/modes_rush_the_flag_advancements_break_obsidian_confirm

