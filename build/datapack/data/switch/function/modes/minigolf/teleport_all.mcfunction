
#> switch:modes/minigolf/teleport_all
#
# @within	switch:modes/minigolf/second
#

scoreboard players reset * golf_ball.shots
execute if data storage switch:main {map:"gg_grass_1"} positioned 124036 101 124082 as @a[tag=!detached] run function golf_ball:summon
execute if data storage switch:main {map:"gg_grass_2"} positioned 124006 101 124040 as @a[tag=!detached] run function golf_ball:summon
execute if data storage switch:main {map:"gg_grass_3"} positioned 124129 109 124133 as @a[tag=!detached] run function golf_ball:summon
execute if data storage switch:main {map:"gg_snow_1"} positioned 124055 105 124010 as @a[tag=!detached] run function golf_ball:summon
execute if data storage switch:main {map:"gg_snow_2"} positioned 124067 107 124080 as @a[tag=!detached] run function golf_ball:summon
execute if data storage switch:main {map:"gg_ice_1"} positioned 124099 106 124058 as @a[tag=!detached] run function golf_ball:summon
execute if data storage switch:main {map:"gg_temple"} positioned 124088 101 124032 as @a[tag=!detached] run function golf_ball:summon
execute if data storage switch:main {map:"gg_volcano"} positioned 124143 124 124016 as @a[tag=!detached] run function golf_ball:summon
execute if data storage switch:main {map:"gg_desert_1"} positioned 124155 101 124083 as @a[tag=!detached] run function golf_ball:summon
execute if data storage switch:main {map:"gg_end_1"} positioned 124111 123 124102 as @a[tag=!detached] run function golf_ball:summon
execute if data storage switch:main {map:"gg_chamber"} positioned 124070 109 124120 as @a[tag=!detached] run function golf_ball:summon
scoreboard players set @a[tag=!detached] golf_ball.shots 0
scoreboard objectives setdisplay sidebar golf_ball.shots
scoreboard players set @a[tag=!detached] switch.alive 1
gamemode adventure @a[tag=!detached]

