
#> switch:modes/infected/death/zombie_spawn
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:modes/infected/joined
#			string in switch:modes/infected/tick
#

execute if data storage switch:main {map:"area_51"} run tp @s 60 145 2029 0 0
execute if data storage switch:main {map:"ancienne_egypte_2013"} run tp @s 6007 133 10005 -90 0
execute if data storage switch:main {map:"old_japan_apocalypse"} run tp @s 4086 110 10020 90 0
execute if data storage switch:main {map:"lost_graveyard_remastered"} run tp @s 2009 116 10058 90 0
scoreboard players set @s[team=switch.temp.human] switch.temp.kills 0
function switch:modes/infected/death/zombie_give
effect give @s blindness 10 0 true
effect give @s regeneration 10 255 true

