
scoreboard players set @s switch.leave 0

scoreboard players set #reconnect switch.data 0
execute store success score #reconnect switch.data if score @s last_game_id = #game_id switch.data

execute if score #state switch.data matches 2 run function switch:engine/voting_time/player_join
execute if score #state switch.data matches 3 run function #switch:events/player/joined
