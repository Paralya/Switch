
#> switch:modes/infected/secrets/tick
#
# @within	switch:modes/infected/tick
#

execute if data storage switch:main {map:"area_51"} run function switch:modes/infected/secrets/area_51/_tick
execute if data storage switch:main {map:"ancienne_egypte_2013"} run function switch:modes/infected/secrets/ancienne_egypte/_tick
execute if data storage switch:main {map:"old_japan_apocalypse"} run function switch:modes/infected/secrets/old_japan_apocalypse/_tick
execute if data storage switch:main {map:"lost_graveyard_remastered"} run function switch:modes/infected/secrets/lost_graveyard/_tick

# Zombie drop element 115
execute as @a[tag=!detached,team=switch.temp.zombie,nbt={Inventory:[{components:{"minecraft:custom_data":{switch:{"element_115":true}}}}]}] at @s run function switch:modes/infected/secrets/drop_element_115

