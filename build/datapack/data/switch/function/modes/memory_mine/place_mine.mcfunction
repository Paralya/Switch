
#> switch:modes/memory_mine/place_mine
#
# @executed	as the player & at current position
#
# @within	advancement switch:memory_mine/right_click
#

# Revoke right click advancement
advancement revoke @s only switch:memory_mine/right_click

clear @s tnt 1
summon marker ~ 102 ~ {Tags:["switch.mine","switch.temp"]}
scoreboard players set @s switch.temp.cooldown 100
particle dust{color:[1.0,0.0,0.0],scale:4.0} ~ ~ ~ 0 0 0 1 25 force @a[distance=..50]
playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 1 0

# Copy player ID for advancement
scoreboard players operation @e[type=marker,tag=switch.temp,limit=1] switch.id = @s switch.id
tag @e[type=marker,tag=switch.temp] remove switch.temp

