
# Find the player and execute at him (for easy distance=0)
scoreboard players operation #player_id switch.id = @s switch.id
tag @a[predicate=switch:has_same_id,limit=1] add switch.temp
execute at @a[tag=switch.temp,limit=1] run function switch:cinematic/entity_tick_at_player
tag @a[tag=switch.temp,limit=1] remove switch.temp

