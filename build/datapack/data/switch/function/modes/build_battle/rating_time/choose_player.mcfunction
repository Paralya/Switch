
#> switch:modes/build_battle/rating_time/choose_player
#
# @executed	as @r[scores={switch.temp.to_rate=1}]
#
# @within	switch:modes/build_battle/rating_time/find_player [ as @r[scores={switch.temp.to_rate=1}] ]
#

# Change the player state to rating (1 = waiting, 2 = rating)
scoreboard players set @s switch.temp.to_rate 2

# Execute a function at the linked marker
scoreboard players operation #player_id switch.temp.id = @s switch.temp.id
execute as @e[tag=switch.build_battle_marker,predicate=switch:has_same_temp_id] at @s run function switch:modes/build_battle/rating_time/as_at_marker

# Set remaining rating time and set everyone to half score
function switch:translations/modes_build_battle_rating_time_choose_player
scoreboard players set #remaining_time switch.data 11
scoreboard players set @a[tag=!detached] switch.temp.rating_vote 6

