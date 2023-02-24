
# Kill all entities except players
kill @e[type=!player]
kill @e[type=!player]

# Attributes
execute as @a run attribute @s generic.attack_speed base set 4.0
execute as @a run attribute @s generic.max_health base set 20.0

# Scoreboard
scoreboard objectives remove switch.temp.deathCount

