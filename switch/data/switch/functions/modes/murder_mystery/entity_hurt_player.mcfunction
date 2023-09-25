
# Kill yourself
function switch:modes/murder_mystery/kill_player

# Kill the attacker if not murderer
execute on attacker if entity @s[gamemode=!spectator,scores={switch.temp.role=1..2}] at @s run function switch:modes/murder_mystery/kill_player

