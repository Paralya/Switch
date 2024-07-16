
execute anchored eyes run summon fireball ~ ~1 ~ {Tags:["switch.new"],power:[0.0d,0.0d,0.0d],ExplosionPower:0b,NoGravity:true,Passengers:[{id:"armor_stand",Tags:["switch.fireball"],NoGravity:true,Silent:true,Invulnerable:true,Marker:true,Invisible:true}]}
summon marker 0 0 0 {UUID:[I;0,539099136,0,0]}

data modify storage switch:main Rotation set from entity @s Rotation
execute as 00000000-2022-0000-0000-000000000000 run function switch:modes/fireblast/fireball/get_motion
execute as @e[type=fireball,tag=switch.new] run function switch:modes/fireblast/fireball/set_motion

scoreboard players set @s[gamemode=!creative] switch.temp.cooldown 50
playsound entity.ghast.shoot ambient @s

