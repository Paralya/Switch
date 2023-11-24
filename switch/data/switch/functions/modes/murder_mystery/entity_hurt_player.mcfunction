
# Kill yourself
function switch:modes/murder_mystery/kill_player
execute on attacker run scoreboard players add @s switch.stats.kills 1

# Kill the attacker if not murderer
execute if entity @s[scores={switch.temp.role=1..2}] on attacker if entity @s[gamemode=!spectator,scores={switch.temp.role=1..2}] at @s run function switch:modes/murder_mystery/kill_player

