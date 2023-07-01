tag @s add switch.temp.tp
data modify storage switch:main temp_pos set from entity @s LastDeathLocation.pos
execute at @s summon marker run function switch:modes/engine/utils/death_tp_2
tag @s remove switch.temp.tp



