
# Decrease the number of cinematic entities
scoreboard players remove #cinematic_entities switch.data 1

# Remove any passengers
execute on passengers run ride @s unmount

# Kill the entity
kill @s

