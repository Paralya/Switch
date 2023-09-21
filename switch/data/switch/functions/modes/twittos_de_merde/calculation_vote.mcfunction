# Give points to player
scoreboard players set @p[tag=switch.player_to_rate] switch.temp.points 0

scoreboard players operation @p[tag=switch.player_to_rate] switch.temp.points += @a[tag=!switch.player_to_rate] switch.temp.rating_vote

scoreboard players set @a switch.temp.rating_vote 0