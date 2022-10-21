
tag @s add switch.temp

summon marker 0 0 0 {UUID:[I;0,538124307,538116096,0]}
tp 00000000-2013-2013-2013-000000000000 @s
execute store result score #motion_x switch.data run data get entity @s Motion[0] 10000000
execute store result score #motion_z switch.data run data get entity @s Motion[2] 10000000

execute as 00000000-2013-2013-2013-000000000000 run function switch:modes/kart_racer/move_minecart_marker

data modify storage test:test test2 set from entity @s Motion

tag @s remove switch.temp

