
#> switch:modes/fireblast/fireball/right_click
#
# @within	switch:modes/fireblast/tick
#

execute anchored eyes run summon fireball ~ ~1 ~ {Tags:["switch.new"],ExplosionPower:0b,NoGravity:true,Passengers:[{id:"armor_stand",Tags:["switch.fireball"],NoGravity:true,Silent:true,Invulnerable:true,Marker:true,Invisible:true}]}

data modify storage switch:main Rotation set from entity @s Rotation
execute summon marker run function switch:modes/fireblast/fireball/get_motion
execute as @e[type=fireball,tag=switch.new] run function switch:modes/fireblast/fireball/set_motion

scoreboard players set @s[gamemode=!creative] switch.temp.cooldown 50
playsound entity.ghast.shoot ambient @s

