
summon fireball ^ ^1 ^1 {Tags:["switch.new"],power:[0.0d,0.0d,0.0d],ExplosionPower:0b,NoGravity:1b,Passengers:[{id:"minecraft:armor_stand",Tags:["switch.fireball"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b}]}
summon marker 0 0 0 {UUID:[I;0,539099136,0,0]}

data modify storage switch:main Rotation set from entity @s Rotation
execute as 00000000-2022-0000-0000-000000000000 run function switch:modes/rush_the_point/fireball/get_motion
execute as @e[type=fireball,tag=switch.new] run function switch:modes/rush_the_point/fireball/set_motion

scoreboard players set @s[gamemode=!creative] crazy_adventure.cooldown 200
playsound entity.ghast.shoot ambient @s

