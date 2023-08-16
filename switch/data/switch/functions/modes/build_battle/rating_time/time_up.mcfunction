
# Give points to player
scoreboard players set @a[tag=switch.player_to_rate] switch.temp.points 0
scoreboard players operation @a[tag=switch.player_to_rate] switch.temp.points += @a[tag=!switch.player_to_rate] switch.temp.rating_vote

# If there are remaining players, start the rating
execute if entity @a[tag=switch.to_rate,scores={switch.temp.id=0..}] run function switch:modes/build_battle/rating_time/next_rating

# Else, end the game
execute if score #remaining_time switch.data matches 0 run function switch:modes/build_battle/process_end

