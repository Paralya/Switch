
# Check if there is a coup d'état in progress, if so, check if the vote is successful (>= 50% of players)
execute store result score #coupdetat_votes switch.data if entity @a[scores={switch.trigger.coupdetat_vote=1},tag=!detached]
scoreboard players operation #percentage switch.data = #nb_attached switch.data
scoreboard players operation #percentage switch.data *= #100 switch.data
scoreboard players operation #percentage switch.data /= #coupdetat_votes switch.data

# If the number of votes is < 50% of the players, the coup d'état is unsuccessful
execute if score #percentage switch.data matches ..49 run scoreboard players set #coupdetat switch.data 0
execute if score #percentage switch.data matches ..49 as @a[tag=switch.coupdetat] run function switch:translations/engine_check_coupdetat
execute if score #percentage switch.data matches ..49 run tag @a[tag=switch.coupdetat] remove switch.coupdetat

# Else, everything's fine, the coup d'état is successful, don't need to do anything since `switch:engine/start` will handle it

