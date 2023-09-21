
# Give points to player
scoreboard players set @a[scores={switch.temp.to_rate=2}] switch.temp.points 0
scoreboard players operation @a[scores={switch.temp.to_rate=2}] switch.temp.points += @a[scores={switch.temp.to_rate=2}] switch.temp.rating_vote

# If there are remaining players, start the rating
execute if entity @a[scores={switch.temp.to_rate=1}] run function switch:modes/build_battle/rating_time/next_rating

# Else, end the game
execute if score #remaining_time switch.data matches 0 run function switch:modes/build_battle/process_end

