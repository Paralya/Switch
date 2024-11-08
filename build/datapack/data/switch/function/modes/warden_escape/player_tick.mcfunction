
#> switch:modes/warden_escape/player_tick
#
# @within	switch:modes/warden_escape/tick
#

data modify storage switch:main sus set value {anger:150}
data modify storage switch:main sus.uuid set from entity @s UUID
execute as @e[type=warden,distance=..3,sort=nearest] run function switch:modes/warden_escape/warden_sus

