
clear @s *[minecraft:custom_data={switch:{"element_115":true}}] 1
loot spawn ~ ~ ~ loot switch:infected/element_115
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{switch:{"element_115":true}}}}}] run data modify entity @s Owner set from entity @p[tag=!detached,team=switch.temp.human] UUID

