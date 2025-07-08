
#> switch:engine/check_coupdetat
#
# @within	switch:engine/start
#

# Check if there is a coup d'état in progress, if so, check if the vote is successful (>= 50% of players)
execute store result score #coupdetat_votes switch.data if entity @a[scores={switch.coupdetat_vote=1},tag=!detached]
scoreboard players operation #coupdetat_votes switch.data *= #2 switch.data

# If the number of votes is < 50% of the players, the coup d'état is unsuccessful
execute if score #coupdetat_votes switch.data < #nb_attached switch.data run scoreboard players set #coupdetat switch.data 0
execute if score #coupdetat_votes switch.data < #nb_attached switch.data run function switch:translations/engine_check_coupdetat
execute if score #coupdetat_votes switch.data < #nb_attached switch.data run tag @a[tag=switch.coupdetat] remove switch.coupdetat

# Else, everything's fine, the coup d'état is successful, don't need to do anything since `switch:engine/start` will handle it

