
# Give points to player
scoreboard players set @p[scores={switch.temp.to_rate=2}] switch.temp.points 0
scoreboard players operation @p[scores={switch.temp.to_rate=2}] switch.temp.points += @a[tag=!switch.detached,gamemode=!spectator] switch.temp.rating_vote
scoreboard players operation @p[scores={switch.temp.to_rate=2}] switch.temp.points -= @p[scores={switch.temp.to_rate=2}] switch.temp.rating_vote

# Save the build
execute as @e[type=marker,tag=switch.build_battle_save,limit=1] at @s run function switch:modes/build_battle/rating_time/save_build

# If there are remaining players, start the rating
scoreboard players set @p[scores={switch.temp.to_rate=2}] switch.temp.to_rate 3
execute if entity @a[tag=!switch.detached,scores={switch.temp.to_rate=1}] run function switch:modes/build_battle/rating_time/next_rating

# Else, end the game
execute if score #remaining_time switch.data matches 0 run function switch:modes/build_battle/process_end

