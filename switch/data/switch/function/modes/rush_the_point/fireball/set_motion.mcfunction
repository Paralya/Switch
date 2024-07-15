
execute store result entity @s Motion[0] double 0.001 run data get storage switch:main Pos[0]
execute store result entity @s Motion[1] double 0.001 run data get storage switch:main Pos[1]
execute store result entity @s Motion[2] double 0.001 run data get storage switch:main Pos[2]
execute store result entity @s power[0] double 0.0001 run data get storage switch:main Pos[0]
execute store result entity @s power[1] double 0.0001 run data get storage switch:main Pos[1]
execute store result entity @s power[2] double 0.0001 run data get storage switch:main Pos[2]
tag @s remove switch.new

