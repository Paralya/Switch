
#> switch:modes/infected/secrets/drop_element_115
#
# @within	switch:modes/infected/secrets/tick
#			switch:modes/infected/secrets/lost_graveyard/next_state
#

clear @s *[minecraft:custom_data={switch:{"115":true}}] 1
summon item ~ ~ ~ {Item:{id:"minecraft:command_block",count:1,components:{"minecraft:custom_data":{switch:{"115":true}},"minecraft:item_name":'{"text":"Element 115","color":"light_purple","italic":false}',"minecraft:lore":['{"text":"Infected","color":"dark_green","italic":true}'],"minecraft:custom_model_data":2013001}},PickupDelay:20,Invulnerable:true,Owner:[I;1,1,1,1]}
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{switch:{"115":true}}}}}] run data modify entity @s Owner set from entity @p[tag=!detached,team=switch.temp.human] UUID

