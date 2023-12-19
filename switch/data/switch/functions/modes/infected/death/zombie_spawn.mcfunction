
execute if data storage switch:main {map:"area_51"} run tp @s 2007 144 1947 0 0
execute if data storage switch:main {map:"ancienne_egypte_2013"} run tp @s 128007 133 128005 -90 0
execute if data storage switch:main {map:"old_japan_apocalypse"} run tp @s 129086 110 129020 90 0
execute if data storage switch:main {map:"lost_graveyard_remastered"} run tp @s 127009 116 127058 90 0
function switch:modes/infected/death/zombie_give
effect give @s blindness 3 0 true
effect give @s regeneration 3 255 true

