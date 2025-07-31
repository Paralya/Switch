
#> switch:modes/murder_mystery/entity_hurt_player
#
# @executed	as the player & at current position
#
# @within	switch:modes/murder_mystery/calls/entity_hurt_player
#

# Advancement
scoreboard players set #suicide switch.data 1
execute on attacker run scoreboard players set #suicide switch.data 0
execute unless score #test_mode switch.data matches 1 if score #suicide switch.data matches 1 run advancement grant @s only switch:visible/64

# Kill yourself
function switch:modes/murder_mystery/kill_player
execute on attacker run scoreboard players add @s switch.stats.kills 1

# Kill the attacker if not murderer
execute if entity @s[scores={switch.temp.role=1..2}] on attacker if entity @s[gamemode=!spectator,scores={switch.temp.role=1..2}] at @s run function switch:modes/murder_mystery/kill_player

