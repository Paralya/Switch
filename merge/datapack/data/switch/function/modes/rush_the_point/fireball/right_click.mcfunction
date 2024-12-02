
summon fireball ^ ^1 ^1 {Tags:["switch.new"],ExplosionPower:0b,NoGravity:true,Passengers:[{id:"armor_stand",Tags:["switch.fireball"],NoGravity:true,Silent:true,Invulnerable:true,Marker:true,Invisible:true}]}

data modify storage switch:main Rotation set from entity @s Rotation
execute positioned 0 0 0 summon marker run function switch:modes/rush_the_point/fireball/get_motion
execute as @e[type=fireball,tag=switch.new] run function switch:modes/rush_the_point/fireball/set_motion

scoreboard players set @s[gamemode=!creative] switch.temp.fireball_cooldown 200
playsound entity.ghast.shoot ambient @s

