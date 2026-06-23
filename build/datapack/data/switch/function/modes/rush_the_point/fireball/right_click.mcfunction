
#> switch:modes/rush_the_point/fireball/right_click
#
# @executed	as @a[tag=!detached,scores={switch.right_click=1..},nbt={...}] & at @s
#
# @within	switch:modes/rush_the_point/tick_common [ as @a[tag=!detached,scores={switch.right_click=1..},nbt={...}] & at @s ]
#

summon fireball ^ ^1 ^1 {Tags:["switch.new"],ExplosionPower:0b,NoGravity:true,Passengers:[{id:"armor_stand",Tags:["switch.fireball"],NoGravity:true,Silent:true,Invulnerable:true,Marker:true,Invisible:true}]}

function switch:modes/_common/fireball/aim_and_launch

scoreboard players set @s[gamemode=!creative] switch.temp.fireball_cooldown 200
playsound entity.ghast.shoot ambient @s

