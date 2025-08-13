
#> switch:player/tutorial/start
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/set_id
#

# Detach, join tutorial team, and set up tutorial score
tag @s add detached
team join switch.tutorial @s
scoreboard players set @s switch.tutorial 0
execute unless score @s switch.stats.wins matches 1.. run scoreboard players set @s switch.stats.wins 0
execute unless score @s switch.money matches 100.. run scoreboard players set @s switch.money 100
function switch:player/trigger/reset

# Teleport & Get username
execute in minecraft:overworld run tp @s -500 69.69 -500 0 0
gamemode adventure @s
clear @s
loot replace entity @s armor.head loot switch:get_username
execute at @s run playsound ui.toast.challenge_complete ambient @s

advancement revoke @s only switch:tutorial

