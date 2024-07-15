
clear @s command_block{switch:{115:1b}} 1
summon item ~ ~ ~ {Item:{id:"minecraft:command_block",Count:1b,tag:{switch:{115:1b},display:{Name:'{"text":"Element 115","color":"light_purple","italic":false}',Lore:['{"text":"Infected","color":"dark_green","italic":true}']},CustomModelData:2013001}},PickupDelay:20,Invulnerable:1b,Owner:[I;1,1,1,1]}
execute as @e[type=item,nbt={Item:{tag:{switch:{115:1b}}}}] run data modify entity @s Owner set from entity @p[tag=!detached,team=switch.temp.human] UUID

