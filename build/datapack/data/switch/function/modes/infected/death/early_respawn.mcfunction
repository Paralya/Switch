
#> switch:modes/infected/death/early_respawn
#
# @within	switch:modes/infected/joined
#			switch:modes/infected/start [ as @a[tag=!detached] ]
#

team join switch.temp.human @s
execute if data storage switch:main {map:"area_51"} run tp @s 2057 171 2065 0 0
execute if data storage switch:main {map:"ancienne_egypte_2013"} run tp @s 128048 121 128105 0 0
execute if data storage switch:main {map:"old_japan_apocalypse"} run tp @s 129040 109 129043 -90 0
execute if data storage switch:main {map:"lost_graveyard_remastered"} run tp @s 127030 119 127112 0 0
effect clear @s
clear @s
effect give @s hunger 20 255 true

