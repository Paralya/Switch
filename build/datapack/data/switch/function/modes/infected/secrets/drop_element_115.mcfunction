
#> switch:modes/infected/secrets/drop_element_115
#
# @executed	positioned 127123 113 127051 & as @a[tag=!detached,team=switch.temp.human,distance=..12,scores={switch.temp.secret_kills=1..}]
#
# @within	switch:modes/infected/secrets/lost_graveyard/next_state
#			switch:modes/infected/secrets/tick [ as @a[tag=!detached,team=switch.temp.zombie,nbt={...}] & at @s ]
#

clear @s *[minecraft:custom_data={switch:{"element_115":true}}] 1
loot spawn ~ ~ ~ loot switch:i/element_115
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{switch:{"element_115":true}}}}}] run data modify entity @s Owner set from entity @p[tag=!detached,team=switch.temp.human] UUID

