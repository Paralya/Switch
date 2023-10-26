
# Change the player state to rating (1 = waiting, 2 = rating)
scoreboard players set @s switch.temp.to_rate 2

# Execute a function at the linked marker
scoreboard players operation #player_id switch.temp.id = @s switch.temp.id
execute as @e[tag=switch.build_battle_marker,predicate=switch:has_same_id] at @s run function switch:modes/build_battle/rating_time/as_at_marker

# Set remaining rating time and set everyone to half score
title @a[tag=!switch.detached] times 20 60 20
title @a[tag=!switch.detached] title {"text":"Builder","color":"yellow"}
title @a[tag=!switch.detached] subtitle {"selector":"@p[scores={switch.temp.to_rate=2}]","color":"aqua"}
scoreboard players set #remaining_time switch.data 11
scoreboard players set @a[tag=!switch.detached] switch.temp.rating_vote 6

