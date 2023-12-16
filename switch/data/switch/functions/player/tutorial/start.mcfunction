
# Detach, join tutorial team, and set up tutorial score
tag @s add detached
team join switch.tutorial @s
scoreboard players set @s switch.tutorial 0
scoreboard players set @s switch.stats.wins 1
scoreboard players set @s switch.money 100
function switch:player/trigger/reset

# Teleport & Get username
tp @s 0 69.69 0 0 0
gamemode adventure @s
clear @s
loot replace entity @s armor.head loot switch:get_username
execute at @s run playsound ui.toast.challenge_complete ambient @s

advancement revoke @s only switch:tutorial

