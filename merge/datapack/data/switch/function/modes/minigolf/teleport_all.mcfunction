
execute if data storage switch:main {map:"gg_grass_1"} run tp @a[tag=!detached] 124036 117 124082 90 0
execute if data storage switch:main {map:"gg_grass_2"} run tp @a[tag=!detached] 124006 117 124040 -90 0
execute if data storage switch:main {map:"gg_grass_3"} run tp @a[tag=!detached] 124129 125 124133 -110 0
execute if data storage switch:main {map:"gg_snow_1"} run tp @a[tag=!detached] 124055 121 124010 -45 0
execute if data storage switch:main {map:"gg_snow_2"} run tp @a[tag=!detached] 124067 123 124080 -135 0
execute if data storage switch:main {map:"gg_ice_1"} run tp @a[tag=!detached] 124099 122 124058 -60 0
execute if data storage switch:main {map:"gg_temple"} run tp @a[tag=!detached] 124088 117 124032 -160 0
execute if data storage switch:main {map:"gg_volcano"} run tp @a[tag=!detached] 124143 140 124016 -5 48
execute if data storage switch:main {map:"gg_desert_1"} run tp @a[tag=!detached] 124155 117 124083 175 0
execute if data storage switch:main {map:"gg_end_1"} run tp @a[tag=!detached] 124111 139 124102 -15 0
execute if data storage switch:main {map:"gg_chamber"} run tp @a[tag=!detached] 124070 125 124120 160 0

execute if score #summon_balls switch.data matches 1 run scoreboard players reset * golf_ball.shots
execute if score #summon_balls switch.data matches 1 as @a[tag=!detached] at @s run function golf_ball:summon
execute if score #summon_balls switch.data matches 1 run scoreboard players set @a[tag=!detached] golf_ball.cooldown 50
execute if score #summon_balls switch.data matches 1 run scoreboard players set @a[tag=!detached] golf_ball.shots 0
execute if score #summon_balls switch.data matches 1 run scoreboard objectives setdisplay sidebar golf_ball.shots
execute if score #summon_balls switch.data matches 1 run scoreboard players set @a[tag=!detached] switch.alive 1
execute if score #summon_balls switch.data matches 1 run gamemode adventure @a[tag=!detached]
scoreboard players set #summon_balls switch.data 0

