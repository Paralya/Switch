
scoreboard players operation #player_id switch.temp.id = @s switch.temp.id
tp @s @e[type=!player,predicate=switch:has_same_temp_id,limit=1]
tag @s remove switch.to_tp

