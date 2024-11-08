
#> switch:modes/kart_racer/finished
#
# @within	switch:modes/kart_racer/complete
#

scoreboard players operation #digit switch.data = #kart_racer_ticks switch.data
scoreboard players operation #digit switch.data *= #5 switch.data
scoreboard players operation #digit switch.data %= #100 switch.data

scoreboard players set @s switch.alive 2
function switch:translations/modes_kart_racer_finished
execute if score #remaining_time switch.data matches 61.. run scoreboard players set #remaining_time switch.data 60
scoreboard players add @s switch.temp.checkpoint 1000000
scoreboard players operation @s switch.temp.checkpoint -= #kart_racer_ticks switch.data

tag @s add switch.temp
kill @e[tag=shopping_kart.kart,predicate=switch:have_temp_player_passenger]
kill @e[type=item]
tag @s remove switch.temp

# Advancement
scoreboard players remove @s switch.temp.pos_on_last_lap 5
execute unless score #test_mode switch.data matches 1 if score @s switch.temp.pv_classement <= @s switch.temp.pos_on_last_lap run advancement grant @s only switch:visible/20

# Clear people the vote items
clear @a[tag=!detached] warped_fungus_on_a_stick[custom_data~{switch:{vote:true}}]
scoreboard players reset #can_vote switch.data

