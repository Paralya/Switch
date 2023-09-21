
# Remove the tag and add a temporary one
tag @s remove switch.to_rate
tag @a remove switch.player_to_rate
tag @s add switch.player_to_rate

# Execute a function at the linked marker
scoreboard players operation #player_id switch.temp.id = @s switch.temp.id
execute as @e[tag=switch.build_battle_marker,predicate=switch:has_same_temp_id] at @s run function switch:modes/build_battle/rating_time/as_at_marker

# Set remaining rating time and set everyone to half score
scoreboard players set #remaining_time switch.data 11
scoreboard players set @a switch.temp.rating_vote 6

