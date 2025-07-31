
#> switch:modes/warden_escape/warden_sus
#
# @executed	as @e[type=warden,distance=..3,sort=nearest]
#
# @within	switch:modes/warden_escape/player_tick [ as @e[type=warden,distance=..3,sort=nearest] ]
#

scoreboard players set #success switch.data 0
data modify storage switch:main suspects set from entity @s anger.suspects
execute unless data storage switch:main suspects[0] run scoreboard players set #success switch.data 1
execute if score #success switch.data matches 0 if data storage switch:main suspects[0] run function switch:modes/warden_escape/warden_sus_loop
execute if score #success switch.data matches 1 if data storage switch:main suspects[0] run data modify entity @s anger.suspects prepend from storage switch:main sus
execute if score #success switch.data matches 1 unless data storage switch:main suspects[0] run data modify entity @s anger.suspects append from storage switch:main sus

