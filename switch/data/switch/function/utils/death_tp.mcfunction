
tag @s add switch.tp
data modify storage switch:main Pos set from entity @s LastDeathLocation.pos
execute at @s summon marker run function switch:utils/death_tp_2
tag @s remove switch.tp

