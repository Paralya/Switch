
# Execute as a random player that has not been rated yet
execute if score #build_battle_state switch.data matches 2 as @r[tag=switch.to_rate,scores={switch.temp.id=0..}] run function switch:modes/build_battle/rating_time/choose_player

