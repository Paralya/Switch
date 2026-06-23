
#> switch:modes/fireblast/fireball/right_click
#
# @executed	as @a[tag=!detached,gamemode=!spectator,scores={switch.right_click=1..},nbt={SelectedItem:{components:{}}}] & at @s
#
# @within	switch:modes/fireblast/tick [ as @a[tag=!detached,gamemode=!spectator,scores={switch.right_click=1..},nbt={SelectedItem:{components:{}}}] & at @s ]
#

execute anchored eyes run summon fireball ~ ~1 ~ {Tags:["switch.new"],ExplosionPower:0b,NoGravity:true,Passengers:[{id:"armor_stand",Tags:["switch.fireball"],NoGravity:true,Silent:true,Invulnerable:true,Marker:true,Invisible:true}]}

function switch:modes/_common/fireball/aim_and_launch
playsound entity.ghast.shoot ambient @s

# Set cooldown based on reload boost
execute if score @s switch.temp.reload_boost matches 1.. run scoreboard players set @s[gamemode=!creative] switch.temp.cooldown 25
execute unless score @s switch.temp.reload_boost matches 1.. run scoreboard players set @s[gamemode=!creative] switch.temp.cooldown 50

