
#> switch:modes/moutron/kill_kart
#
# @executed	at @s
#
# @within	switch:modes/moutron/tick [ at @s ]
#

# Identify the victim (the rider) so they can't be credited for killing themselves
scoreboard players set #victim_id switch.id -1
execute on passengers if entity @s[type=player] run scoreboard players operation #victim_id switch.id = @s switch.id

# Read the owner of the nearest trail marker the kart crashed into (owner id stored on the marker)
scoreboard players set #player_id switch.id -2
execute at @s as @n[type=marker,tag=switch.moutron_marker,distance=..3] run scoreboard players operation #player_id switch.id = @s switch.id

# If that trail belongs to another player, tag them as the killer (read by /death)
execute if score #player_id switch.id matches 0.. unless score #player_id switch.id = #victim_id switch.id as @a[tag=!detached,predicate=switch:has_same_id] run tag @s add switch.moutron_killer

# Dismount passengers and kill them
execute on passengers run function switch:modes/moutron/death

# Remove the temporary tag
tag @a[tag=switch.moutron_killer] remove switch.moutron_killer

# Kill the sheep
tp @s 0 -10000 0
kill @s

