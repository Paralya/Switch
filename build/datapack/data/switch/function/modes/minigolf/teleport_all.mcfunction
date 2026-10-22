
#> switch:modes/minigolf/teleport_all
#
# @executed	in switch:game
#
# @within	switch:modes/minigolf/second [ in switch:game ]
#			switch:modes/minigolf/start
#

execute if data storage switch:main {map:"gg_grass_1"} run tp @a[tag=!detached] 10036 117 8082 90 0
execute if data storage switch:main {map:"gg_grass_2"} run tp @a[tag=!detached] 10006 117 8040 -90 0
execute if data storage switch:main {map:"gg_grass_3"} run tp @a[tag=!detached] 10129 125 8133 -110 0
execute if data storage switch:main {map:"gg_snow_1"} run tp @a[tag=!detached] 10055 121 8010 -45 0
execute if data storage switch:main {map:"gg_snow_2"} run tp @a[tag=!detached] 10067 123 8080 -135 0
execute if data storage switch:main {map:"gg_ice_1"} run tp @a[tag=!detached] 10099 122 8058 -60 0
execute if data storage switch:main {map:"gg_temple"} run tp @a[tag=!detached] 10088 117 8032 -160 0
execute if data storage switch:main {map:"gg_volcano"} run tp @a[tag=!detached] 10143 140 8016 -5 48
execute if data storage switch:main {map:"gg_desert_1"} run tp @a[tag=!detached] 10155 117 8083 175 0
execute if data storage switch:main {map:"gg_end_1"} run tp @a[tag=!detached] 10111 139 8102 -15 0
execute if data storage switch:main {map:"gg_chamber"} run tp @a[tag=!detached] 10070 125 8120 160 0

execute if score #summon_balls switch.data matches 1 run scoreboard players reset * golf_ball.shots
execute if score #summon_balls switch.data matches 1 as @a[tag=!detached] at @s run function golf_ball:summon
execute if score #summon_balls switch.data matches 1 run scoreboard players set @a[tag=!detached] golf_ball.cooldown 50
execute if score #summon_balls switch.data matches 1 run scoreboard players set @a[tag=!detached] golf_ball.shots 0
execute if score #summon_balls switch.data matches 1 run scoreboard objectives setdisplay sidebar golf_ball.shots
execute if score #summon_balls switch.data matches 1 run scoreboard players set @a[tag=!detached] switch.alive 1
execute if score #summon_balls switch.data matches 1 run gamemode adventure @a[tag=!detached]
scoreboard players set #summon_balls switch.data 0

