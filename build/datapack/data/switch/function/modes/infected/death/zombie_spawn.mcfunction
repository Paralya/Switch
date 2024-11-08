
#> switch:modes/infected/death/zombie_spawn
#
# @within	switch:modes/infected/joined
#

execute if data storage switch:main {map:"area_51"} run tp @s 2007 144 1966 0 0
execute if data storage switch:main {map:"ancienne_egypte_2013"} run tp @s 128007 133 128005 -90 0
execute if data storage switch:main {map:"old_japan_apocalypse"} run tp @s 129086 110 129020 90 0
execute if data storage switch:main {map:"lost_graveyard_remastered"} run tp @s 127009 116 127058 90 0
scoreboard players set @s[team=switch.temp.human] switch.temp.kills 0
function switch:modes/infected/death/zombie_give
effect give @s blindness 10 0 true
effect give @s regeneration 10 255 true

